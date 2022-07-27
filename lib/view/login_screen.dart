import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Login Into Dashboard',
            style: TextStyle(
              height: 1.5,
              fontSize: 16,
              letterSpacing: 0.5,
              wordSpacing: 0.5,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                const SizedBox(
                  height: 50,
                ),
                //username
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: const Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "Username",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    contentPadding: const EdgeInsets.fromLTRB(
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
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    prefixIcon: const Icon(Icons.lock),
                    border: InputBorder.none,
                    hintText: "password",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    contentPadding: const EdgeInsets.fromLTRB(
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
                    primary: Colors.green,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(
                      double.infinity,
                      50,
                    ),
                  ),
                  onPressed: () {
                    if (usernameController.text == "" ||
                        passwordController.text == "") {
                      Get.snackbar(
                        "Error",
                        "All fields are required",
                        icon: const Icon(Icons.no_meals, color: Colors.white),
                        duration: const Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        colorText: Colors.white,
                        animationDuration: const Duration(seconds: 1),
                        dismissDirection: DismissDirection.horizontal,
                        snackPosition: SnackPosition.TOP,
                      );
                    } else {
                      final Map<String, String> data = {
                        "username": usernameController.text,
                        "password": passwordController.text
                      };
                      final response = loginController.handleLogin(data);
                    }

                    // Get.offNamed('/userDashboard');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text('Login'),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
