import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class TabCourse extends StatelessWidget {
  TabCourse({Key? key}) : super(key: key);

  var courseData = [
    {
      "title": "English",
      "image":
          "https://img.freepik.com/free-vector/girl-read-books-white-background_1308-92010.jpg?w=360&t=st=1659536899~exp=1659537499~hmac=79f3baa3b613553264cc8f391323d83fa04a7a7cd6d5b46f22406644b2f10d88",
    },
    {
      "title": "Nepali",
      "image": "https://pos.booksmandala.com/images/17397",
    },
    {
      "title": "Science",
      "image":
          "https://img.freepik.com/free-vector/font-design-word-science-kids-with-boy-reading-book-background_1308-42373.jpg?t=st=1659537136~exp=1659537736~hmac=c2f6075cd067dbc3be58e4555863bd8ad5b6ab6ef8d0f08ebbe9f6d5e3472c41",
    },
    {
      "title": "Computer",
      "image":
          "https://img.freepik.com/premium-vector/happy-cute-little-kid-boy-with-school-equipment_97632-2264.jpg?w=740",
    },
    {
      "title": "Math",
      "image":
          "https://img.freepik.com/free-vector/boy-counting-numbers-desk_1308-30971.jpg?w=360&t=st=1659537328~exp=1659537928~hmac=7cfcabe7f55719bea6e09869e50409a799d373269b8a56bc6edc128414e576c9",
    },
    {
      "title": "Social",
      "image":
          "https://img.freepik.com/free-vector/girl-study-home_1308-82193.jpg?w=740&t=st=1659537417~exp=1659538017~hmac=41245c5ebc5368fa81f0960c65112c1dcbf286d3a4fcf842f6e14aceeda0fdd2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      // child: Column(
      // children: [
      // CachedNetworkImage(
      //   key: UniqueKey(),
      //   imageUrl:
      //       "https://cdn.pixabay.com/photo/2020/12/30/14/23/waterfall-5873630__340.jpg",
      //   height: 100,
      //   width: 100,
      //   fit: BoxFit.cover,
      //   placeholder: (context, url) => Image(
      //     fit: BoxFit.cover,
      //     image: AssetImage(
      //       'assets/loading.gif',
      //     ),
      //   ),
      //   errorWidget: (context, url, error) => Icon(Icons.error),
      // ),
      // Text('Courses section'),
      // ],
      // ),

      child: GridView.builder(
        itemCount: courseData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => Get.offNamed('/courseDetail'),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.09),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                            courseData[index]['image'].toString(),
                          ),
                        ),
                        color: Get.isDarkMode
                            ? Colors.black12
                            : Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Text(
                courseData[index]['title'].toString(),
                style: Theme.of(context).primaryTextTheme.labelMedium,
              ),
            ],
          );
        },
      ),
    );
  }
}
