import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("sound triggered");

    const sound = new Audio("assets/nature-sounds.mp3");
    sound.play();


  }

  playSound(event) {
    // console.log("event")
    // sound = new Audio("assets/jungle-sound.mp3");
    // sound.loop = false;
    // console.log(sound)

    // sound.play();

    // setTimeout(() => {
    //   this.sound.pause();
    //   this.sound.currentTime = 0;
    // }, 5000);
  }
}
