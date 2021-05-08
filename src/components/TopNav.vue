<template>
  
  <div class="topnav">
      <img class="" src="../assets/logo.png" alt="" @click="toggleVisible">
      <div class="logo" >
        LOGO
      </div>
      <ul class="menu">
          <li>菜單1</li>
          <li>菜單2</li>
      </ul>
    </div>
</template>

<script  lang="ts">
import { inject, Ref } from 'vue'
export default {
  setup(){
    const asideVisibile = inject<Ref<boolean>>('asideVisibile')
    console.log(asideVisibile.value);
    const toggleVisible = () => {
        asideVisibile.value = !asideVisibile.value
        console.log(asideVisibile.value)
    }
      return {toggleVisible}


  }
}
</script>

<style lang="scss" scoped>
  .topnar{border: 1px solid red;}
  
.topnav {
background: rgb(248,242,233);
display: flex;
  padding: 16px;
  justify-content: center;
  align-items: center;
  > .logo {
    max-width: 6em;
    margin-right: auto;
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }
  @media (max-width : 500px) {
  > .menu {
    display: none;
  }
  > .logo {
    margin: 0 auto;
  }
  img{
    display: inline-block;
  }
}
}
img {
  display: none;
  width: 20px;
  height: 20px;
}
</style> 