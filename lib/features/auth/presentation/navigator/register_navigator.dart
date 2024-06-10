import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/view/register_view.dart';


//route
class RegisterViewNavigator{}

//mixin
// A mixin is a way to reuse a class’s code in multiple class hierarchies.
mixin RegisterViewRoute {
  openRegisterView(){
    NavigateRoute.pushRoute(const RegisterView());
  }
}