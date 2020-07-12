const AuthenticationService = Vue.resource("/api/external/auth", {}, {
  login: { method: 'POST', url: "/api/external/auth/login" }
});

export { AuthenticationService };
