import 'package:flutter/material.dart';

class AddCourse extends StatelessWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [],
          ),
        ),
      )),
    );
  }
}


// import 'package:flutter/material.dart';
// class AccountPage extends StatefulWidget {
//   const AccountPage({Key? key}) : super(key: key);
//   @override
//   State<AccountPage> createState() => _AccountPageState();
// }
// class _AccountPageState extends State<AccountPage> {
//   final double coverHeight = 80.0;
//   final double profileHeight = 100.0;
//   @override
//   Widget build(BuildContext context) {
//     final top = coverHeight - profileHeight / 2;
//     return SingleChildScrollView(
//       child: Container(
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
//           child: Column(
//             children: [
//               Stack(
//                 clipBehavior: Clip.none,
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     color: Colors.grey,
//                     child: Image.network(
//                       "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
//                       width: double.infinity,
//                       height: coverHeight,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     top: top,
//                     child: CircleAvatar(
//                       radius: profileHeight / 2,
//                       backgroundColor: Colors.grey.shade800,
//                       backgroundImage: NetworkImage(
//                         "https://cdn.pixabay.com/photo/2022/07/24/23/46/artificial-intelligence-7342613__340.jpg",
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 50.0),
//               // Container(
//               //   width: MediaQuery.of(context).size.width,
//               //   height: MediaQuery.of(context).size.height*0.28,
//               //   decoration: BoxDecoration(
//               //     image: DecorationImage(
//               //       image: NetworkImage(
//               //         "https://cdn.pixabay.com/photo/2020/11/22/22/17/male-5768177__340.png",
//               //       ),
//               //       fit: BoxFit.fill,
//               //     ),
//               //   ),
//               // ),
//               Container(
//                 constraints: BoxConstraints(
//                   maxHeight: double.infinity,
//                 ),
//                 // height: MediaQuery.of(context).size.height * 0.110,
//                 width: MediaQuery.of(context).size.width * 0.899,
//                 child: Card(
//                   elevation: 2.0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0.0),
//                     side: BorderSide(
//                       color: Color(0xFFD9D9D9),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 0.0, horizontal: 15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         //
//                         Align(
//                           alignment: Alignment.topRight,
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               // maximumSize: Size(50, 40),
//                               minimumSize: Size(30, 30),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                   0.0,
//                                 ),
//                               ),
//                               primary: Color(
//                                 0xFF6D46F8,
//                               ),
//                             ),
//                             onPressed: () {},
//                             child: Icon(
//                               Icons.edit_note_sharp,
//                               size: 30,
//                             ),
//                           ),
//                         ),
//                         //
//                         CircleAvatar(
//                           radius: 35,
//                           backgroundColor: Color(0xFF6D46F8),
//                           child: Padding(
//                             padding: EdgeInsets.all(5.0), // Border radius
//                             child: ClipOval(
//                               child: Image.network(
//                                 'https://cdn.pixabay.com/photo/2022/07/24/23/46/artificial-intelligence-7342613__340.jpg',
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10.0),
//                         Text(
//                           "Gokarna Adhikari",
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0XFF787878),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 6.0,
//                         ),
//                         Text(
//                           "+977-9809597153",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF787878),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2.0,
//                         ),
//                         Text(
//                           "agokarna444@gmail.com",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF787878),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2.0,
//                         ),
//                         Text(
//                           "Thulobharyang, Kathmandu",
//                           style: TextStyle(
//                             fontSize: 15.0,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0XFF787878),
//                           ),
//                         ),
//                         SizedBox(height: 15.0),
//                         //
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               //
//               SizedBox(height: 15.0),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.180,
//                 width: MediaQuery.of(context).size.width * 0.899,
//                 decoration: BoxDecoration(
//                   color: Color(0XFFF5F5F5),
//                   border: Border.all(
//                     color: Color(0XFFDDDDDD),
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(
//                       6.0,
//                     ),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 0.0, horizontal: 10.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "Personal Information",
//                               style: TextStyle(
//                                 fontSize: 18.0,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0XFF787878),
//                               ),
//                             ),
//                           ),
//                           ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               // maximumSize: Size(50, 40),
//                               minimumSize: Size(30, 30),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                   0.0,
//                                 ),
//                               ),
//                               primary: Color(
//                                 0xFF6D46F8,
//                               ),
//                             ),
//                             onPressed: () {},
//                             child: Icon(
//                               Icons.edit_note_sharp,
//                               size: 30,
//                             ),
//                           ),
//                         ],
//                       ),
//                       //
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.person,
//                             color: Color(0XFF707070),
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 5.0,
//                           ),
//                           Text(
//                             "Gokarna Adhikari",
//                             style: TextStyle(
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.w400,
//                               color: Color(0XFF787878),
//                             ),
//                           ),
//                         ],
//                       ),
//                       //
//                       SizedBox(
//                         height: 4.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.mail,
//                             color: Color(0XFF707070),
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 5.0,
//                           ),
//                           Text(
//                             "agokarna444@gmail.com",
//                             style: TextStyle(
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.w400,
//                               color: Color(0XFF787878),
//                             ),
//                           ),
//                         ],
//                       ),
//                       //
//                       SizedBox(
//                         height: 4.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.mobile_friendly,
//                             color: Color(0XFF707070),
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 5.0,
//                           ),
//                           Text(
//                             "+977-9809597153",
//                             style: TextStyle(
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.w400,
//                               color: Color(0XFF787878),
//                             ),
//                           ),
//                         ],
//                       ),
//                       //
//                       SizedBox(
//                         height: 4.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.place,
//                             color: Color(0XFF707070),
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: 5.0,
//                           ),
//                           Text(
//                             "Thulobharyang, Swoyambhu, Kathmandu",
//                             style: TextStyle(
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.w400,
//                               color: Color(0XFF787878),
//                             ),
//                           ),
//                         ],
//                       ),
//                       //
//                     ],
//                   ),
//                 ),
//               ),
//               //
//               SizedBox(height: 15.0),
//               DefaultTabController(
//                 length: 3,
//                 child: Column(
//                   children: [
//                     TabBar(
//                       indicatorColor: Color(0xFF6D46F8),
//                       unselectedLabelColor: Color(0xFF707070),
//                       labelColor: Color(0xFF6D46F8),
//                       labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                       tabs: [
//                         Tab(
//                           child: Text(
//                             "My Listing",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 letterSpacing: 0.7),
//                           ),
//                         ),
//                         Tab(
//                           child: Text(
//                             "Booking",
//                             style: TextStyle(
//                                 // color: Color(0XFFFF3D00),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 letterSpacing: 0.7),
//                           ),
//                         ),
//                         Tab(
//                           child: Text(
//                             "Setting",
//                             style: TextStyle(
//                                 // color: Color(0XFFFF3D00),
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 letterSpacing: 0.7),
//                           ),
//                           // text: "Recent",
//                         ),
//                       ],
//                     ),
//                     //
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.50,
//                       child: TabBarView(
//                         children: [
//                           Container(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 //
//                                 //
//                                 Align(
//                                   alignment: Alignment.topRight,
//                                   child: TextButton(
//                                     onPressed: () {},
//                                     child: Text(
//                                       "Add Listing",
//                                       style: TextStyle(
//                                           fontSize: 16.0,
//                                           fontWeight: FontWeight.bold,
//                                           color: Color(0xFF6D46F8)),
//                                     ),
//                                   ),
//                                 ),
//                                 //
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 10.0, vertical: 8.0),
//                                   decoration: BoxDecoration(
//                                     color: Color(0XFFFEFFFF),
//                                     border:
//                                         Border.all(color: Color(0XFFD1D0D0)),
//                                     borderRadius: BorderRadius.all(
//                                       Radius.circular(6.0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           Image(
//                                             height: 62,
//                                             width: 70,
//                                             fit: BoxFit.cover,
//                                             image: NetworkImage(
//                                               "https://cdn.pixabay.com/photo/2019/07/08/04/23/traveling-4323759__340.png",
//                                             ),
//                                           ),
//                                           //
//                                           SizedBox(width: 10.0),
//                                           //
//                                           Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 "Goku's Boy's Hostel",
//                                                 overflow: TextOverflow.ellipsis,
//                                                 style: TextStyle(
//                                                     fontSize: 16.0,
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Color(0xFF707070),
//                                                     letterSpacing: 0.99),
//                                               ),
//                                               SizedBox(height: 5.0),
//                                               Text(
//                                                 "Putalisadak, Kathmandu",
//                                                 style: TextStyle(
//                                                     fontSize: 14.0,
//                                                     fontWeight: FontWeight.w500,
//                                                     color: Color(0xFF707070),
//                                                     letterSpacing: 0.20),
//                                               ),
//                                             ],
//                                           ),
//                                           //
//                                         ],
//                                       ),
//                                       SizedBox(width: 7.0),
//                                       Align(
//                                         alignment: Alignment.topRight,
//                                         child: IconButton(
//                                           onPressed: () {
//                                             // print("Edit Notes button clicked");
//                                             showModalBottomSheet(
//                                                 context: context,
//                                                 builder: (context) {
//                                                   return Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     children: <Widget>[
//                                                       SizedBox(height: 15.0),
//                                                       ListTile(
//                                                         leading: new Icon(
//                                                           Icons.edit_note,
//                                                         ),
//                                                         title: new Text(
//                                                             'Edit Listing'),
//                                                         onTap: () {
//                                                           // Navigator.pop(
//                                                           //     context);
//                                                         },
//                                                       ),
//                                                       ListTile(
//                                                         leading: new Icon(
//                                                             Icons.delete),
//                                                         title:
//                                                             new Text('Delete'),
//                                                         onTap: () {
//                                                           Navigator.pop(
//                                                               context);
//                                                         },
//                                                       ),
//                                                       ListTile(
//                                                         leading: new Icon(Icons
//                                                             .remove_red_eye),
//                                                         title: new Text(
//                                                             'View Details'),
//                                                         onTap: () {
//                                                           Navigator.pop(
//                                                               context);
//                                                         },
//                                                       ),
//                                                       // ListTile(
//                                                       //   leading: new Icon(
//                                                       //       Icons.share),
//                                                       //   title:
//                                                       //       new Text('Share'),
//                                                       //   onTap: () {
//                                                       //     Navigator.pop(
//                                                       //         context);
//                                                       //   },
//                                                       // ),
//                                                     ],
//                                                   );
//                                                 });
//                                           },
//                                           icon: Icon(
//                                             Icons.more_vert_outlined,
//                                             size: 30,
//                                             color: Color(0xFF6D46F8),
//                                           ),
//                                         ),
//                                       ),
//                                       //
//                                     ],
//                                   ),
//                                 ),
//                                 //
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Center(
//                               child: Text(
//                                 "This is My Listing Sections",
//                               ),
//                             ),
//                           ),
//                           Container(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 20.0),
//                               child: Column(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 5.0, vertical: 1.0),
//                                     decoration: BoxDecoration(
//                                       color: Color(0XFFFEFFFF),
//                                       border: Border.all(
//                                         color: Color(0XFFD1D0D0),
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(
//                                           0.0,
//                                         ),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(Icons.mail,
//                                             size: 60, color: Color(0XFF707070)),
//                                         //
//                                         SizedBox(width: 5.0),
//                                         //
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Verify your email address",
//                                               overflow: TextOverflow.ellipsis,
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.4,
//                                               ),
//                                             ),
//                                             SizedBox(height: 5.0),
//                                             Text(
//                                               "Verify to get trusted by people",
//                                               style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         //
//                                         SizedBox(
//                                           width: 7.0,
//                                         ),
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: TextButton(
//                                             onPressed: () {},
//                                             child: Text(
//                                               "Verify",
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Color(0xFF6D46F8),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ),
//                                           // child: IconButton(
//                                           //   onPressed: () {
//                                           //     print(
//                                           //         "Edit Notes button clicked");
//                                           //   },
//                                           //   icon: Icon(
//                                           //     Icons.edit_note,
//                                           //     size: 40,
//                                           //     color: Color(0xFF6D46F8),
//                                           //   ),
//                                           // ),
//                                         ),
//                                         //
//                                       ],
//                                     ),
//                                   ),
//                                   //
//                                   SizedBox(height: 15.0),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 5.0, vertical: 1.0),
//                                     decoration: BoxDecoration(
//                                       color: Color(0XFFFEFFFF),
//                                       border: Border.all(
//                                         color: Color(0XFFD1D0D0),
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(
//                                           0.0,
//                                         ),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(Icons.phone_android,
//                                             size: 60, color: Color(0XFF707070)),
//                                         //
//                                         SizedBox(width: 5.0),
//                                         //
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Verify your phone number",
//                                               overflow: TextOverflow.ellipsis,
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.4,
//                                               ),
//                                             ),
//                                             SizedBox(height: 5.0),
//                                             Text(
//                                               "Verify to get trusted by people",
//                                               style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         //
//                                         SizedBox(
//                                           width: 7.0,
//                                         ),
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: TextButton(
//                                             onPressed: () {},
//                                             child: Text(
//                                               "Verify",
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Color(0xFF6D46F8),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         //
//                                       ],
//                                     ),
//                                   ),
//                                   //
//                                   SizedBox(height: 15.0),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 5.0, vertical: 1.0),
//                                     decoration: BoxDecoration(
//                                       color: Color(0XFFFEFFFF),
//                                       border: Border.all(
//                                         color: Color(0XFFD1D0D0),
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(
//                                           0.0,
//                                         ),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(Icons.delete_forever,
//                                             size: 60, color: Color(0XFF707070)),
//                                         //
//                                         SizedBox(width: 5.0),
//                                         //
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Delete account permanent",
//                                               overflow: TextOverflow.ellipsis,
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.4,
//                                               ),
//                                             ),
//                                             SizedBox(height: 5.0),
//                                             Text(
//                                               "You won't able to add listing",
//                                               style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         //
//                                         SizedBox(width: 7.0),
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: TextButton(
//                                             onPressed: () {},
//                                             child: Text(
//                                               "Delete",
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Color(0xFFE41B00),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         //
//                                       ],
//                                     ),
//                                   ),
//                                   //
//                                   SizedBox(height: 15.0),
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 5.0, vertical: 1.0),
//                                     decoration: BoxDecoration(
//                                       color: Color(0XFFFEFFFF),
//                                       border: Border.all(
//                                         color: Color(0XFFD1D0D0),
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(
//                                           0.0,
//                                         ),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Icon(Icons.logout_rounded,
//                                             size: 60, color: Color(0XFF707070)),
//                                         //
//                                         SizedBox(width: 5.0),
//                                         //
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Logout",
//                                               overflow: TextOverflow.ellipsis,
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.w600,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.4,
//                                               ),
//                                             ),
//                                             SizedBox(height: 5.0),
//                                             Text(
//                                               "Logout from hostel finder app",
//                                               style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 fontWeight: FontWeight.normal,
//                                                 color: Color(0xFF707070),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         //
//                                         SizedBox(width: 7.0),
//                                         Align(
//                                           alignment: Alignment.topRight,
//                                           child: TextButton(
//                                             onPressed: () {},
//                                             child: Text(
//                                               "Logout",
//                                               style: TextStyle(
//                                                 fontSize: 16.0,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Color(0xFF6D46F8),
//                                                 letterSpacing: 0.3,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         //
//                                       ],
//                                     ),
//                                   ),
//                                   //
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }