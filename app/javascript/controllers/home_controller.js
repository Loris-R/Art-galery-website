import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["svg"]

  connect() {
    const svg = this.svgTarget
    const width = window.innerWidth;
    console.log(width);
    const height = window.innerHeight;
    console.log(height);

    svg.width = width;
    svg.height = height;
  }
}
