import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="car-show"
export default class extends Controller {
  static targets = ["start", "end", "price","savePrice", "dayPrice", "service", "totalService"]

  connect() {
    const dailyPrice = this.data.get("myValue");
    // console.log(dailyPrice);
  }

  diffdate() {
    // this.outputTarget.dateContent =
    //   `Hello, ${this.nameTarget.value}!`
    const dailyPrice = this.data.get("myValue");
    const start_date = new Date(this.startTarget.value);
    const end_date = new Date(this.endTarget.value);
    const diff = (end_date - start_date)/(1000 * 60 * 60 * 24)
    const totalPrice = diff * dailyPrice
    console.log(typeof(diff));
    console.log(diff);
    console.log(typeof(totalPrice));

    if (Number.isNaN(diff)) {
      this.priceTarget.innerText = 0;
    } else if (diff > 0) {
      this.dayPriceTarget.innerText = dailyPrice + "€ x " + diff
      this.priceTarget.innerText = totalPrice + " €";
      this.savePriceTarget.value= totalPrice;
      this.serviceTarget.innerText = totalPrice*0.05
      this.totalServiceTarget.innerText = totalPrice + (totalPrice*0.05)
    } else {
      this.priceTarget.innerText = "0";
    }
  }



}
