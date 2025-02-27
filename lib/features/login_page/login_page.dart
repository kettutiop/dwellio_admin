import 'package:dwellio_admin/common_widget/custom_button.dart';
import 'package:dwellio_admin/common_widget/custom_text_formfield.dart';
import 'package:dwellio_admin/util/value_validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://learn.g2.com/hs-fs/hubfs/iStock-927978752.jpg?width=2376&name=iStock-927978752.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                    labelText: 'Email',
                    controller: _emailController,
                    validator: emailValidator),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                    labelText: 'Password',
                    controller: _passwordController,
                    validator: notEmptyValidator),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  inverse: true,
                  onPressed: () {},
                  label: 'Login',
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
