import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaKrivicnaDelaComponent } from './sudija-krivicna-dela.component';

describe('SudijaKrivicnaDelaComponent', () => {
  let component: SudijaKrivicnaDelaComponent;
  let fixture: ComponentFixture<SudijaKrivicnaDelaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaKrivicnaDelaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaKrivicnaDelaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
