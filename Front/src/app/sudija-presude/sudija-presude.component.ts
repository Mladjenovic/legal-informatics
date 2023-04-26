import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { SudijaServiceService } from '../services/sudija-service.service';
import {first} from 'rxjs/operators';
import {NgbModal} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-sudija-presude',
  templateUrl: './sudija-presude.component.html',
  styleUrls: ['./sudija-presude.component.css']
})
export class SudijaPresudeComponent implements OnInit {

  presude: any = [];
  presuda: any = [];

  sudije: any = [];
  telesnePovrede: any = [];
  primenjeniPropisi: any = [];
  krivicnaDela: any = [];
  closeResult: string;

  constructor(private router: Router, private sudijaService: SudijaServiceService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.ucitajPresude();
  }

  // tslint:disable-next-line:typedef
  logout() {
    localStorage.removeItem('currentuser');
    this.router.navigate(['/']);

  }

  ucitajPresude(){
    this.sudijaService.getPresude()
    .pipe(first())
      .subscribe(data => {
        this.presude = data;
      });
  }

  // tslint:disable-next-line:typedef
  otvoriSudije(openCom, presuda){
    this.presuda = presuda;
    this.sudije = [];
    this.sudije = this.presuda.sudije;

    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  otvoriTelesnePovrede(openCom, presuda){
    this.presuda = presuda;
    this.telesnePovrede = [];
    this.telesnePovrede = this.presuda.telesnePovrede;

    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  otvoriPrimenjenePrepise(openCom, presuda){
    this.presuda = presuda;
    this.primenjeniPropisi = [];
    this.primenjeniPropisi = this.presuda.primenjeniPropisi;

    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  otvoriKrivicnaDela(openCom, presuda){
    this.presuda = presuda;
    this.krivicnaDela = [];
    this.krivicnaDela = this.presuda.krivicnaDela;

    this.modalService.open(openCom, {size: 'xl'}).result.then((result) => {
      this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      this.closeResult = `Dismissed`;
    });
  }

  // tslint:disable-next-line:typedef
  MakeJudge(){
    this.router.navigate(['/sudija/novaPresudaSudija']);
  }

}
