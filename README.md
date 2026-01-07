# TR Scroll Toggle - Vue.js Recreation

A recreation of the [TR Scroll Toggle website](https://tr-scroll-toggle.webflow.io/) built with Vue.js 2, GSAP, and Lenis smooth scroll.

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
│   ├── fonts/           # Custom fonts
│   └── styles/          # Global SASS styles
│       └── global.scss
├── components/
│   ├── Header.vue       # Navigation header
│   ├── Section1.vue     # "The sitemap" section
│   ├── Section2.vue     # "Paint walls" section
│   ├── Section3.vue     # "Build it out" section
│   └── Footer.vue       # Footer section
├── pages/
│   └── index.vue        # Main page with animations
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

### Header Component

Fixed navigation header with:
- Logo
- Navigation links (Plan, Design, Build)
- CTA button
- Scroll-based background change
- ScrollToPlugin integration

### Section Components

Each section includes:
- Responsive grid layout
- Fade-in content animations
- Image hover effects
- Section labels

### Footer Component

Simple thank you section with fade-in animation.

## 🔧 Configuration

### Vue Config

The project uses default Vue CLI configuration with SASS support.

### SASS Setup

Global styles are located in `src/assets/styles/global.scss` and imported in the main page component.

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

## 🚀 Deployment

This project can be deployed to:

- **Vercel** - Recommended for Vue.js apps
- **Netlify** - Easy static hosting
- **GitHub Pages** - Free hosting option

### Deploy to Vercel

```bash
npm install -g vercel
vercel
```

## 👨‍💻 Development Notes

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
