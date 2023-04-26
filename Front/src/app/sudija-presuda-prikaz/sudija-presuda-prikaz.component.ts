import { Component, OnInit, ChangeDetectorRef  } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { SudijaServiceService } from '../services/sudija-service.service';
import { first } from 'rxjs/operators';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-sudija-presuda-prikaz',
  templateUrl: './sudija-presuda-prikaz.component.html',
  styleUrls: ['./sudija-presuda-prikaz.component.css']
})
export class SudijaPresudaPrikazComponent implements OnInit {
  tekstPresude: any = "";
  sanitizedTekstPresude: any = '';
  akoma: any = "";
  attributes: any = "";
  id: any = 0;

  presuda: any = [];
  constructor(private router: Router,private activatedRoute: ActivatedRoute, private sudijaService: SudijaServiceService, private sanitizer: DomSanitizer, private cdr: ChangeDetectorRef) {

   }

  ngOnInit(): void {
    this.activatedRoute.paramMap.subscribe(paramMap => { 
      this.id = paramMap.get('id'); 
      this.ucitajPresudu();
      
  });
    
  }

  async getPresuda() {
    this.presuda = await this.sudijaService.getPresuda(this.id).toPromise();
    for(var sudija of this.presuda.sudije) {
      this.tekstPresude = this.markSudije(this.tekstPresude, sudija.prezime, sudija.korisnickoIme);
    }
    for(var krivicnoDelo of this.presuda.krivicnaDela){
      this.tekstPresude = this.markDelo(this.tekstPresude, krivicnoDelo.naziv , krivicnoDelo.id);
    }
    this.sanitizedTekstPresude = this.sanitizer.bypassSecurityTrustHtml(this.tekstPresude);
  }

  ucitajPresudu() {
    this.sudijaService.getTekstPresude(this.id)
      .pipe(first())
      .subscribe((data: {}) => {
          this.tekstPresude = data;
          this.cdr.detectChanges();
          this.getPresuda();
          this.sudijaService.getAkomaTekstPresude(this.id)
          .pipe(first())
          .subscribe((data: {}) => {
            this.akoma = data;
            this.sudijaService.getAttributes(this.tekstPresude)
            .pipe(first())
            .subscribe((data: {}) => {
              this.attributes = data;
            })
          })
        }
      );
  }

  markSudije(text: string, prezime, korisnickoIme): string {
    const regex = prezime;
    return text.replace(regex, '<a href="http://localhost:4200/sudija/profilSudija/' + korisnickoIme + '">$&</a>');
  }

  markDelo(text: string, delo, id): string {
    const regex = delo;
    return text.replace(regex, '<a href="http://localhost:4200/sudija/krivicnaDela/' + id + '#' + id +'">$&</a>');
  }

    // tslint:disable-next-line:typedef
    logout() {
      localStorage.removeItem('currentuser');
      this.router.navigate(['/']);
  
    }

}
