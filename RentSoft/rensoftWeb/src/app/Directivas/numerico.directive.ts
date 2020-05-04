import { Directive,ElementRef , HostListener, Input} from '@angular/core';

@Directive({
  selector: '[appNumerico]'
})
export class NumericoDirective {
  regexStr = '^[0-9]';
  constructor(private el: ElementRef) { }
  @Input() OnlyNumber: boolean;

  @HostListener('keypress', ['$event']) onKeypress(event) {
    let e =  event;   
      let ch = String.fromCharCode(e.keyCode);
      let regEx =  new RegExp(this.regexStr); 
        if(regEx.test(ch))
        return;
      else
         e.preventDefault();
           
  }
}
