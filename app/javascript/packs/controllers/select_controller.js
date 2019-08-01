import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "button" ]

  initialize() {
    this.buttonTargets.forEach((buttonTarget) => {
      if (buttonTarget.dataset.selectValue === this.inputTarget.value) {
        buttonTarget.classList.add('selected');
        console.log(buttonTarget)
      }
    });
  }

  update(event) {
    this.buttonTargets.forEach((buttonTarget) => {
      buttonTarget.classList.remove('selected');
    });
    event.currentTarget.classList.add('selected');
    this.inputTarget.value = event.currentTarget.dataset.selectValue;
  }
}
