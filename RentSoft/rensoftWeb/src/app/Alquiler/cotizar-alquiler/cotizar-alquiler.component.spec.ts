import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CotizarAlquilerComponent } from './cotizar-alquiler.component';

describe('CotizarAlquilerComponent', () => {
  let component: CotizarAlquilerComponent;
  let fixture: ComponentFixture<CotizarAlquilerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CotizarAlquilerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CotizarAlquilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
