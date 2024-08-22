
#  My Dotfiles

This is my Hyprland rice

<style>
  /*  */
  
  .sliderbody {
    max-width: 750px;
    max-height: 550px;
    font-family: 'Lato', sans-serif;
  }

  .sliderbody h4{
    text-align: center;
    margin-left: -55px;
  }
  
  
  .carousel {
    position: relative;
    padding-top: 57%;
    filter: drop-shadow(0 0 10px #0003);
    perspective: 100px;
    margin: 0 auto;
    
  }

  li.carousel__slide::marker {
    color: var(--list-marker-color);
    font-size: 15px !important;
}
  
  .carousel__viewport {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: flex;
    overflow-x: scroll;
    counter-reset: item;
    scroll-behavior: smooth;
    scroll-snap-type: x mandatory;
    border-radius: 6px;
  }
  
  .carousel__slide {
    position: relative;
    flex: 0 0 100%;
    width: 100%;
    counter-increment: item;
  }
  
 
  .carousel__snapper section {
    margin: 0 auto;
  }

  .carousel__snapper {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    scroll-snap-align: center;
  }
  
  
  .carousel:hover .carousel__snapper,
  .carousel:focus-within .carousel__snapper {
    animation-name: none;
  }
 
  .carousel::before,
  .carousel::after,
  .carousel__prev,
  .carousel__next {
    position: absolute;
    top: 0;
    margin-top: 37.5%;
    width: 4rem;
    height: 4rem;
    transform: translateY(-50%);
    border-radius: 50%;
    font-size: 0;
    outline: 0;
  }
</style>

<div class="sliderbody">
<section class="carousel" aria-label="Gallery">
  <ol class="carousel__viewport">
    <li id="carousel__slide1"
        tabindex="0"
        class="carousel__slide">
      <div class="carousel__snapper"> 
	      <section class="internal-embed" src="Screenshots/screenshot1.png"></section>
      </div>
        <a href="#carousel__slide4"
           class="carousel__prev">Go to last slide</a>
        <a href="#carousel__slide2"
           class="carousel__next">Go to next slide</a>
    </li>
    <li id="carousel__slide2"
        tabindex="0"
        class="carousel__slide">
      <div class="carousel__snapper">
            <section class="internal-embed" src="Screenshots/screenshot2.png"></section> </div>
      <a href="#carousel__slide1"
         class="carousel__prev">Go to previous slide</a>
      <a href="#carousel__slide3"
         class="carousel__next">Go to next slide</a>
    </li>
    <li id="carousel__slide3"
        tabindex="0"
        class="carousel__slide">
      <div class="carousel__snapper">
            <section class="internal-embed" src="Screeenshots/screenshot3.png"></section></div>
      <a href="#carousel__slide2"
         class="carousel__prev">Go to previous slide</a>
      <a href="#carousel__slide4"
         class="carousel__next">Go to next slide</a>
    </li>
    <li id="carousel__slide4"
        tabindex="0"
        class="carousel__slide">
      <div class="carousel__snapper">
            <section class="internal-embed" src="Screenshots/screenshot4.jpeg"></section></div>
      <a href="#carousel__slide3"
         class="carousel__prev">Go to previous slide</a>
      <a href="#carousel__slide5"
         class="carousel__next">Go to first slide</a>
    </li>
  </ol>
</section>
</div>
