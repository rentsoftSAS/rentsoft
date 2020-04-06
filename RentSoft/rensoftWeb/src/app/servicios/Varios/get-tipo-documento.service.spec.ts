import { TestBed } from '@angular/core/testing';

import { GetTipoDocumentoService } from './get-tipo-documento.service';

describe('GetTipoDocumentoService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: GetTipoDocumentoService = TestBed.get(GetTipoDocumentoService);
    expect(service).toBeTruthy();
  });
});
