import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaNovaPresudaComponent } from './sudija-nova-presuda.component';

describe('SudijaNovaPresudaComponent', () => {
  let component: SudijaNovaPresudaComponent;
  let fixture: ComponentFixture<SudijaNovaPresudaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaNovaPresudaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaNovaPresudaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
