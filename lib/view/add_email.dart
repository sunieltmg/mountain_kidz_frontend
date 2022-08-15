import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/controller/email_js_controller.dart';
import 'package:mountain_kidz_app/provider/message_provider.dart';

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
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.offNamed('/adminDashboard'),
          ),
          centerTitle: true,
          title: Text(
            'SEND EMAIL',
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
                bottom: 10,
                right: 20,
              ),
              decoration: const BoxDecoration(),
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
                      icon: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Icon(Icons.person),
                      ),
                      labelText: 'name*',
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // receiver email
                  TextFormField(
                    controller: receiverEmailController,
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Icon(Icons.email),
                      ),
                      labelText: 'email*',
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // subject
                  TextFormField(
                    controller: subjectController,
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Icon(Icons.title),
                      ),
                      labelText: 'Subject*',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // message
                  TextFormField(
                    controller: messageController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Icon(Icons.note),
                      ),
                      labelText: 'message *',
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).iconTheme.color,
                          minimumSize: const Size(100, 35),
                        ),
                        onPressed: () {
                          if (receiverNameController.text == "" ||
                              receiverEmailController.text == "" ||
                              subjectController.text == "" ||
                              messageController.text == "") {
                            MessageProvider.errorMessage(
                                'Error', 'All fields are required');
                          } else {
                            emailJsController.addEmail(
                                receiverNameController.text,
                                receiverEmailController.text,
                                subjectController.text,
                                messageController.text);
                          }
                        },
                        child: const Text(
                          'Send Email',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 1,
                            wordSpacing: 0.5,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
