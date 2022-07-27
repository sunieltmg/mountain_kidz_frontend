import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/email_js_controller.dart';

class AddEmail extends StatelessWidget {
  AddEmail({Key? key}) : super(key: key);
  TextEditingController senderNameController = TextEditingController();
  TextEditingController senderEmailController = TextEditingController();
  TextEditingController receiverNameController = TextEditingController();
  TextEditingController receiverEmailController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  EmailJsController emailJsController = Get.find();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.offNamed('/userDashboard'),
          ),
          centerTitle: true,
          title: const Text(
            'ADD EMAIL',
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
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                bottom: 10,
                right: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  // receiver name
                  TextFormField(
                    controller: receiverNameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'name*',
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  // receiver email
                  TextFormField(
                    controller: receiverEmailController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'email*',
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  // subject
                  TextFormField(
                    controller: subjectController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.title),
                      labelText: 'Subject*',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // message
                  TextFormField(
                    controller: messageController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.note),
                      labelText: 'message *',
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () => emailJsController.addEmail(
                          receiverNameController.text,
                          receiverEmailController.text,
                          subjectController.text,
                          messageController.text),
                      child: const Text(
                        'Send Email',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1,
                          wordSpacing: 0.5,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
