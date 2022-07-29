import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["canvas"]

  connect() {
      const canvas = this.canvasTarget
      const width = window.innerWidth;
      const height = window.innerHeight;

      canvas.width = width;
      canvas.height = height;

      const ctx = canvas.getContext('2d');
    console.log(ctx);

  }
}
