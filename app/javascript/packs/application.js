require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import { initUpdateNavbarOnScroll } from '../components/navbar';

document.addEventListener('scroll', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
});

import "bootstrap";