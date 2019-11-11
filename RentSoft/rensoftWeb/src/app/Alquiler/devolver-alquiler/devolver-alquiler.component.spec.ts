import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DevolverAlquilerComponent } from './devolver-alquiler.component';

describe('DevolverAlquilerComponent', () => {
  let component: DevolverAlquilerComponent;
  let fixture: ComponentFixture<DevolverAlquilerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DevolverAlquilerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DevolverAlquilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
