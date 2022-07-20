import { Controller } from "@hotwired/stimulus"
import ScrollTo from 'stimulus-scroll-to'

export default class extends Controller {
  static targets = ["back", "about", "design", "contact", "artfair", "registration", "cross", "aboutdown"]
  connect() {
    const back = this.backTarget
    const about = this.aboutTarget
    const design = this.designTarget
    const contact = this.contactTarget
    const registration = this.registrationTarget
    const artfair = this.artfairTarget
    const cross = this.crossTarget
    // const aboutlink = this.aboutlinkTarget
    // const partnerslink = this.partnerslinkTarget
    // const contactlink = this.contactlinkTarget
    const aboutdown = this.aboutdownTarget

    if (window.location.pathname == "/" ) {
      back.classList.add("display_back");
    }

    if (window.location.pathname == "/art-fair") {
      about.classList.add("display_back");
      design.classList.add("display_back");
      contact.classList.add("display_back");
      registration.classList.add("display_back");
    }

    if (window.location.pathname == "/art-fair-programm") {
      about.classList.add("display_back");
      design.classList.add("display_back");
      contact.classList.add("display_back");
      registration.classList.add("display_back");
    }

    if (window.location.pathname == "/design") {
      about.classList.add("display_back");
      artfair.classList.add("display_back");
      contact.classList.add("display_back");
      registration.classList.add("display_back");
    }

    if (window.location.pathname == "/design-programm") {
      about.classList.add("display_back");
      artfair.classList.add("display_back");
      contact.classList.add("display_back");
      registration.classList.add("display_back");
    }

    cross.addEventListener("click", function () {
      cross.classList.toggle("rotate");
      aboutdown.style.height = "200px";
    });

    // aboutlink.addEventListener("click", function () {
    //   window.location.href = "./#about_link";
    //   cross.classList.toggle("rotate");
    //   aboutdown.style.height = "0px";
    // });

    // partnerslink.addEventListener("click", function () {
    //   window.location.href = "./#partners_link";
    //   cross.classList.toggle("rotate");
    //   aboutdown.style.height = "0px";
    // });

    // contactlink.addEventListener("click", function () {
    //   window.location.href = "./#contact_link";
    //   cross.classList.toggle("rotate");
    //   aboutdown.style.height = "0px";
    // });
  }
}
