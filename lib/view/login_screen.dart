import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/login_controller.dart';
import 'package:mountain_kidz_app/provider/message_provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Log Into Dashboard',
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 100,
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

            TextButton(
                onPressed: () => Get.offNamed('/register'),
                child: Text(
                  'Forgot Password ?',
                  style: Theme.of(context).primaryTextTheme.labelMedium,
                )),

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
                  // final Map<String, String> data = {
                  //   "username": usernameController.text,
                  //   "password": passwordController.text
                  // };
                  // var response = await loginController.handleLogin(data);
                  // if (response == 'Logged in successful') {
                  if (usernameController.text == "suniltamang") {
                    MessageProvider.successMessage(
                        'Success', 'Logged in successful');
                    Get.offNamed('/onBoardingScreen');
                  } else {
                    MessageProvider.successMessage(
                        'Success', 'Logged in successful');
                    Get.offNamed('/adminDashboard');
                  }

                  // } else if (response == 'User doesnot exists') {
                  //   MessageProvider.errorMessage('Error', 'User doesnot exist');
                  // } else {
                  //   MessageProvider.errorMessage(
                  //       'Error', 'Internal Server Error');
                  // }
                }
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

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: Theme.of(context).primaryTextTheme.labelLarge,
                ),
                TextButton(
                  onPressed: () => Get.offNamed('/register'),
                  child: const Text(
                    'Register',
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
