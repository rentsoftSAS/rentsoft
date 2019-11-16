import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NoSerializadosComponent } from './no-serializados.component';

describe('NoSerializadosComponent', () => {
  let component: NoSerializadosComponent;
  let fixture: ComponentFixture<NoSerializadosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NoSerializadosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NoSerializadosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
