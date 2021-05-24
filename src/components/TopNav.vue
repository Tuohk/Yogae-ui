<template>
  <div class="topnav">
    <svg class="icon" aria-hidden="true" @click="toggleVisible">
      <use xlink:href="#icon-fenlei1"></use>
    </svg>
    <div class="logo">
      <img src="../assets/logo.png" alt="">
    </div>
    
    <ul class="menu">
      <router-link to="/doc/intro">文档</router-link>
      <a href="https://tuohk.github.io/">
        <li>博客</li>
      </a>
    </ul>
  </div>
</template>

<script lang="ts">
import { inject, Ref } from "vue";
export default {
  setup() {
    const asideVisibile = inject<Ref<boolean>>("asideVisibile");
    console.log(asideVisibile.value);
    const toggleVisible = () => {
      asideVisibile.value = !asideVisibile.value;
    };
    return { toggleVisible };
  }
};
</script>

<style lang="scss" scoped>
.topnav {
  display: flex;
  position: fixed;
  padding: 16px;
  width: 100%;
  z-index: 20;
  justify-content: center;
  align-items: center;
  // background-color: red;
  box-shadow: 0 0 5px 1px #7f8c8d;
  .logo {
    display: none;
    max-width: 6em;
  }
  .icon {
    width: 3vmin;
    height: 3vmin;
  }
  .menu {
    right: 0;
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    margin: auto;
    margin-right: 10px;
    li {
      color: black;
      margin: 0 1em;
    }
    a {
      font-weight: bold;
      color: black;
      text-decoration: none;
      margin-left: 30px;
      
      &:active {
        color: black;
      }
    }
  }
  @media (max-width: 500px) {
    .menu {
      display: none;
    }
    .icon {
      width: 20px;
      height: 20px;
    }
    .logo {
      margin: 0px auto;
      display: inline-block;
      img {
        width: 30px;
        height: 30px;
      }
    }
  }
}

</style>
