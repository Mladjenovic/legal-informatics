import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { SudijaServiceService } from '../services/sudija-service.service';
import {first} from 'rxjs/operators';
import {FormBuilder, FormGroup} from '@angular/forms';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';

export interface DrDocResponse {
  punishmentDescription: string
}

@Component({
  selector: 'app-sudija-nova-presuda',
  templateUrl: './sudija-nova-presuda.component.html',
  styleUrls: ['./sudija-nova-presuda.component.css']
})
export class SudijaNovaPresudaComponent implements OnInit {
  sudija: any = [];
  sudije: any = [];
  telesnePovrede: any = [];
  primenjeniPropisi: any = [];
  krivicnaDela: any = [];
  PresudaForm: FormGroup;
  closeResult: string;
  PresudaPraviloForm: FormGroup;
  PresudaSlucajForm: FormGroup;
  rezultatPravilo: any = [];
  rezultatSlucaj: any = [];

  constructor(private router: Router, private sudijaService: SudijaServiceService, private formBuilder: FormBuilder, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.sudijaService.getSudija(localStorage.getItem('currentuser')).pipe(first())
    .subscribe(data => {
      this.sudija = data;
    });
    this.sudijaService.getSudije().pipe(first())
    .subscribe(data => {
      this.sudije = data;
    });
    this.sudijaService.getTelesnePovrede().pipe(first())
    .subscribe(data => {
      this.telesnePovrede = data;
    });
    this.sudijaService.getPrimenjeniPropisi().pipe(first())
    .subscribe(data => {
      this.primenjeniPropisi = data;
    });
    this.sudijaService.getKrivicnaDela().pipe(first())
    .subscribe(data => {
      this.krivicnaDela = data;
    });

    this.PresudaForm = this.formBuilder.group({
      sud: [''],
      poslovniBroj: [''],
      tuzilac: [''],
      okrivljeni: [''],
      osudjen: [false],
      kaznaZatvor: [''],
      kaznaNovac: [''],
      hladnoOruzije: [false],
      odnos: [''],
      predumisljaj: [false],
      sudije: [''],
      telesnePovrede: [''],
      primenjeniPropisi: [''],
      krivicnaDela: ['']
    });

    this.PresudaPraviloForm = this.formBuilder.group({
      neko_lisen_zivota_ili_nanesena_teska_telesna_povreda: [''],
      ubistvo_na_mah: [''],
      pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi: [''],
      lako_telesno_povrijedi_ili_mu_zdravlje_narusi: [''],
      oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi: [''],
      ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog: [''],
      gonjenje_se_preduzima_po_privatnoj_tuzbi: [''],
      tesko_telesno_povrijedi_ili_mu_zdravlje_narusi: [''],
      tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost: [''],
      teska_telesna_povreda_i_nastupila_smrt: [''],
      teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata: [''],
      ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice: [''],
      sakacenje_zenskih_genitalija: [''],
      prinudna_sterilizacija: ['']
    });
  }

  // tslint:disable-next-line:typedef
  logout() {
    localStorage.removeItem('currentuser');
    this.router.navigate(['/']);
  }

   // tslint:disable-next-line:typedef
   create(){
   if (this.PresudaForm.value.sudije !== '' || this.PresudaForm.value.telesnePovrede !== '' || this.PresudaForm.value.primenjeniPropisi !== '' || this.PresudaForm.value.krivicnaDela !== '') {
   this.sudijaService.createPresuda(JSON.stringify(this.PresudaForm.value))
     .pipe(first())
     .subscribe();
     this.modalService.open('Uspesno dodata presuda.');
   }
  }

  // tslint:disable-next-line:typedef
  GiveUp(){
    this.router.navigate(['/sudija/presudeSudija']);
  }

