import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Member extends StatelessWidget {
  Member({Key? key}) : super(key: key);

  var boardMembers = [
    {
      "title": "Kul Tamang",
      "description": "Director",
      "image":
          "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZGlyZWN0b3J8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Lhakpa Sherpa",
      "description": "Director",
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGRpcmVjdG9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Nuru Sherpa",
      "description": "Director",
      "image":
          "https://images.unsplash.com/photo-1637684666772-1f215bfd0f5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGlyZWN0b3J8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
  ];

  var teacherMembers = [
    {
      "title": "Pasang Sherpa",
      "description": "English",
      "image":
          "https://images.unsplash.com/photo-1580894732930-0babd100d356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGVhY2hlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Sumina Magar",
      "description": "Nepali",
      "image":
          "https://images.unsplash.com/photo-1590650213165-c1fef80648c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRlYWNoZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Raj jha",
      "description": "Math",
      "image":
          "https://images.unsplash.com/photo-1573166364524-d9dbfd8bbf83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHRlYWNoZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
  ];

  var staffMembers = [
    {
      "title": "Rita Nepali",
      "description": "Accountant",
      "image":
          "https://images.unsplash.com/photo-1507206130118-b5907f817163?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWNjb3VudGFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Hari Thapa",
      "description": "Bus Driver",
      "image":
          "https://images.unsplash.com/photo-1473655587843-eda8944061e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZHJpdmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
    {
      "title": "Sarita Pandey",
      "description": "Cleaner",
      "image":
          "https://images.unsplash.com/photo-1620564074310-30a0388b396b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGxhZHklMjBjbGVhbmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "phoneNum": "+9779848859531",
      "facebook": "",
      "instagram": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 30, top: 20),
          child: Wrap(
            children: [
              // Board Members
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 25, left: 10),
                child: Text(
                  'BOARD MEMBERS',
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white60 : Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 215,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: boardMembers.length,
                  itemBuilder: ((context, index) => MembersWidget(
                        title: boardMembers[index]['title'].toString(),
                        description:
                            boardMembers[index]['description'].toString(),
                        image: boardMembers[index]['image'].toString(),
                        phoneNum: boardMembers[index]['phoneNum'].toString(),
                        facebook: boardMembers[index]['facebook'].toString(),
                        instagram: boardMembers[index]['instagram'].toString(),
                      )),
                ),
              ),
              Divider(),
              // Teachers
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 5, left: 10),
                child: Text(
                  'TEACHERS',
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white60 : Colors.black54,
                  ),
                ),
              ),

              SizedBox(
                height: 215,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: teacherMembers.length,
                  itemBuilder: ((context, index) => MembersWidget(
                        title: teacherMembers[index]['title'].toString(),
                        description:
                            teacherMembers[index]['description'].toString(),
                        image: teacherMembers[index]['image'].toString(),
                        phoneNum: teacherMembers[index]['phoneNum'].toString(),
                        facebook: teacherMembers[index]['facebook'].toString(),
                        instagram:
                            teacherMembers[index]['instagram'].toString(),
                      )),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Divider(),
              //Staff
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 25, left: 10),
                child: Text(
                  'STAFF',
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white60 : Colors.black54,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 215,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: staffMembers.length,
                  itemBuilder: ((context, index) => MembersWidget(
                        title: staffMembers[index]['title'].toString(),
                        description:
                            staffMembers[index]['description'].toString(),
                        image: staffMembers[index]['image'].toString(),
                        phoneNum: staffMembers[index]['phoneNum'].toString(),
                        facebook: staffMembers[index]['facebook'].toString(),
                        instagram: staffMembers[index]['instagram'].toString(),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MembersWidget extends StatelessWidget {
  const MembersWidget({
    required this.title,
    required this.description,
    required this.image,
    required this.phoneNum,
    required this.facebook,
    required this.instagram,
    Key? key,
  }) : super(key: key);
  final String title;
  final String description;
  final String image;
  final String phoneNum;
  final String facebook;
  final String instagram;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(
                    Icons.call,
                  ),
                  title: new Text('Call'),
                  onTap: () async {
                    const phoneNumber = '+9779863027050';
                    const url = 'tel:$phoneNumber';

                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(
                        Uri.parse(url),
                        mode: LaunchMode.platformDefault,
                      );
                    }
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.message),
                  title: new Text('Message'),
                  onTap: () async {
                    const phoneNumber = '+9779863027050';
                    const url = 'sms:$phoneNumber';

                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(
                        Uri.parse(url),
                        mode: LaunchMode.platformDefault,
                      );
                    }
                  },
                ),
              ],
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(
          right: 8,
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                key: UniqueKey(),
                imageUrl: image,
                height: 130,
                width: 130,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Image(
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/loading.gif',
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
                height: 1.3,
                color: Get.isDarkMode
                    ? Colors.white
                    : Colors.black.withOpacity(0.8),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.2,
                height: 1.3,
                color: Get.isDarkMode ? Colors.white : Colors.black54,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            // Row(
            //   children: [
            //     GestureDetector(
            //       onTap: () async {
            //         const phoneNumber = '+9779863027050';
            //         const url = 'tel:$phoneNumber';

            //         if (await canLaunchUrl(Uri.parse(url))) {
            //           await launchUrl(
            //             Uri.parse(url),
            //             mode: LaunchMode.platformDefault,
            //           );
            //         }
            //       },
            //       child: Image(
            //         color: Get.isDarkMode ? Colors.white30 : Colors.black54,
            //         image: AssetImage('assets/phone.png'),
            //         width: 17,
            //         height: 17,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 25,
            //     ),
            //     GestureDetector(
            //       onTap: () async {
            //         const phoneNumber = '+9779863027050';
            //         const url = 'sms:$phoneNumber';

            //         if (await canLaunchUrl(Uri.parse(url))) {
            //           await launchUrl(
            //             Uri.parse(url),
            //             mode: LaunchMode.platformDefault,
            //           );
            //         }
            //       },
            //       child: Image(
            //         color: Get.isDarkMode ? Colors.white30 : Colors.black54,
            //         image: AssetImage('assets/comment.png'),
            //         width: 17,
            //         height: 17,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
