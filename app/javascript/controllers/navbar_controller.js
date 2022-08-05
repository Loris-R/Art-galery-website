import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["cross", "aboutdown"]

  connect() {
    const cross = this.crossTarget
    const aboutdown = this.aboutdownTarget

    cross.addEventListener("click", function () {
      cross.classList.toggle("rotate");
      aboutdown.style.height = "230px";
    });
  }

  link() {
    const cross = this.crossTarget
    const aboutdown = this.aboutdownTarget

    cross.classList.toggle("rotate");
    aboutdown.style.height = "0px";
  }
}
