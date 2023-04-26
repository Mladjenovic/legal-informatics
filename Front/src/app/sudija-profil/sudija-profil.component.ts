import { Component, OnInit } from '@angular/core';
import {FormBuilder} from '@angular/forms';
import {Router, ActivatedRoute} from '@angular/router';
import {SudijaServiceService} from '../services/sudija-service.service';
import {first} from 'rxjs/operators';

@Component({
  selector: 'app-sudija-profil',
  templateUrl: './sudija-profil.component.html',
  styleUrls: ['./sudija-profil.component.css']
})
export class SudijaProfilComponent implements OnInit {
  sudija: any = [];
  korisnik: any = [];
  username: any = "";
  constructor(private formBuilder: FormBuilder, private router: Router, private sudijaService: SudijaServiceService, private activatedRoute: ActivatedRoute) { }

  ngOnInit(): void {
    this.activatedRoute.paramMap.subscribe(paramMap => { 
      this.username = paramMap.get('username'); 
  });
  if(this.username === null)
  {
    this.ucitajSudiju();
  } else{
    this.ucitajSudijuUrl(this.username);
  }
    
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

  ucitajSudijuUrl(username) {
    this.sudijaService.getUser(username)
      .pipe(first())
      .subscribe((data: {}) => {
          this.korisnik = data;
          this.sudija = this.korisnik;
        }
      );
  }

  // tslint:disable-next-line:typedef
  logout() {
    localStorage.removeItem('currentuser');
    this.router.navigate(['/']);

  }

}
