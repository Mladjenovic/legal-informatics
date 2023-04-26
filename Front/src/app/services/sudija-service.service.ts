import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from '@angular/common/http';
import { DrDocResponse } from '../sudija-nova-presuda/sudija-nova-presuda.component';

@Injectable({
  providedIn: 'root'
})
export class SudijaServiceService {

  constructor(private http: HttpClient) { }

  // tslint:disable-next-line:typedef
  registrujSudiju(user) {
    return this.http.post('http://localhost:8060/api/v1/korisnik', user,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json'),
      responseType: 'text'
    });
  }

  // tslint:disable-next-line:typedef
  login(user) {
    return this.http.post('http://localhost:8060/api/v1/korisnik/login', user,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getUser(username) {
    return this.http.get('http://localhost:8060/api/v1/korisnik/' + username,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getPresude() {
    return this.http.get('http://localhost:8060/api/v1/presuda',      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getSudija(username) {
    return this.http.get('http://localhost:8060/api/v1/korisnik/sudija/' + username,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  createPresuda(presuda) {
    return this.http.post('http://localhost:8060/api/v1/presuda', presuda,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getSudije() {
    return this.http.get('http://localhost:8060/api/v1/korisnik',      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getTelesnePovrede() {
    return this.http.get('http://localhost:8060/api/v1/telesnaPovreda',      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getPrimenjeniPropisi() {
    return this.http.get('http://localhost:8060/api/v1/propis',      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getKrivicnaDela() {
    return this.http.get('http://localhost:8060/api/v1/krivicnoDelo',      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

   // tslint:disable-next-line:typedef
   getKrivicnoDelo(id) {
    return this.http.get('http://localhost:8060/api/v1/krivicnoDelo/' + id,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  // tslint:disable-next-line:typedef
  getKaznuPoPravilu(pravilo) {
    return this.http.post<DrDocResponse>('http://localhost:8060/api/v1/document/rasudjivanjePoPravilima', pravilo,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  getTekstPresude(id){
    return this.http.get('http://localhost:8060/api/v1/document/parse/' + id,{
      headers: new HttpHeaders().set('Content-Type', 'text/plain'),
      responseType: "text"
    });
  }

  getAkomaTekstPresude(id){
    return this.http.get('http://localhost:8060/api/v1/document/akomaNtoso/' + id,{
      headers: new HttpHeaders().set('Content-Type', 'text/plain'),
      responseType: "text"
    });
  }

    // tslint:disable-next-line:typedef
    getKaznuPoSlucaju(slucaj) {
      return this.http.post<DrDocResponse>('http://localhost:8060/api/v1/jcolibri/postColibri', slucaj,      {
        headers: new HttpHeaders().set('Content-Type', 'application/json')
      });
    }

  // tslint:disable-next-line:typedef
  getPresuda(id) {
    return this.http.get('http://localhost:8060/api/v1/presuda/' + id,      {
      headers: new HttpHeaders().set('Content-Type', 'application/json')
    });
  }

  getAttributes(text: any) {
    const body = {tekstPresude: text}
    return this.http.post('http://localhost:5000/get',body,{
      headers: new HttpHeaders().set('Content-Type', 'application/json'),
      responseType: "text", 
    });
  }

}
