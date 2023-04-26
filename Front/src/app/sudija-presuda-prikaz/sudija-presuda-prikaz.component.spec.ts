import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaPresudaPrikazComponent } from './sudija-presuda-prikaz.component';

describe('SudijaPresudaPrikazComponent', () => {
  let component: SudijaPresudaPrikazComponent;
  let fixture: ComponentFixture<SudijaPresudaPrikazComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaPresudaPrikazComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaPresudaPrikazComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
