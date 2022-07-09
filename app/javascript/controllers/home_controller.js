import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbar", "bienvenueFirstSection" ]

  connect() {
    const navbar = this.navbarTarget;
    const bFS = this.bienvenueFirstSectionTarget;
    const height = bFS.height();

    window.scroll(function (){
      if(this.scrollTop() > height) {
        navbar.toggleClass('fixed')
      }
    })



  }
}
