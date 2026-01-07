<template>
  <section class="slider">
    <div class="detail">
      <div class="subtitle1">The sitemap of the experience</div>
      <div class="subtitle2">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea</div>
    </div>
    <div class="top-bar">
      <div class="slider-info">
        <div class="info-item active">
          <span>plan</span>
          <div class="progress-bar-horizontal"></div>
        </div>
        <div class="info-item">
          <span>design</span>
          <div class="progress-bar-horizontal"></div>
        </div>
        <div class="info-item">
          <span>build</span>
          <div class="progress-bar-horizontal"></div>
        </div>
      </div>
      <div class="pagination">1/3</div>
    </div>
    <div class="progress-wrapper">
      <div class="progress-bar"></div>
    </div>
    <div class="images">
      <div class="img-container">
        <img 
          id="slide-image-plan"
          src="../assets/images/imgi_15_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-1600.jpg"
          srcset="
            ../assets/images/imgi_9_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-500.jpg 500w,
            ../assets/images/imgi_13_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-800.jpg 800w,
            ../assets/images/imgi_14_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-1080.jpg 1080w,
            ../assets/images/imgi_15_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-1600.jpg 1600w,
            ../assets/images/imgi_7_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-2000.jpg 2000w,
            ../assets/images/imgi_16_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-2600.jpg 2600w,
            ../assets/images/imgi_17_638e3f15b3ed3463ebe6038b_pexels-wendy-wei-14397945-p-3200.jpg 3200w
          "
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 80vw, 1600px"
          alt="Plan"
          class="img"
        />
        <img 
          id="slide-icon-plan"
          src="../assets/images/ic_plan.svg" 
          alt="Plan Icon"
          class="img-icon"
        />
      </div>
      <div class="img-container">
        <img 
          id="slide-image-design"
          src="../assets/images/imgi_20_638e4092e9575c0f9629ae01_walls-p-1600.jpg"
          srcset="
            ../assets/images/imgi_11_638e4092e9575c0f9629ae01_walls-p-500.jpg 500w,
            ../assets/images/imgi_18_638e4092e9575c0f9629ae01_walls-p-800.jpg 800w,
            ../assets/images/imgi_19_638e4092e9575c0f9629ae01_walls-p-1080.jpg 1080w,
            ../assets/images/imgi_20_638e4092e9575c0f9629ae01_walls-p-1600.jpg 1600w
          "
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 80vw, 1600px"
          alt="Design"
          class="img"
        />
        <img 
          id="slide-icon-design"
          src="../assets/images/ic_design.svg" 
          alt="Design Icon"
          class="img-icon"
        />
      </div>
      <div class="img-container">
        <img 
          id="slide-image-build"
          src="../assets/images/imgi_23_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-1600.jpg"
          srcset="
            ../assets/images/imgi_12_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-500.jpg 500w,
            ../assets/images/imgi_21_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-800.jpg 800w,
            ../assets/images/imgi_22_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-1080.jpg 1080w,
            ../assets/images/imgi_23_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-1600.jpg 1600w,
            ../assets/images/imgi_8_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-2000.jpg 2000w,
            ../assets/images/imgi_24_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-2600.jpg 2600w,
            ../assets/images/imgi_25_638e45c467fd8f44a5687f97_pexels-cottonbro-studio-5474032-p-3200.jpg 3200w
          "
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 80vw, 1600px"
          alt="Build"
          class="img"
        />
        <img 
          id="slide-icon-build"
          src="../assets/images/ic_code.svg" 
          alt="Build Icon"
          class="img-icon"
        />
      </div>
    </div>
  </section>
</template>

<script>
import { gsap } from 'gsap';

const ANIMATION_CONFIG = {
  SCROLL_END: '+=300%',
  TOTAL_SLIDES: 3,
  IMAGE_SCALE: {
    INITIAL: 1.2,
    FINAL: 1
  },
  DURATION: {
    SCALE: 1,
    FADE: 0.5
  }
};

const SLIDE_IMAGE_IDS = {
  PLAN: 'slide-image-plan',
  DESIGN: 'slide-image-design',
  BUILD: 'slide-image-build'
};

const SLIDE_ICON_IDS = {
  PLAN: 'slide-icon-plan',
  DESIGN: 'slide-icon-design',
  BUILD: 'slide-icon-build'
};

const SLIDE_DETAILS = [
  {
    title: 'The sitemap of the experience',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea'
  },
  {
    title: 'Time to paint the room walls',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'
  },
  {
    title: 'Magic happens to build it out',
    description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et.'
  }
];

