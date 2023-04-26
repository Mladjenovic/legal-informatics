import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SudijaSidebarComponent } from './sudija-sidebar.component';

describe('SudijaSidebarComponent', () => {
  let component: SudijaSidebarComponent;
  let fixture: ComponentFixture<SudijaSidebarComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SudijaSidebarComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SudijaSidebarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
