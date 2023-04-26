import {Routes, RouterModule} from '@angular/router';
import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {BrowserModule} from '@angular/platform-browser';
import {LoginComponent} from './login/login.component';
import {RegistracionComponent} from './registracion/registracion.component';
import {SudijaLayoutComponent} from './sudija-layout/sudija-layout.component';

const routes: Routes = [

  {
    path: '',
    component: LoginComponent,
    children: [
    ]},
  {
    path: 'signup',
    component: RegistracionComponent,
    children: [
    ]},
  {
    path: 'sudija',
    component: SudijaLayoutComponent,
    children: [
      {
        path: '',
        loadChildren: './sudija-layout/sudija-layout.module#SudijaLayoutModule'
      }]
  },
];

@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    RouterModule.forRoot(routes)
  ],
  exports: [
  ],
})

export class AppRoutingModule { }
