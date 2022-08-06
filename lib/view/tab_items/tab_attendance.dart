import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabAttendance extends StatelessWidget {
  TabAttendance({Key? key}) : super(key: key);

  var attendance = [
    {"month": "Baisakh", "present": "12", "absent": "5"},
    {"month": "Jestha", "present": "12", "absent": "5"},
    {"month": "Ashar", "present": "12", "absent": "5"},
    {"month": "Shrawan", "present": "12", "absent": "5"},
    {"month": "Bhadra", "present": "12", "absent": "5"},
    {"month": "Ashoj", "present": "12", "absent": "5"},
    {"month": "Kartik", "present": "12", "absent": "5"},
    {"month": "Mangshir", "present": "12", "absent": "5"},
    {"month": "Poush", "present": "12", "absent": "5"},
    {"month": "Magh", "present": "12", "absent": "5"},
    {"month": "Falgun", "present": "12", "absent": "5"},
    {"month": "Chaitra", "present": "12", "absent": "5"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          // total attendace
          Text(
            'Total',
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Get.isDarkMode
                  ? Colors.purple.shade400
                  : Colors.green.shade800,
            ),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Working Days',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '365',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white70 : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Present',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '305',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white70 : Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Absent',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '20',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w300,
                      height: 1.3,
                      color: Get.isDarkMode ? Colors.white70 : Colors.white,
                    ),
                  ),
                ],
              ),
            ]),
          ),

          SizedBox(
            height: 30,
          ),

          // every month attendance
          SingleChildScrollView(
            child: Container(
              height: 300,
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: attendance.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Get.isDarkMode
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.green.shade100,
                        ),
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  attendance[index]['month'].toString(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '365',
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Present',
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '305',
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Absent',
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w300,
                                    height: 1.3,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      );
                    })),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
