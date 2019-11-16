import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SerializadosComponent } from './serializados.component';

describe('SerializadosComponent', () => {
  let component: SerializadosComponent;
  let fixture: ComponentFixture<SerializadosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SerializadosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SerializadosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
