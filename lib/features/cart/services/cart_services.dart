import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/constants/error_handling.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/constants/utils.dart';
import 'package:flutter_amazone_clone/models/product.dart';
import 'package:flutter_amazone_clone/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class CartServices {
  void removeProduct(
      {required BuildContext context,
      required Product product,
      required double rating}) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      http.Response res = await http.delete(
        Uri.parse('$uri/api/remove-from-cart/${product.id}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token
        },
        
      );

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            User user =
                userPRovider.user.copyWith(cart: jsonDecode(res.body)['cart']);
            userProvider.setUserFromModel(user);
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
