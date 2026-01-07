# TR Scroll Toggle - Vue.js Recreation

A recreation of the [TR Scroll Toggle website](https://tr-scroll-toggle.webflow.io/) built with Vue.js 2, GSAP, and Lenis smooth scroll.

## 🌐 Live Demo

**[https://test-sgt.silomba.id/](https://test-sgt.silomba.id/)**

## 🚀 Technologies Used

- **Vue.js 2** - Progressive JavaScript framework (Options API)
- **GSAP** - Professional-grade animation library
- **ScrollTrigger** - GSAP plugin for scroll-driven animations
- **ScrollToPlugin** - GSAP plugin for smooth scrolling to sections
- **Lenis** - Smooth scroll library for buttery scrolling experience
- **SASS** - CSS preprocessor for maintainable styling

## ✨ Features

- ✅ Fully responsive design (desktop, tablet, mobile)
- ✅ Smooth scroll with Lenis integration
- ✅ GSAP-powered scroll animations
- ✅ Pinned sections with ScrollTrigger
- ✅ Fade-in and slide animations on scroll
- ✅ Navigation with smooth scroll-to functionality
- ✅ Clean component architecture
- ✅ Optimized performance

## 📁 Project Structure

```
src/
├── assets/
│   ├── images/          # Image assets
│   ├── fonts/           # Custom fonts (Recife Display, Aeonik)
│   └── styles/          # Global SASS styles
├── components/
│   ├── SliderSection.vue       # Main slider section with 3 stages (Plan, Design, Build)
│   ├── InteractiveSection.vue  # Interactive section with image transitions
│   └── ThankYouSection.vue     # Thank you section
├── pages/
│   └── index.vue        # Main page with Lenis smooth scroll & GSAP integration
└── App.vue              # Root component
```

## 🛠️ Installation & Setup

### Prerequisites

- Node.js (v14 or higher)
- npm or yarn
- Docker & Docker Compose (optional, for containerized setup)

### Local Development (without Docker)

#### Install Dependencies

```bash
npm install
```

#### Development Server

Run the development server:

```bash
npm run serve
```

The app will be available at `http://localhost:8080`

#### Build for Production

```bash
npm run build
```

#### Lint & Fix Files

```bash
npm run lint
```

### Docker Setup

The project includes Docker configuration for both development and production environments.

#### Development with Docker

Run development server with hot-reload:

```bash
# Start dev server (auto-installs dependencies)
docker-compose -f docker-compose.dev.yml up

# Stop server
docker-compose -f docker-compose.dev.yml down
```

The app will be available at `http://localhost:8080` with:
- ✅ Hot-reload enabled
- ✅ Volume mounting for instant code changes
- ✅ Auto dependency installation

#### Production with Docker

Build and run production version:

```bash
# Build and start production container
docker-compose up -d

# View logs
docker-compose logs -f

# Stop production container
docker-compose down
```

Production build uses:
- Multi-stage Docker build (Node.js build + Nginx serve)
- Optimized static assets
- Nginx configuration for optimal performance

## 🎨 Key Implementation Details

### GSAP Animations

The project uses GSAP with ScrollTrigger for all scroll-based animations:

- **Fade-in animations** - Content fades in with `opacity` transitions
- **Slide animations** - Elements slide from sides using `translateX` and `translateY`
- **Pinned sections** - Sections pin to viewport during scroll for engaging experience
- **Smooth transitions** - All animations use GSAP's `power3.out` easing

### Lenis Smooth Scroll

Lenis provides a native-feeling smooth scroll experience:

```javascript
this.lenis = new Lenis({
  duration: 1.2,
  easing: (t) => Math.min(1, 1.001 - Math.pow(2, -10 * t)),
  direction: 'vertical',
  smooth: true
});
```

### ScrollToPlugin Integration

The navigation header uses GSAP's ScrollToPlugin for smooth anchor scrolling:

```javascript
gsap.to(window, {
  duration: 1.5,
  scrollTo: { y: element, offsetY: 80 },
  ease: 'power3.inOut'
});
```

### Responsive Design

The website is fully responsive using SASS media queries:

- Desktop: 1024px+
- Tablet: 768px - 1023px
- Mobile: < 768px

## 🎯 Bonus Features Implemented

- ✅ **ScrollToPlugin** - Smooth navigation scrolling with checkpoint handling
- ✅ **Lenis** - Butter-smooth scroll sensation
- ✅ **Pinned Sections** - Sections pin during scroll like the original
- ✅ **Performance Optimization** - Proper cleanup of animations and scroll listeners

## 📝 Component Documentation

### SliderSection Component

Main slider with three stages:
- Plan, Design, Build sections
- Horizontal progress bars
- Image transitions with GSAP animations
- ScrollTrigger pinning
- Responsive grid layout

### InteractiveSection Component

Interactive section featuring:
- Image sequence transitions
- Progress bar tracking
- Smooth scroll-based animations
- Multiple image stages
- Vertical progress indicator

### ThankYouSection Component

Simple closing section with centered "Thank you" text and brand styling.

## 🔧 Configuration

### Vue Config

The project uses default Vue CLI configuration with SASS support.

### SASS Setup

Styles are scoped within each component using SASS/SCSS with `<style lang="scss" scoped>`.

## 🌐 Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## 📱 Responsive Breakpoints

```scss
// Desktop
@media (max-width: 1024px)

// Tablet
@media (max-width: 768px)

// Mobile
@media (max-width: 576px)
```

## ‍💻 Development Notes

- All components use Vue 2 Options API as required
- GSAP animations are properly cleaned up in `beforeDestroy` hooks
- Lenis is integrated with GSAP ticker for synchronized animations
- Images are loaded from CDN for optimal performance
- Code is well-commented for clarity

## 📄 License

This is a technical test project created for Summit Global Teknologi.

## 🙏 Acknowledgments

- Original design: [TR Scroll Toggle](https://tr-scroll-toggle.webflow.io/)
- GSAP by GreenSock
- Lenis by Studio Freight
- Vue.js team

---

**Created as part of Junior Frontend Developer Technical Test**
