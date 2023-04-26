import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaPresudeComponent } from './sudija-presude.component';

describe('SudijaPresudeComponent', () => {
  let component: SudijaPresudeComponent;
  let fixture: ComponentFixture<SudijaPresudeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaPresudeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaPresudeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
