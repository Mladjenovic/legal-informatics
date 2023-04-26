import { NgModule } from '@angular/core'; //
import { CommonModule } from '@angular/common'; //
import { SudijaLayoutComponent } from './sudija-layout.component'; //
import {RouterModule} from '@angular/router'; //
import {FormsModule, ReactiveFormsModule} from '@angular/forms'; //
import {NgbModule} from '@ng-bootstrap/ng-bootstrap'; //
import {FlatpickrModule} from 'angularx-flatpickr'; //
import {SudijaCompModule} from '../sudija-comp/sudija-comp.module'; //
import {SudijaLayoutRutes} from './sudija-layout.routing';
import {SudijaProfilComponent} from '../sudija-profil/sudija-profil.component';
import {MatFormFieldModule, MatSelectModule} from '@angular/material';
import { SudijaKrivicnaDelaComponent } from '../sudija-krivicna-dela/sudija-krivicna-dela.component';



@NgModule({
  declarations: [SudijaLayoutComponent,
    SudijaProfilComponent,
    SudijaKrivicnaDelaComponent
    ],
  imports: [
    CommonModule,
    RouterModule.forChild(SudijaLayoutRutes),
    FormsModule,
    NgbModule,
    ReactiveFormsModule,
    FlatpickrModule.forRoot(),
    SudijaCompModule,
    MatFormFieldModule,
    MatSelectModule
  ],
  exports: [SudijaLayoutComponent
  ]
})
export class SudijaLayoutModule { }
