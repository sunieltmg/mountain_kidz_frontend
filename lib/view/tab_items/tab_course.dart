import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class TabCourse extends StatelessWidget {
  TabCourse({Key? key}) : super(key: key);

  var courseData = [
    {
      "title": "English",
      "image":
          "https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Nepali",
      "image":
          "https://images.unsplash.com/photo-1588666309990-d68f08e3d4a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Science",
      "image":
          "https://images.unsplash.com/photo-1512820790803-83ca734da794?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Computer",
      "image":
          "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Ym9va3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Math",
      "image":
          "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Social",
      "image":
          "https://images.unsplash.com/photo-1546521343-4eb2c01aa44b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Ym9va3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
    },
    {
      "title": "Vocational",
      "image":
          "https://images.unsplash.com/photo-1495640388908-05fa85288e61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60",
    },
  ];

  @override
  Widget build(BuildContext context) {
    print(courseData[0]['title']);
    print(courseData[0]['image']);
    return Container(
      padding: EdgeInsets.only(
        top: 30,
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
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "${courseData[index]['image'].toString()}"),
                      ),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Text(courseData[index]['title'].toString()),
            ],
          );
        },
      ),
    );
  }
}
