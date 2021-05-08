<template>
  <div>
    <top-nav />
    <div class="banner">
      <h1>Yogae UI</h1>
      <h2>一个厉害的UI框架</h2>
      <div class="actions">
        <a href="https://github.com/">
        GitHub
      </a>
      <router-link to="/doc">
         開始
      </router-link>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import { inject, Ref } from 'vue';
import TopNav from '../components/TopNav.vue'
export default {
  components: {
    TopNav  
  },
  setup(){
    const asideVisibile = inject<Ref<boolean>>('asideVisibile')
    console.log(asideVisibile.value);
  }
}
</script>
<style lang="scss" scoped>
.banner {
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
    clip-path: ellipse(75% 80% at 50% 4%);
background: rgb(248,242,233);
  > .actions{
    padding: 8px 0;
    a {
      margin:0 8px;
      background: #000000;
      color: #cccccc;
      display: inline-block;
      $h: 28px;
      height: $h;
      line-height: $h;
      border-radius: $h/2;
      padding: 0 8px;
    }
  }
}
</style>

