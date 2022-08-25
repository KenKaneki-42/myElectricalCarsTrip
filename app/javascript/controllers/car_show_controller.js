import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="car-show"
export default class extends Controller {
  static targets = ["start", "end", "price","savePrice"]

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
    // console.log(start_date);
    // console.log(end_date);
    const diff = (end_date - start_date)/(1000 * 60 * 60 * 24)
    const totalPrice = diff * dailyPrice
    console.log(typeof(diff));
    console.log(diff);
    console.log(typeof(totalPrice));

    if (Number.isNaN(diff)) {
      this.priceTarget.innerText = 0;
    } else if (diff > 0) {
      this.priceTarget.innerText = totalPrice + " €";
      this.savePriceTarget.value=totalPrice;
    } else {
      this.priceTarget.innerText = "please choose an end date which is after start date";
    }


      // calcul de la différence des dates
      // dailyprice * diffdate(beggingdate,endingdate)

  }



}
