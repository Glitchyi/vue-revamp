<template  >
  <Landing/>
  <Content class="hidden md:block"/>
  <AboutVue />
</template>

<script setup>
import Landing from "./components/Landing.vue";

import AboutVue from './components/About.vue';
import Content from "./components/Content.vue";
import { register } from "swiper/element/bundle";

register();

</script>
<script>
export default {
  components: {
    Landing,
    Content,
  },
  data() {
    return {
      load: false,
    };
  },
  methods: {
    loadContent() {
      this.load=!this.load;
      setTimeout(() => {
        console.log("Scrolling");
      }, 500);
    },
  },
};
</script>