export default {
  name: 'SliderSection',

  data() {
    return {
      currentSlideIndex: 0
    };
  },

  methods: {
    /**
     * Initializes slider animation with ScrollTrigger
     */
    initAnimation() {
      const elements = this.getSliderElements();
      const timeline = this.createSliderTimeline(elements);
      this.setupSliderImages(timeline);
    },

    getSliderElements() {
      return {
        progressBar: document.querySelector('.progress-bar'),
        infoItems: document.querySelectorAll('.info-item'),
        pagination: document.querySelector('.pagination'),
        subtitle1: document.querySelector('.subtitle1'),
        subtitle2: document.querySelector('.subtitle2')
      };
    },

    createSliderTimeline(elements) {
      return gsap.timeline({
        scrollTrigger: {
          trigger: '.slider',
          start: 'top top',
          end: ANIMATION_CONFIG.SCROLL_END,
          scrub: true,
          pin: true,
          onUpdate: (self) => this.handleSliderUpdate(self, elements)
        }
      });
    },

    handleSliderUpdate(scrollTrigger, elements) {
      this.updateProgressBar(scrollTrigger.progress, elements.progressBar);
      this.updateIndividualProgressBars(scrollTrigger.progress);
      
      const index = this.calculateCurrentIndex(scrollTrigger.progress);
      
      if (index !== this.currentSlideIndex) {
        this.currentSlideIndex = index;
        this.updateSliderUI(index, elements);
      }
    },

    updateProgressBar(progress, progressBar) {
      gsap.to(progressBar, {
        scaleY: progress,
        ease: 'none'
      });
    },

    /**
     * Updates individual progress bars for each slide based on scroll progress
     * @param {number} progress - Overall scroll progress (0-1)
     */
    updateIndividualProgressBars(progress) {
      const progressBars = document.querySelectorAll('.progress-bar-horizontal');
      const slideProgress = progress * ANIMATION_CONFIG.TOTAL_SLIDES;
      
      progressBars.forEach((progressBar, slideIndex) => {
        const { barProgress, barOpacity } = this.calculateProgressBarState(slideProgress, slideIndex);
        
        gsap.to(progressBar, {
          scaleX: barProgress,
          opacity: barOpacity,
          ease: 'none',
          duration: 0.1
        });
      });
    },

    /**
     * Calculates the progress bar state for a specific slide
     * @param {number} slideProgress - Current slide progress
     * @param {number} slideIndex - Index of the slide
     * @returns {{barProgress: number, barOpacity: number}}
     */
    calculateProgressBarState(slideProgress, slideIndex) {
      let barProgress = 0;
      let barOpacity = 1;
      
      if (slideProgress > slideIndex + 1) {
        // Slide completed: full progress but transparent
        barProgress = 1;
        barOpacity = 0;
      } else if (slideProgress > slideIndex) {
        // Slide in progress: show current progress
        barProgress = slideProgress - slideIndex;
        barOpacity = 1;
      } else {
        // Slide not started: empty progress bar
        barProgress = 0;
        barOpacity = 1;
      }
      
      return { barProgress, barOpacity };
    },

    /**
     * Calculates the current slide index based on scroll progress
     * @param {number} progress - Scroll progress (0-1)
     * @returns {number} Current slide index (0-2)
     */
    calculateCurrentIndex(progress) {
      return Math.min(
        ANIMATION_CONFIG.TOTAL_SLIDES - 1,
        Math.floor(progress * ANIMATION_CONFIG.TOTAL_SLIDES)
      );
    },

    updateSliderUI(index, elements) {
      this.updateActiveInfo(index, elements.infoItems);
      this.updateDetails(index, elements.subtitle1, elements.subtitle2);
      this.updatePagination(index, elements.pagination);
    },

    updateActiveInfo(index, infoItems) {
      infoItems.forEach((item, i) => {
        item.classList.toggle('active', i === index);
      });
    },

    updateDetails(index, subtitle1, subtitle2) {
      subtitle1.textContent = SLIDE_DETAILS[index].title;
      subtitle2.textContent = SLIDE_DETAILS[index].description;
    },

    updatePagination(index, paginationElement) {
      paginationElement.textContent = `${index + 1}/${ANIMATION_CONFIG.TOTAL_SLIDES}`;
    },

    /**
     * Sets up initial state for slider images and icons
     * @param {Object} timeline - GSAP timeline instance
     */
    setupSliderImages(timeline) {
      const imageIds = Object.values(SLIDE_IMAGE_IDS).map(id => `#${id}`);
      const iconIds = Object.values(SLIDE_ICON_IDS).map(id => `#${id}`);

      // Set initial state for all images
      gsap.set(imageIds, {
        position: 'absolute',
        opacity: 0,
        scale: ANIMATION_CONFIG.IMAGE_SCALE.INITIAL
      });

      // First image visible by default
      gsap.set(`#${SLIDE_IMAGE_IDS.PLAN}`, { opacity: 1, zIndex: 2 });

      // Set initial state for all icons
      gsap.set(iconIds, {
        opacity: 0,
        scale: 0.8,
        transformOrigin: 'center'
      });

      // First icon visible by default
      gsap.set(`#${SLIDE_ICON_IDS.PLAN}`, { opacity: 1 });

      this.animateImageTransitions(timeline);
    },

    /**
     * Animates transitions between slider images and icons
     * @param {Object} timeline - GSAP timeline instance
     */
    animateImageTransitions(timeline) {
      const { SCALE, FADE } = ANIMATION_CONFIG.DURATION;
      const { INITIAL, FINAL } = ANIMATION_CONFIG.IMAGE_SCALE;

      timeline
        // Plan slide animation
        .to(`#${SLIDE_IMAGE_IDS.PLAN}`, { scale: FINAL, duration: SCALE })
        .to(`#${SLIDE_ICON_IDS.PLAN}`, { scale: 1, duration: SCALE }, '<')
        .to(`#${SLIDE_IMAGE_IDS.PLAN}`, { opacity: 0, duration: FADE })
        .to(`#${SLIDE_ICON_IDS.PLAN}`, { opacity: 0, duration: FADE }, '<')
        .to(`#${SLIDE_IMAGE_IDS.DESIGN}`, { opacity: 1, scale: INITIAL, zIndex: 2, duration: FADE }, '<')
        .to(`#${SLIDE_ICON_IDS.DESIGN}`, { opacity: 1, scale: 0.8, duration: 0 }, '<')

        // Design slide animation
        .to(`#${SLIDE_IMAGE_IDS.DESIGN}`, { scale: FINAL, duration: SCALE })
        .to(`#${SLIDE_ICON_IDS.DESIGN}`, { scale: 1, duration: SCALE }, '<')
        .to(`#${SLIDE_IMAGE_IDS.DESIGN}`, { opacity: 0, duration: FADE })
        .to(`#${SLIDE_ICON_IDS.DESIGN}`, { opacity: 0, duration: FADE }, '<')
        .to(`#${SLIDE_IMAGE_IDS.BUILD}`, { opacity: 1, scale: INITIAL, zIndex: 2, duration: FADE }, '<')
        .to(`#${SLIDE_ICON_IDS.BUILD}`, { opacity: 1, scale: 0.8, duration: 0 }, '<')

        // Build slide animation
        .to(`#${SLIDE_IMAGE_IDS.BUILD}`, { scale: FINAL, duration: SCALE })
        .to(`#${SLIDE_ICON_IDS.BUILD}`, { scale: 1, duration: SCALE }, '<');
    }
  }
};
</script>

