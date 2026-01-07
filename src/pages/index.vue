<template>
  <div id="app" class="app">
    <main class="main-content">
      <slider-section ref="sliderSection" />
      <interactive-section ref="interactiveSection" />
      <thank-you-section />
    </main>
  </div>
</template>

<script>
import { gsap } from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import Lenis from '@studio-freight/lenis';
import SliderSection from '../components/SliderSection.vue';
import InteractiveSection from '../components/InteractiveSection.vue';
import ThankYouSection from '../components/ThankYouSection.vue';

gsap.registerPlugin(ScrollTrigger);

const ANIMATION_CONFIG = {
  SCROLL_DURATION: 1.2
};

export default {
  name: 'IndexPage',

  components: {
    SliderSection,
    InteractiveSection,
    ThankYouSection
  },
  
  data() {
    return {
      lenis: null
    };
  },

  mounted() {
    this.initSmoothScroll();
    this.initAllAnimations();
  },

  beforeDestroy() {
    this.cleanup();
  },

  methods: {
    /**
     * Initializes smooth scrolling with Lenis
     */
    initSmoothScroll() {
      this.lenis = new Lenis({
        duration: ANIMATION_CONFIG.SCROLL_DURATION,
        easing: (t) => Math.min(1, 1.001 - Math.pow(2, -10 * t)),
        smooth: true
      });

      this.lenis.on('scroll', ScrollTrigger.update);

      gsap.ticker.add((time) => {
        this.lenis.raf(time * 1000);
      });

      gsap.ticker.lagSmoothing(0);
    },

    /**
     * Initializes animations for all child components
     */
    initAllAnimations() {
      this.$refs.sliderSection.initAnimation();
      this.$refs.interactiveSection.initAnimation();
    },

    /**
     * Cleans up animations and scroll triggers on component destroy
     */
    cleanup() {
      if (this.lenis) {
        this.lenis.destroy();
      }
      ScrollTrigger.getAll().forEach(scrollTrigger => scrollTrigger.kill());
    }
  }
};
</script>

<style lang="scss">
$font-primary: 'Recife Display';
$font-secondary: 'Aeonik';
$bg-color: #111606;

@font-face {
  font-family: $font-primary;
  src: url('../assets/fonts/Recife Display.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: $font-secondary;
  src: url('../assets/fonts/Aeonik.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
}

body {
  margin: 0;
  background-color: $bg-color;
  font-family: $font-secondary, sans-serif;
}

.app {
  width: 100%;

  .main-content {
    width: 100%;
  }
}
</style>