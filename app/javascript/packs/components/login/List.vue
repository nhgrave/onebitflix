<template>
  <div id="login">
    <h1>Login</h1>
    <form @submit.prevent="handleSubmit">
      <input type="text" name="email" v-model="email" placeholder="E-mail" />
      <input type="password" name="password" v-model="password" placeholder="Password" />
      <button type="submit">Login</button>
    </form>
  </div>
</template>

<script>
import { mapState, mapActions } from 'vuex';

export default {
  data() {
    return {
      email: "",
      password: ""
    }
  },
  computed: {
    ...mapState({
      status: state => state.authentication.status,
      user: state => state.authentication.user
    }),
  },
  methods: {
    ...mapActions([
      'login',
      'logout'
    ]),
    handleSubmit() {
      const { email, password } = this;

      if (email != "" && password != "") {
        this.login({ email, password })
          .then(res => {
            if (this.status.loggedIn) {
              this.$router.push({ name: 'home' });
            } else {
              alert("The e-mail or password is incorrect");
            }
          }, error => {
            alert("The e-mail or password is incorrect");
          });
      } else {
        alert("The e-mail and password must be present");
      }
    }
  },
  created() {
    this.logout();
  }
}
</script>
