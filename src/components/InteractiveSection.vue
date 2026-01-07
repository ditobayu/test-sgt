<template>
  <section class="section2">
    <div class="progress-wrapper-section2">
      <div class="progress-bar-section2"></div>
    </div>
    <div class="teks">
      <div class="pagination2">1-3</div>
      <div class="title2">plan</div>
      <a href="#" class="learn-more">learn more</a>
    </div>
    <div class="images2">
      <img 
        id="section2-image-plan"
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
        class="sectionimg"
      />
      <img 
        id="section2-image-design"
        src="../assets/images/imgi_20_638e4092e9575c0f9629ae01_walls-p-1600.jpg"
        srcset="
          ../assets/images/imgi_11_638e4092e9575c0f9629ae01_walls-p-500.jpg 500w,
          ../assets/images/imgi_18_638e4092e9575c0f9629ae01_walls-p-800.jpg 800w,
          ../assets/images/imgi_19_638e4092e9575c0f9629ae01_walls-p-1080.jpg 1080w,
          ../assets/images/imgi_20_638e4092e9575c0f9629ae01_walls-p-1600.jpg 1600w
        "
        sizes="(max-width: 768px) 100vw, (max-width: 1200px) 80vw, 1600px"
        alt="Design"
        class="sectionimg"
      />
      <img 
        id="section2-image-build"
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
        class="sectionimg"
      />
    </div>
  </section>
</template>

<script>
import { gsap } from 'gsap';

const ANIMATION_CONFIG = {
  TOTAL_SLIDES: 3
};

const SECTION2_IMAGE_IDS = {
  PLAN: 'section2-image-plan',
  DESIGN: 'section2-image-design',
  BUILD: 'section2-image-build'
};

const SLIDE_TITLES = ['plan', 'design', 'build'];

export default {
  name: 'InteractiveSection',

  data() {
    return {
      currentSlideIndex: 0
    };
  },

  methods: {
    /**
     * Initializes section 2 animation with ScrollTrigger
     */
    initAnimation() {
      const elements = this.getSection2Elements();
      const timeline = this.createSection2Timeline(elements);
      this.setupSection2Images(timeline);
    },

    getSection2Elements() {
      return {
        pagination: document.querySelector('.pagination2'),
        title: document.querySelector('.title2')
      };
    },

    createSection2Timeline(elements) {
      return gsap.timeline({
        scrollTrigger: {
          trigger: '.section2',
          start: 'top top',
          end: '+=200%',
          scrub: true,
          pin: true,
          onUpdate: (self) => this.handleSection2Update(self, elements)
        }
      });
    },

    handleSection2Update(scrollTrigger, elements) {
      this.updateSection2ProgressBar(scrollTrigger.progress);
      
      const index = this.calculateCurrentIndex(scrollTrigger.progress);
      
      if (index !== this.currentSlideIndex) {
        this.currentSlideIndex = index;
        this.updateSection2UI(index, elements);
      }
    },

    updateSection2ProgressBar(progress) {
      const progressBar = document.querySelector('.progress-bar-section2');
      gsap.to(progressBar, {
        scaleX: progress,
        ease: 'none'
      });
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

    updateSection2UI(index, elements) {
      elements.pagination.textContent = `${index + 1}-${ANIMATION_CONFIG.TOTAL_SLIDES}`;
      elements.title.textContent = SLIDE_TITLES[index];
    },

    /**
     * Sets up animation timeline for section 2 images
     * @param {Object} timeline - GSAP timeline instance
     */
    setupSection2Images(timeline) {
      const animationDuration = 0.33;
      
      timeline
        .to(`#${SECTION2_IMAGE_IDS.PLAN}`, { scale: 1, duration: animationDuration })
        .to(`#${SECTION2_IMAGE_IDS.PLAN}`, { duration: animationDuration })
        .to(`#${SECTION2_IMAGE_IDS.DESIGN}`, { scale: 1, duration: animationDuration }, '<')
        .to(`#${SECTION2_IMAGE_IDS.DESIGN}`, { duration: animationDuration })
        .to(`#${SECTION2_IMAGE_IDS.BUILD}`, { scale: 1, duration: animationDuration }, '<');
    }
  }
};
</script>

<style lang="scss" scoped>
.section2 {
  height: 100vh;
  width: 100%;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.progress-wrapper-section2 {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 5px;
  background: transparent;
  z-index: 10;
  overflow: hidden;
}

.progress-bar-section2 {
  width: 100%;
  height: 100%;
  background: #c6fb50;
  transform-origin: left;
  transform: scaleX(0);
}

.teks {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  z-index: 10;
}

.pagination2 {
  color: #c6fb50;
  font-size: 1.13em;
  font-weight: 400;
  letter-spacing: 0em;
}

.title2 {
  color: #c6fb50;
  padding-top: 0.05em;
  padding-bottom: 0.22em;
  font-family: 'Recife Display', sans-serif;
  font-size: 11.38em;
  line-height: 0.8;
  font-weight: 400;
  letter-spacing: -0.05em;
}

.learn-more {
  text-decoration: none;
  padding: 0.1em 1.7em;
  border-style: solid;
  border-width: 1.5px;
  border-color: #c6fb50;
  border-radius: 100vw;
  background-color: transparent;
  color: #c6fb50;
  font-size: 1.13em;
}

.images2 {
  width: 100%;
  height: 100%;
  position: absolute;
}

.sectionimg {
  width: 100%;
  height: 100%;
  object-fit: cover;
  position: absolute;
  top: 0;
  left: 0;
  scale: 0;
  transition: opacity 0.5s ease;
}
</style>
