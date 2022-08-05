import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/changePassword.gif'),
                height: 250,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: oldPasswordController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Old Password',
                      style: TextStyle(fontSize: 14),
                    ),
                    suffixIcon: oldPasswordController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => oldPasswordController.clear(),
                          ),
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required *'),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: newPasswordController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                    border: OutlineInputBorder(),
                    label: Text(
                      'New Password',
                      style: TextStyle(fontSize: 14),
                    ),
                    suffixIcon: newPasswordController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => newPasswordController.clear(),
                          ),
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required *'),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: confirmNewPasswordController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                    border: OutlineInputBorder(),
                    label: Text(
                      'Confirm Password',
                      style: TextStyle(fontSize: 14),
                    ),
                    suffixIcon: confirmNewPasswordController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () =>
                                confirmNewPasswordController.clear(),
                          ),
                  ),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required *'),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Get.isDarkMode
                          ? Colors.purple.shade200
                          : Colors.green,
                      minimumSize: const Size.fromHeight(40)),
                  onPressed: () {},
                  child: Text('Change'),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
