import { routes as loginRoutes } from './modules/login';
import { routes as homeRoutes } from './modules/home';

let routes = [];
routes = routes.concat(loginRoutes);
routes = routes.concat(homeRoutes);
routes = routes.concat({ path: '*', redirect: '/' }); // If dont find any route redirect to root

export { routes };
