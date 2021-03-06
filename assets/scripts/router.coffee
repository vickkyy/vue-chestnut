Vue = require 'Vue'
VueAsyncData = require 'VueAsyncData'
Vue.use VueAsyncData
VueRouter = require 'VueRouter'
Vue.use VueRouter

Vue.config.debug = true
router = new VueRouter()
App = Vue.extend {}
userManage = require './user-manage.coffee'
weather = require './weather.vue'

router.map {
  '/':
    component:
      template: require '../templates/index.html'
  '/userManage':
    component: userManage
  '/weather':
    component: weather
}

router.start(App, 'body')