  // tslint:disable-next-line:typedef
  Case(openCom){
    this.sudijaService.getKaznuPoSlucaju(JSON.stringify(this.PresudaForm.value))
    .pipe(first())
    .subscribe(data => {
      this.rezultatSlucaj = data.punishmentDescription;
    });
    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  Rule(openCom){
    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  create1(){
    if(this.PresudaPraviloForm.value.neko_lisen_zivota_ili_nanesena_teska_telesna_povreda === false || this.PresudaPraviloForm.value.neko_lisen_zivota_ili_nanesena_teska_telesna_povreda === '')
    {
      this.PresudaPraviloForm.value.neko_lisen_zivota_ili_nanesena_teska_telesna_povreda = 'no';
    } else {
      this.PresudaPraviloForm.value.neko_lisen_zivota_ili_nanesena_teska_telesna_povreda = 'yes';
    }

    if(this.PresudaPraviloForm.value.ubistvo_na_mah === false || this.PresudaPraviloForm.value.ubistvo_na_mah === '')
    {
      this.PresudaPraviloForm.value.ubistvo_na_mah = 'no';
    } else {
      this.PresudaPraviloForm.value.ubistvo_na_mah = 'yes';
    }

    if(this.PresudaPraviloForm.value.pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi === false || this.PresudaPraviloForm.value.pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi === '')
    {
      this.PresudaPraviloForm.value.pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi = 'no';
    } else {
      this.PresudaPraviloForm.value.pri_svadji_se_masi_oruzja_podobnog_da_tijelo_tesko_povredi = 'yes';
    }

    if(this.PresudaPraviloForm.value.lako_telesno_povrijedi_ili_mu_zdravlje_narusi === false || this.PresudaPraviloForm.value.lako_telesno_povrijedi_ili_mu_zdravlje_narusi === '')
    {
      this.PresudaPraviloForm.value.lako_telesno_povrijedi_ili_mu_zdravlje_narusi = 'no';
    } else {
      this.PresudaPraviloForm.value.lako_telesno_povrijedi_ili_mu_zdravlje_narusi = 'yes';
    }

    if(this.PresudaPraviloForm.value.oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi === false || this.PresudaPraviloForm.value.oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi === '')
    {
      this.PresudaPraviloForm.value.oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi = 'no';
    } else {
      this.PresudaPraviloForm.value.oruzjem_orudjem_lako_telesno_povrijedi_ili_mu_zdravlje_narusi = 'yes';
    }

    if(this.PresudaPraviloForm.value.ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog === false || this.PresudaPraviloForm.value.ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog === '')
    {
      this.PresudaPraviloForm.value.ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog = 'no';
    } else {
      this.PresudaPraviloForm.value.ucinilac_bio_izazvan_nepristojnim_ili_grubim_ponasanjem_ostecenog = 'yes';
    }

    if(this.PresudaPraviloForm.value.gonjenje_se_preduzima_po_privatnoj_tuzbi === false || this.PresudaPraviloForm.value.gonjenje_se_preduzima_po_privatnoj_tuzbi === '')
    {
      this.PresudaPraviloForm.value.gonjenje_se_preduzima_po_privatnoj_tuzbi = 'no';
    } else {
      this.PresudaPraviloForm.value.gonjenje_se_preduzima_po_privatnoj_tuzbi = 'yes';
    }

    if(this.PresudaPraviloForm.value.tesko_telesno_povrijedi_ili_mu_zdravlje_narusi === false || this.PresudaPraviloForm.value.tesko_telesno_povrijedi_ili_mu_zdravlje_narusi === '')
    {
      this.PresudaPraviloForm.value.tesko_telesno_povrijedi_ili_mu_zdravlje_narusi = 'no';
    } else {
      this.PresudaPraviloForm.value.tesko_telesno_povrijedi_ili_mu_zdravlje_narusi = 'yes';
    }

    if(this.PresudaPraviloForm.value.tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost === false || this.PresudaPraviloForm.value.tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost === '')
    {
      this.PresudaPraviloForm.value.tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost = 'no';
    } else {
      this.PresudaPraviloForm.value.tesko_telesno_povredi_ili_mu_zdravlje_narusi_tako_da_mu_je_doveden_zivot_u_opasnost_ili_unisten_ili_ostecen_trajno_deo_tela_naneta_trajna_nesposonost = 'yes';
    }

    if(this.PresudaPraviloForm.value.teska_telesna_povreda_i_nastupila_smrt === false || this.PresudaPraviloForm.value.teska_telesna_povreda_i_nastupila_smrt === '')
    {
      this.PresudaPraviloForm.value.teska_telesna_povreda_i_nastupila_smrt = 'no';
    } else {
      this.PresudaPraviloForm.value.teska_telesna_povreda_i_nastupila_smrt = 'yes';
    }

    if(this.PresudaPraviloForm.value.teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata === false || this.PresudaPraviloForm.value.teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata === '')
    {
      this.PresudaPraviloForm.value.teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata = 'no';
    } else {
      this.PresudaPraviloForm.value.teska_telesna_povreda_ili_zdravlje_narusi_iz_nehata = 'yes';
    }

    if(this.PresudaPraviloForm.value.ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice === false || this.PresudaPraviloForm.value.ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice === '')
    {
      this.PresudaPraviloForm.value.ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice = 'no';
    } else {
      this.PresudaPraviloForm.value.ucini_na_mah_doveden_u_razdrazenost_bez_svoje_krivice = 'yes';
    }

    if(this.PresudaPraviloForm.value.sakacenje_zenskih_genitalija === false || this.PresudaPraviloForm.value.sakacenje_zenskih_genitalija === '')
    {
      this.PresudaPraviloForm.value.sakacenje_zenskih_genitalija = 'no';
    } else {
      this.PresudaPraviloForm.value.sakacenje_zenskih_genitalija = 'yes';
    }

    if(this.PresudaPraviloForm.value.prinudna_sterilizacija === false || this.PresudaPraviloForm.value.prinudna_sterilizacija === '')
    {
      this.PresudaPraviloForm.value.prinudna_sterilizacija = 'no';
    } else {
      this.PresudaPraviloForm.value.prinudna_sterilizacija = 'yes';
    }

    this.sudijaService.getKaznuPoPravilu(JSON.stringify(this.PresudaPraviloForm.value))
    .pipe(first())
    .subscribe(data => {
      this.rezultatPravilo = data.punishmentDescription;
    });


    }
}
