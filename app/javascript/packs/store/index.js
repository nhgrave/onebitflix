import Vuex from "vuex";

import authentication from './modules/authentication';

export default new Vuex.Store({
  modules: {
    authentication
  }
});
