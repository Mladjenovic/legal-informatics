import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {Router} from '@angular/router';
import {SudijaServiceService} from '../services/sudija-service.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  korisnik;

  constructor(private formBuilder: FormBuilder,
              private router: Router,
              private service: SudijaServiceService) { }

  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      korisnickoIme: ['', Validators.required],
      lozinka: ['', Validators.required]
    });
  }
  // tslint:disable-next-line:typedef
  onSubmit() {
    this.service.login(this.loginForm.value)
      .subscribe( data => {
        this.korisnik = data;
        localStorage.setItem('currentuser', this.loginForm.value.korisnickoIme);
        this.router.navigate(['/sudija']);
      })
    ;
  }

}
