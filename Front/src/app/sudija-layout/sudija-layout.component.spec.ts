import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaLayoutComponent } from './sudija-layout.component';

describe('SudijaLayoutComponent', () => {
  let component: SudijaLayoutComponent;
  let fixture: ComponentFixture<SudijaLayoutComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaLayoutComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaLayoutComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
