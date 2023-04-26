import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import {RouterModule} from '@angular/router';
import {AppRoutingModule} from './app.routing';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {FontAwesomeModule} from '@fortawesome/angular-fontawesome';
import {FlatpickrModule} from 'angularx-flatpickr';
import {MatButtonModule, MatDatepickerModule, MatFormFieldModule, MatNativeDateModule, MatSelectModule} from '@angular/material';
import {MatExpansionModule} from '@angular/material/expansion';
import {MatDividerModule} from '@angular/material/divider';
import { LoginComponent } from './login/login.component';
import { RegistracionComponent } from './registracion/registracion.component';
import {SudijaLayoutModule} from './sudija-layout/sudija-layout.module';
import { SudijaPresudeComponent } from './sudija-presude/sudija-presude.component';
import { SudijaNovaPresudaComponent } from './sudija-nova-presuda/sudija-nova-presuda.component';
import { SudijaPresudaPrikazComponent } from './sudija-presuda-prikaz/sudija-presuda-prikaz.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegistracionComponent,
    SudijaPresudeComponent,
    SudijaNovaPresudaComponent,
    SudijaPresudaPrikazComponent
  ],
  imports: [
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    RouterModule,
    AppRoutingModule,
    NgbModule,
    ReactiveFormsModule,
    SudijaLayoutModule,
    FontAwesomeModule,
    FlatpickrModule.forRoot(),
    MatFormFieldModule,
    MatSelectModule,
    MatDatepickerModule,
    MatButtonModule,
    MatFormFieldModule,
    MatNativeDateModule,
    MatExpansionModule,
    MatDividerModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
