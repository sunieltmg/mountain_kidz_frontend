import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/register_controller.dart';
import 'package:mountain_kidz_app/provider/message_provider.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegisterController registerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Register New User',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                //username
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    filled: true,
                    // fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "Username",
                    contentPadding: EdgeInsets.fromLTRB(
                      20.0,
                      15.0,
                      20.0,
                      15.0,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //password
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    filled: true,
                    // fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "password",
                    contentPadding: EdgeInsets.fromLTRB(
                      20.0,
                      15.0,
                      20.0,
                      15.0,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).iconTheme.color,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                  ),
                  onPressed: () async {
                    if (usernameController.text == "" ||
                        passwordController.text == "") {
                      MessageProvider.errorMessage(
                          'Error', 'All fields are required');
                    } else {
                      final Map<String, String> data = {
                        "username": usernameController.text,
                        "password": passwordController.text
                      };
                      final response =
                          await registerController.handleRegister(data);
                      if (response == 'success') {
                        MessageProvider.successMessage(
                            'Success', 'User registered successfully');
                      } else if (response == 'user already exists') {
                        MessageProvider.errorMessage(
                            'Error', 'Username already exists');
                      } else {
                        MessageProvider.errorMessage(
                            'Error', 'Internal Server Error');
                      }
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text('Register'),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style:Theme.of(context).primaryTextTheme.labelLarge,
                    ),
                    TextButton(
                      onPressed: () => Get.offNamed('/login'),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
