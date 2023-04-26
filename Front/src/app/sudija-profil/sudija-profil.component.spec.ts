import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaProfilComponent } from './sudija-profil.component';

describe('SudijaProfilComponent', () => {
  let component: SudijaProfilComponent;
  let fixture: ComponentFixture<SudijaProfilComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaProfilComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaProfilComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
