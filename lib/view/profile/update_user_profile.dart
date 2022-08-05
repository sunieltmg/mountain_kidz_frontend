import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class UpdateUserProfile extends StatelessWidget {
  UpdateUserProfile({Key? key}) : super(key: key);

  late final nameController = TextEditingController(text: 'sunil');
  late final emailController =
      TextEditingController(text: 'technicalnepal31@gmail.com');
  late final phoneController = TextEditingController(text: '+9779848859531');
  late final addressController =
      TextEditingController(text: 'Payutar, Budhanilkantha');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                // profile introduction
                DottedBorder(
                  dashPattern: [20, 10],
                  strokeWidth: 1.5,
                  borderType: BorderType.Circle,
                  radius: Radius.circular(12),
                  color: Get.isDarkMode ? Colors.white38 : Colors.black38,
                  child: Container(
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Column(children: [
                      Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CachedNetworkImage(
                                key: UniqueKey(),
                                imageUrl:
                                    "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Image(
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/loading.gif',
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            Positioned(
                              bottom: -10,
                              right: 30,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Get.isDarkMode
                                      ? Colors.purple.shade200
                                      : Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Sunil Tamang',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode
                        ? Colors.purple.shade200
                        : Colors.green.shade900,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontSize: 18.0,
                    height: 1.5,
                  ),
                ),

                const Text(
                  '9848859531',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontSize: 14.0,
                    height: 1.3,
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                // profile textfield
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Name',
                        style: TextStyle(fontSize: 14),
                      ),
                      suffixIcon: nameController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () => nameController.clear(),
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
                    controller: emailController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Email',
                        style: TextStyle(fontSize: 14),
                      ),
                      suffixIcon: emailController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () => emailController.clear(),
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
                    controller: phoneController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Phone',
                        style: TextStyle(fontSize: 14),
                      ),
                      suffixIcon: phoneController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () => phoneController.clear(),
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
                    controller: addressController,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Address',
                        style: TextStyle(fontSize: 14),
                      ),
                      suffixIcon: addressController.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () => addressController.clear(),
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
                    child: Text('Update'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
