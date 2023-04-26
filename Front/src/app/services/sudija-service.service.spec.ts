import { TestBed } from '@angular/core/testing';

import { SudijaServiceService } from './sudija-service.service';

describe('SudijaServiceService', () => {
  let service: SudijaServiceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SudijaServiceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
