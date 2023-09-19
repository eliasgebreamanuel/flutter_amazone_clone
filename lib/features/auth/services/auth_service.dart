import 'package:flutter_amazone_clone/models/user.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:http/http.dart' as http;
import 'package:amazon_clone_tutorial/constants/utils.dart';

class AuthService {
  // sign up user
  void signupUser(
      {
      required BuildContext context,
      required String email,
      required String password,
      required String name}) async {
    try {
      User user = User(
        id: '',
        name: name,
        password: password,
        address: '',
        type: '',
        token: ''
      );

      http.Response res = await http.post(Uri.parse('$uri/api/signup'), body: user.toJson(),
      headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8'
      });


      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
          context, 'Acco unt created! Login with teh same credentials'
          );
        }
      );

    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
