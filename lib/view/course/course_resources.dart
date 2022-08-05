import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseResources extends StatelessWidget {
  CourseResources({Key? key}) : super(key: key);

  var courseResources = [
    {
      "title": "Hansle and Grettle",
      "description": "Struggle Story",
      "image":
          "https://img.freepik.com/free-vector/hansel-gretel-near-candy-house_1196-861.jpg?w=740&t=st=1659515880~exp=1659516480~hmac=4fd05b98e0dd4ee0e703bfde22add94b4dba20f8d8afc3f67bce7a724e94f46f"
    },
    {
      "title": "A Tiger in the Zoo",
      "description": "Animal",
      "image":
          "https://img.freepik.com/free-vector/zoo-animals-wild-nature-background_1308-44756.jpg?size=626&ext=jpg"
    },
    {
      "title": "Glimpses of India",
      "description": "Country",
      "image":
          "https://img.freepik.com/free-vector/indian-set-temples-architecture_25030-39369.jpg?w=740&t=st=1659516283~exp=1659516883~hmac=21b03ca19aa9197ec787661f10a1c1420f0d4c74813897041ef0f714b234039f"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20),
        child: SizedBox(
          height: 400,
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Image(
                      repeat: ImageRepeat.noRepeat,
                      height: 62,
                      width: 70,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        courseResources[index]['image'].toString(),
                      ),
                    ),
                    //
                    const SizedBox(width: 10.0),
                    //
                    Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseResources[index]['title'].toString(),
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).primaryTextTheme.titleMedium,
                          ),
                          Text(
                            courseResources[index]['description'].toString(),
                            style:
                                Theme.of(context).primaryTextTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30, left: 30),
                      child: IconButton(
                        onPressed: () {
                          // print("Edit Notes button clicked");
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: new Icon(
                                      Icons.edit_note,
                                    ),
                                    title: new Text('Edit Listing'),
                                    onTap: () {
                                      // Navigator.pop(
                                      //     context);
                                    },
                                  ),
                                  ListTile(
                                    leading: new Icon(Icons.delete),
                                    title: new Text('Delete'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  ListTile(
                                    leading: new Icon(Icons.remove_red_eye),
                                    title: new Text('View Details'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.more_vert_outlined,
                          size: 25,
                        ),
                      ),
                    ),
                    //
                  ],
                ),
              );
            }),
            itemCount: courseResources.length,
          ),
        ));
  }
}
