import { TestBed, async, inject } from '@angular/core/testing';

import { VerificaAuthGuard } from './verifica-auth.guard';

describe('VerificaAuthGuard', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [VerificaAuthGuard]
    });
  });

  it('should ...', inject([VerificaAuthGuard], (guard: VerificaAuthGuard) => {
    expect(guard).toBeTruthy();
  }));
});
