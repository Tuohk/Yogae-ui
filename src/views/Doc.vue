<template>
  <div class="layout">
    <top-nav class="nav" />
    <div class="content">
      <aside class="asideContent" v-if="asideVisibile">
        <h4>文档</h4>
        <ol>
          <li>
            <router-link to="/">首页</router-link>
          </li>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
        </ol>
        <h4>组件列表</h4>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch组件</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button组件</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog组件</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs组件</router-link>
          </li>
          <li>
            <a href="" onclick="return false;">未完待续...</a>
          </li>
        </ol>
        <ol>
          <h4>其它</h4>
          <li>
            <a href="" onclick="return false;">更新中...</a>
          </li>
        </ol>
      </aside>
      <main>
        <router-view />
      </main>
    </div>
  </div>
</template>

<script lang="ts">
import { inject, Ref } from "vue";
import TopNav from "../components/TopNav.vue";
export default {
  components: {
    TopNav
  },
  setup() {
    const asideVisibile = inject<Ref<boolean>>("asideVisibile");
    return { asideVisibile };
  }
};
</script>

<style lang="scss" scoped>
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;
  > .nav {
    flex-shrink: 0;
  }
  > .content {
    flex-grow: 1;
    padding-top: 20vmin;
    padding-left: 30vmin;
    > .asideContent {
      z-index: 10;
    }
    @media (max-width: 500px) {
      padding-left: 0%;
      padding-top: 30%;
    }
  }
}
.content {
  display: flex;
  > aside {
    flex-shrink: 0;
  }
  > main {
    flex-grow: 1;
    padding: 16px;
    background: white;
    margin-top: -30px;
  }
}
.asideContent {
  background: #ecf0f1;
}
h4 {
  margin: 10px;
}
aside {
  width: 150px;
  padding: 16px 0; //上下 左右
  position: fixed;
  top: 0;
  left: 0;
  margin-top: 56px;
  height: 100%;
  > h2 {
    padding: 2px 16px;
    margin-bottom: 4px;
  }
  > ol {
    > li {
      > a {
        color: #2c3e50;
        text-decoration: none;
        display: block;
        padding: 10px 16px;
        font-size: 16px;
      }
    }
  }
  @media (max-width: 500px) {
    margin-top: 69px;
  }
}

.router-link-active {
  //高亮路由
  background-color: white;
  border-right: 3px solid #2c3e50;
}
</style>
