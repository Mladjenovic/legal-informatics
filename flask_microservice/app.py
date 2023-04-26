import re
import json
from flask import Flask, request
from flask_cors import CORS
from simpletransformers.ner import NERModel, NERArgs

model_args = NERArgs()
model_args.labels_list = ['B-LOC','B-MISC','B-ORG','B-PER','I-LOC','I-MISC','I-ORG','I-PER','O']
model = NERModel('electra', 'classla/bcms-bertic-ner', args=model_args, use_cuda=False)


app = Flask(__name__)
CORS(app)

@app.route('/get', methods=['POST'])
def get():

    text = request.get_json()
    text = text["tekstPresude"]

    regexZaSudije = r"sudij[ae]\s+([A-Za-zČčĆćĐđŠšŽž]+\s+[A-Za-zČčĆćĐđŠšŽž]+){1,2}"
    sveSudije = re.findall(regexZaSudije, text)

    regexZaImeSuda = r"Viši sud u [A-ZČĆĐŠŽ][a-zčćđšž]+ [A-ZČĆĐŠŽ][a-zčćđšž]+"
    imeSuda = re.findall(regexZaImeSuda, text)

    regexZaDatumZlocina = r"Dana, [0-9]{2}\.[0-9]{2}\.[0-9]{4} godine"
    datumZlocina = re.findall(regexZaDatumZlocina, text)

    if len(datumZlocina) > 0:
        datumZlocina = datumZlocina[0]

    regexBrojaClana = r"čl\.\s+\d+"
    sviClanoviZakona = re.findall(regexBrojaClana, text)


    predictions, raw_outputs = model.predict([text])

    resultIORG = " ".join([list(i.keys())[0] for i in predictions[0] if list(i.values())[0] == "I-ORG"])

    first_names = " ".join([list(i.keys())[0] for i in predictions[0] if list(i.values())[0] == "B-PER"])
    last_names = " ".join([list(i.keys())[0] for i in predictions[0] if list(i.values())[0] == "I-PER"])
    resultO = " ".join([list(i.keys())[0] for i in predictions[0] if list(i.values())[0] == "O"])

    first_names = first_names.split(" ")
    last_names = last_names.split(" ")

    full_names = [first_name + " " + last_name for first_name, last_name in zip(first_names, last_names)]

    return json.dumps({"lokacija: ": resultIORG, "first_names": first_names, "last_names": last_names, "full_names": full_names, "sve_sudije": sveSudije, "ime_suda": imeSuda, "datum_zlocina": datumZlocina, "sviClanoviZakona": sviClanoviZakona}, indent=4, ensure_ascii=False).encode('utf8')

if __name__ == '__main__':
    app.run()