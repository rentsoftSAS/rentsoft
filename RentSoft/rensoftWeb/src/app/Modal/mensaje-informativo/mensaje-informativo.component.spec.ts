import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MensajeInformativoComponent } from './mensaje-informativo.component';

describe('MensajeInformativoComponent', () => {
  let component: MensajeInformativoComponent;
  let fixture: ComponentFixture<MensajeInformativoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MensajeInformativoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MensajeInformativoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