<style lang="scss" scoped>
$primary-color: #c6fb50;
$font-primary: 'Recife Display', sans-serif;
$font-secondary: 'Aeonik', sans-serif;
$spacing-base: 40px;
$progress-bar-width: 5px;
$border-radius-large: 4em;
$z-index-overlay: 10;
$z-index-icon: 5;

.slider {
  height: 100vh;
  position: relative;

  .images {
    width: 100%;
    height: 100%;
    position: relative;
  }

  .img-container {
    position: absolute;
    top: 0;
    left: 50%;
    width: 50%;
    height: 100%;
    overflow: hidden;
    border-top-left-radius: $border-radius-large;
    border-bottom-left-radius: $border-radius-large;
  }

  .img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    opacity: 0;
    transform-origin: center;
  }

  .img-icon {
    width: 8em;
    height: 8em;
    object-fit: contain;
    position: absolute;
    top: 50%;
    left: 50%;
    z-index: $z-index-icon;
    transform: translate(-50%, -50%);
  }

  .progress-wrapper {
    position: absolute;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
    width: $progress-bar-width;
    height: 100vh;
    background: transparent;
    z-index: $z-index-overlay;
    overflow: hidden;

    .progress-bar {
      width: 100%;
      height: 100%;
      background: $primary-color;
      transform-origin: top;
      transform: scaleY(0);
    }
  }

  .top-bar {
    position: absolute;
    top: $spacing-base;
    left: $spacing-base;
    right: $spacing-base;
    z-index: $z-index-overlay;
    display: flex;
    justify-content: space-between;
    align-items: center;

    .slider-info {
      display: flex;
      gap: 16px;
    }

    .pagination {
      font-size: 2.25em;
      font-family: $font-primary;
      color: $primary-color;
      font-weight: 400;
      line-height: 1;
      letter-spacing: 2px;
    }
  }

  .info-item {
    font-size: 2.94em;
    line-height: 0.9;
    letter-spacing: 0.02;
    color: rgba(255, 255, 255, 0.4);
    transition: color 0.3s ease;
    position: relative;
    padding-bottom: 8px;

    &.active {
      color: $primary-color;
    }

    .progress-bar-horizontal {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 3px;
      background: $primary-color;
      transform-origin: left;
      transform: scaleX(0);
    }
  }

  .detail {
    position: absolute;
    width: 25%;
    bottom: $spacing-base;
    left: $spacing-base;
    z-index: $z-index-overlay;
    display: flex;
    flex-direction: column;

    .subtitle1 {
      font-family: $font-primary;
      font-size: 4em;
      color: $primary-color;
      line-height: 0.8311688311688312;
      margin: 0 0 10px 0;
      font-weight: 400;
      letter-spacing: -0.02em;
    }

    .subtitle2 {
      font-family: $font-secondary;
      font-size: 1em;
      color: $primary-color;
    }
  }
}
</style>
