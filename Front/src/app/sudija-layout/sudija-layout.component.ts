import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import {FormBuilder} from '@angular/forms';
import {SudijaServiceService} from '../services/sudija-service.service';
import {first} from 'rxjs/operators';

@Component({
  selector: 'app-sudija-layout',
  templateUrl: './sudija-layout.component.html',
  styleUrls: ['./sudija-layout.component.css']
})
export class SudijaLayoutComponent implements OnInit {
  sudija: any = [];
  korisnik: any = [];
  constructor(private formBuilder: FormBuilder,
              private router: Router, private sudijaService: SudijaServiceService) { }

  ngOnInit(): void {
    this.ucitajSudiju();
  }

  // tslint:disable-next-line:typedef
  ucitajSudiju() {
    this.sudijaService.getUser(localStorage.getItem('currentuser').toString())
      .pipe(first())
      .subscribe((data: {}) => {
          this.korisnik = data;
          this.sudija = this.korisnik;
        }
      );
  }

}
