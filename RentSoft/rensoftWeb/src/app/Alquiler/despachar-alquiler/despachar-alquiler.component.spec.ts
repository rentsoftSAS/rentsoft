import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DespacharAlquilerComponent } from './despachar-alquiler.component';

describe('DespacharAlquilerComponent', () => {
  let component: DespacharAlquilerComponent;
  let fixture: ComponentFixture<DespacharAlquilerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DespacharAlquilerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DespacharAlquilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
