<template>
<div class="a"> 
  <div class="topNavAndBanner">
    <top-nav />
    <div class="banner">
      <h1>Yogae UI</h1>
      <h2>一个厉害的UI框架</h2>
      <div class="actions">
        <a href="https://github.com/" class="button">
        GitHub
      </a>
      <router-link to="/doc" class="button">
         開始
      </router-link>
      </div>
    </div>
  </div>
  <div class="features">
       <ul>
      <li>
        <svg>
          <use xlink:href="#icon-vue"></use>
        </svg>
        <h3>基于 Vue 3</h3>
        <p>使用了 Vue 3 Composition API</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-typescript"></use>
        </svg>
        <h3>基于 TypeScript </h3>
        <p>源代码采用 TypeScript</p>
      </li>
      <li>
        <svg>
          <use xlink:href="#icon-dengpao5hao"></use>
        </svg>
        <h3>代码易读</h3>
        <p>每个组件的源代码都极其简洁</p>
      </li>
    </ul>
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
$border-radius: 4px;
$color: #000000;


.topNavAndBanner {
  background: linear-gradient(311deg, rgba(243,233,218,1) 0%, rgba(236,221,198,1) 13%, rgba(220,191,148,1) 59%, rgba(211,175,120,1) 100%);
  clip-path: ellipse(80% 80% at 50% 5%);
  
}

.features {
   margin: 64px auto;
    width: 400px;
  @media (min-width: 800px) {
    width: 800px;
    
  }
  @media (min-width: 1200px) {
    width: 1200px;
  }
  >ul {
    display: flex;
    flex-wrap: wrap;
    >li {
      width: 400px;
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      >svg {
        grid-area: icon;
        width: 30px;
        height: 30px;
      }
      >h3 {
        grid-area: title;
        font-size: 28px;
      }
      >p {
        grid-area: text
      }
    }
  }
}

.banner {
  color: $color;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  >.actions {
    padding: 8px 0;
    a {
      margin: 0 8px;
      background: $color;
      color: white;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;
      text-decoration: none;
      
      &:hover {
        text-decoration: none;
        box-shadow: 0px 0px 5px 1px white;
      }
    }
  }
}
</style>

