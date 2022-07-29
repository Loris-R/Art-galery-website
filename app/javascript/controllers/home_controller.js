import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["canvas", "movingb"]

  connect() {
    //get the width and height of the box
      const canvas = this.canvasTarget
      const width = window.innerWidth;
      const height = window.innerHeight;

      canvas.width = width;
      canvas.height = height;

    // get the moving object
    const movingb = this.movingbTarget
    console.log(movingb)
    // get there positions






  }
}
