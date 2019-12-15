
require('./bootstrap');

window.Vue = require('vue');
//Editor supoort
import 'v-markdown-editor/dist/index.css';
import Editor from 'v-markdown-editor'
Vue.use(Editor);
//vuex 
import Vuex from 'vuex'
Vue.use(Vuex)
import storeData from './store/index'
const store = new Vuex.Store(
	storeData
)
//Import moment js
import {filter} from './filter'
//import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

// a679abc7d6fb3f9fb042d0046a6b8790 const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));
import {routes} from './routes';

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('admin-main', require('./components/admin/AdminMaster.vue').default);
Vue.component('home-main', require('./components/public/PublicMaster.vue').default);
//V-form
import { Form, HasError, AlertError } from 'vform'
window.Form=Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

// Sweet alert
import Swal from 'sweetalert2'
window.Swal=Swal;
const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000
})
window.Toast=Toast

const router = new VueRouter({
   routes: routes,
  mode:"hash"
})


const app = new Vue({
    el: '#app',
    router,
    store
});
