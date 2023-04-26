import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { SudijaServiceService } from '../services/sudija-service.service';
import {first} from 'rxjs/operators';

@Component({
  selector: 'app-sudija-krivicna-dela',
  templateUrl: './sudija-krivicna-dela.component.html',
  styleUrls: ['./sudija-krivicna-dela.component.css']
})
export class SudijaKrivicnaDelaComponent implements OnInit {
  krivicnaDela: any = [];
  id: any = [];
  constructor(private router: Router, private sudijaService: SudijaServiceService, private activatedRoute: ActivatedRoute) { }

  ngOnInit(): void {
    this.activatedRoute.paramMap.subscribe(paramMap => { 
      this.id = paramMap.get('id'); 
    });
    if(this.id === null){
      this.sudijaService.getKrivicnaDela()
      .pipe(first())
        .subscribe(data => {
          this.krivicnaDela = data;
        });
    } else {
      this.sudijaService.getKrivicnoDelo(this.id)
      .pipe(first())
        .subscribe(data => {
          this.krivicnaDela = data;
        });
    }
    
  }

    // tslint:disable-next-line:typedef
    logout() {
      localStorage.removeItem('currentuser');
      this.router.navigate(['/']);
  
    }

}
