import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="car-show"
export default class extends Controller {
  connect() {
    const dailyPrice = this.data.get("myValue");
  }

  diffdate() {
    this.outputTarget.dateContent =
      `Hello, ${this.nameTarget.value}!`
      // calcul de la différence des dates
      // dailyprice * diffdate(beggingdate,endingdate)
  }

  updatePrice() {

  }
}
