import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {Router} from '@angular/router';
import {first} from 'rxjs/operators';
import {SudijaServiceService} from '../services/sudija-service.service';

@Component({
  selector: 'app-registracion',
  templateUrl: './registracion.component.html',
  styleUrls: ['./registracion.component.css']
})
export class RegistracionComponent implements OnInit {
  korisnikForm: FormGroup;
  radnikRId;
  radnik: any = [];

  pogoni: any = [];
  magacini: any = [];
  kancelarije: any = [];
  constructor(    private formBuilder: FormBuilder,
                  private router: Router,
                  private sudijaService: SudijaServiceService) { }

  ngOnInit(): void {
    this.korisnikForm = this.formBuilder.group({
      korisnickoIme: ['', Validators.required],
      lozinka: ['', Validators.required],
      ime: ['', Validators.required],
      prezime: ['', Validators.required],
      jmbg: ['', Validators.required],
      tekuciRacun: ['', Validators.required],
      uloga: ['Operater', Validators.required],
      plata: [50000],
      radnikRId: [],
      kancelarija_Ka_id: [],
      magacinMId: [],
      pogonPId: []
    });
  }


  // tslint:disable-next-line:typedef
  get formControls() { return this.korisnikForm.controls; }

  // tslint:disable-next-line:typedef
  get myUloga() {
    console.log(this.korisnikForm.get('uloga'));
    return this.korisnikForm.get('uloga');
  }

  // tslint:disable-next-line:typedef
  onSubmit() {
    if (this.myUloga.value === 'Sudija'){
      this.sudijaService.registrujSudiju(JSON.stringify(this.korisnikForm.value))
        .pipe(first())
        .subscribe(mesData => {
          const rradnik = {
            radnikRId: mesData,
            korisnickoIme: this.korisnikForm.value.korisnickoIme,
            lozinka: this.korisnikForm.value.lozinka
          };
          this.sudijaService.registrujSudiju(JSON.stringify(rradnik))
            .pipe(first())
            .subscribe();
          this.router.navigate(['/']);
        });
    }

  }

  // tslint:disable-next-line:typedef
  MakeVote() {
    this.router.navigate(['/']);
  }
}
