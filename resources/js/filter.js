import moment from 'moment'
import Vue from 'vue'
Vue.filter('timeformat',(arg)=>{
  return moment(arg).format("D-M-YYYY")
});