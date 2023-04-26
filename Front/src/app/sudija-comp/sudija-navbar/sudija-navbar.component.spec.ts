import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaNavbarComponent } from './sudija-navbar.component';

describe('SudijaNavbarComponent', () => {
  let component: SudijaNavbarComponent;
  let fixture: ComponentFixture<SudijaNavbarComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaNavbarComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaNavbarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
