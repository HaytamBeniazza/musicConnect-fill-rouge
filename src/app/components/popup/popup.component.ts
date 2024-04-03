import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-popup',
  templateUrl: './popup.component.html',
  styleUrls: ['./popup.component.scss']
})
export class PopupComponent implements OnInit {
  hidden : boolean = true;
  @Input() show : boolean = true;
  @Input() color!: string;
  @Input() name!: string;
  @Input() title!: string;

  ngOnInit(): void {
    this.hidden = true;
  }

  constructor(){}

  Toggle() {
    this.hidden = !this.hidden;
  }
}