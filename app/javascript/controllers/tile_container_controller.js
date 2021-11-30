import { Controller } from "stimulus"

const idSet = new Set();

export default class extends Controller {
  static targets = ["tile", "plot", "input", "form", "droplet"]

  connect() {

  }

  changeClass(event) {
    if (event.currentTarget.dataset.plotId) {
      this.selectPlot(event)
      document.querySelector(`input[data-tile-id=tile-${event.currentTarget.id}]`).click()
      this.formTarget.classList.add('d-none')
    } else {
      this.selectFree(event)
      document.querySelector(`input[data-tile-id=tile-${event.currentTarget.id}]`).click()
      this.formTarget.classList.remove('d-none')
    }
  }

  selectFree(event) {
    event.currentTarget.classList.toggle('selected')
    if (idSet.has(event.currentTarget.id)) {
      idSet.delete(event.currentTarget.id)
    } else {
      idSet.add(event.currentTarget.id)
    };
    const idArray = new Array(...idSet)
    this.inputTarget.value = idArray
  }

  selectPlot(event) {
    // Can we do this with Stimulus?
    const selectedTiles = document.getElementsByClassName('selected');
    while (selectedTiles.length > 0) {
      selectedTiles[0].classList.remove('selected');
    }
    console.log(selectedTiles)
    const tiles = document.querySelectorAll(`div[data-plot-id='${event.currentTarget.dataset.plotId}']`);
    tiles.forEach(tile => {
      tile.classList.toggle('selected');
    });
  }

  water(event) {
    document.querySelector(`input[data-water-id=water-${event.currentTarget.dataset.waterId}]`).click()
    const drops = document.querySelectorAll(`img[data-plot-need-water-id=drop-${event.currentTarget.dataset.waterId}]`)
    drops.forEach(drop => {
      drop.remove()
    })
  }
}
