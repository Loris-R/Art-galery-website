import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "svg" ]

  connect() {
    const allSvg = this.svgTargets;
    
    allSvg.forEach((svg) => {
      svgAnimation(svg);

      setInterval(function(){
        svgAnimation(svg);
      }, 15000);

      function svgAnimation(svg) {
        const windowHeight = window.innerHeight;
        const windowWidth = window.innerWidth;

        let top = Math.floor((Math.random() < 0.5 ? -1 : 1) * windowHeight);
        let left = Math.floor((Math.random() < 0.5 ? -1 : 1) * windowWidth);

        svg.animate({top: top + "px", left: left + "px"}, {duration: 100000, iterations: Infinity});
      }
    });
  }
}