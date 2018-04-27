import { Component, NgModule, enableProdMode } from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {platformBrowserDynamic} from '@angular/platform-browser-dynamic';
import {DxButtonModule} from 'devextreme-angular';
import notify from 'devextreme/ui/notify';

if(!/localhost/.test(document.location.host)) {
    enableProdMode();
}

@Component({
    selector: 'demo-app',
    templateUrl: 'app/app.component.html',
    styleUrls: ['app/app.component.css']
})

export class AppComponent {
  weatherClick() {
    notify("The Weather button was clicked");
  }
  doneClick() {
    notify("The Done button was clicked");
  }
  sendClick() {
    notify("The Send button was clicked");
  }
  plusClick() {
    notify("The button was clicked");
  }
}

@NgModule({
    imports: [
        BrowserModule,
        DxButtonModule
    ],
    declarations: [AppComponent],
    bootstrap: [AppComponent]
})

export class AppModule { }

platformBrowserDynamic().bootstrapModule(AppModule);