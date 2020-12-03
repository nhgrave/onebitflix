import { AuthenticationService } from '../../services/authenticationService';

const defaultState = {
  status: {},
  userSesion: {}
};

const mutations = {
  LOGIN_SUCCESS (state, userSesion) {
    localStorage.setItem('userToken', userSesion.token);

    state.status = { loggedIn: true }
    state.userSesion = userSesion;
  },
  LOGOUT (state) {
    localStorage.removeItem('userToken');

    state.status = {}
    state.userSesion = {};
  }
};

const actions = {
  login(context, { email, password }) {
    return AuthenticationService.login({ email, password })
      .then(res => {
        if (res.data.token) {
          context.commit('LOGIN_SUCCESS', res.data);
        }
        return res;
      }, error => {
        console.error(error);
        throw error;
      });
  },

  logout(context) {
    context.commit('LOGOUT');
  }
};

export default {
  state: defaultState,
  mutations,
  actions
};
