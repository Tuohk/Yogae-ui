<template>
  <h1>Hi</h1>
  <hr>
  <Router-link to="/xxx">Frank1</Router-link>
  |
  <Router-link to="/">Frank2</Router-link>
  <hr>
  <router-view></router-view>
</template>

<script>


export default {
  name: 'App',
}
</script>
