import Vue         from 'vue';
import Vuex        from 'vuex';
import VueRouter   from 'vue-router';
import VueResource from 'vue-resource';
import Vuetify     from 'vuetify';

import 'vuetify/dist/vuetify.min.css';

Vue.use(Vuex);
Vue.use(VueRouter);
Vue.use(VueResource);
Vue.use(Vuetify);

window.Vue = Vue;
