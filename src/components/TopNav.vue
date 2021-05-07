<template>
  
  <div class="topnav">
      <div class="logo">LOGO</div>
      <ul class="menu">
        
          <li>菜單1</li>
          <li>菜單2</li>
      
      </ul>
    </div>
</template>

<style lang="scss" scoped>
  .topnar{border: 1px solid red;}
  
.topnav {
  background: pink;
  display: flex;
  padding: 16px;
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
}
</style> 