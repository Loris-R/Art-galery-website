import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["back", "about", "design", "contact", "partners"]
  connect() {
    const back = this.backTarget
    const about = this.aboutTarget
    const design = this.designTarget
    const contact = this.contactTarget
    const partners = this.partnersTarget


    if (window.location.pathname == "/" ) {
      back.classList.add("display_back");
    }

    if (window.location.pathname == "/art-fair") {
      about.classList.add("display_back");
      design.classList.add("display_back");
      contact.classList.add("display_back");
      partners.classList.add("display_back");
    }
  }
}
