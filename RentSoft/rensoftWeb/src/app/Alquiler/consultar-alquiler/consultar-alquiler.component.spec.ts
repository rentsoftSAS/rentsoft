import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConsultarAlquilerComponent } from './consultar-alquiler.component';

describe('ConsultarAlquilerComponent', () => {
  let component: ConsultarAlquilerComponent;
  let fixture: ComponentFixture<ConsultarAlquilerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConsultarAlquilerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConsultarAlquilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
