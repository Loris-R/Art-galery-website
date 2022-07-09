import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "navbar" ]

  connect() {
    const navbar = this.navbarTarget;


  }
}
