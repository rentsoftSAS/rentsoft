import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LiquidarAlquilerComponent } from './liquidar-alquiler.component';

describe('LiquidarAlquilerComponent', () => {
  let component: LiquidarAlquilerComponent;
  let fixture: ComponentFixture<LiquidarAlquilerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LiquidarAlquilerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LiquidarAlquilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
