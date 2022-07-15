import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["back", "about", "design", "contact", "artfair", "liartfair", "lidesign", "liartfairone"]
  connect() {
    const back = this.backTarget
    const about = this.aboutTarget
    const design = this.designTarget
    const contact = this.contactTarget
    const artfair = this.artfairTarget
    const liartfair = this.liartfairTarget
    const liartfairone = this.liartfaironeTarget
    const lidesign = this.lidesignTarget


    if (window.location.pathname == "/" ) {
      back.classList.add("display_back");
    }

    if (window.location.pathname == "/art-fair") {
      about.classList.add("display_back");
      design.classList.add("display_back");
      contact.classList.add("display_back");
      lidesign.classList.add("display_back");
      liartfairone.classList.add("display_back");

    }

    if (window.location.pathname == "/art-fair-programm") {
      about.classList.add("display_back");
      design.classList.add("display_back");
      contact.classList.add("display_back");
      lidesign.classList.add("display_back");
      liartfairone.classList.add("display_back");
    }

    if (window.location.pathname == "/design") {
      about.classList.add("display_back");
      artfair.classList.add("display_back");
      contact.classList.add("display_back");
      liartfair.classList.add("display_back");
      liartfairone.classList.add("display_back");
    }

    if (window.location.pathname == "/design-programm") {
      about.classList.add("display_back");
      artfair.classList.add("display_back");
      contact.classList.add("display_back");
      liartfair.classList.add("display_back");
      liartfairone.classList.add("display_back");
    }
  }
}
