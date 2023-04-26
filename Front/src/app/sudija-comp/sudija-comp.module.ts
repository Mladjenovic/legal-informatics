import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SudijaNavbarComponent } from './sudija-navbar/sudija-navbar.component';
import { SudijaSidebarComponent } from './sudija-sidebar/sudija-sidebar.component';
import {NgbCollapseModule, NgbDropdownModule} from '@ng-bootstrap/ng-bootstrap';
import {RouterModule} from '@angular/router';



@NgModule({
  declarations: [SudijaNavbarComponent, SudijaSidebarComponent],
  exports: [SudijaNavbarComponent,
            SudijaSidebarComponent],
  imports: [
    CommonModule,
    NgbCollapseModule,
    RouterModule,
    NgbDropdownModule
  ]
})
export class SudijaCompModule { }
