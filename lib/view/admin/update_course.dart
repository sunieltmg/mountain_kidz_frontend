import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class UpdateCourse extends StatelessWidget {
  UpdateCourse({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Course'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
            top: 40,
          ),
          child: Column(
            children: [
              // name
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: nameController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                  border: const OutlineInputBorder(),
                  label: const Text(
                    'name',
                    style: TextStyle(fontSize: 14),
                  ),
                  suffixIcon: nameController.text.isEmpty
                      ? Container(
                          width: 0,
                        )
                      : IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => nameController.clear(),
                        ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Required *'),
                ]),
              ),

              const SizedBox(
                height: 25,
              ),

              // description
              TextFormField(
                maxLines: 4,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: descriptionController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                  border: const OutlineInputBorder(),
                  label: const Text(
                    'description',
                    style: TextStyle(fontSize: 14),
                  ),
                  suffixIcon: descriptionController.text.isEmpty
                      ? Container(
                          width: 0,
                        )
                      : IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => descriptionController.clear(),
                        ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Required *'),
                ]),
              ),

              const SizedBox(
                height: 25,
              ),

              // image
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: imageController,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                  border: const OutlineInputBorder(),
                  label: const Text(
                    'image',
                    style: TextStyle(fontSize: 14),
                  ),
                  suffixIcon: imageController.text.isEmpty
                      ? Container(
                          width: 0,
                        )
                      : IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => imageController.clear(),
                        ),
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Required *'),
                ]),
              ),

              const SizedBox(
                height: 45,
              ),

              // Update Button
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 30,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Get.isDarkMode
                          ? Colors.purple.shade200
                          : Colors.green,
                      minimumSize: const Size(400, 40)),
                  onPressed: () {},
                  child: const Text('UPDATE'),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
