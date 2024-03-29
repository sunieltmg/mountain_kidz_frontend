import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndCondition extends StatelessWidget {
  TermsAndCondition({Key? key}) : super(key: key);

  var data = [
    {
      "title": "Terms of Service",
      "description":
          "Welcome to Mountain Kidz & Daycare. We welcome you to Mountain Kidz & Daycare community for best user’s experience. Please go through all the terms and condition before you start the adventure of Mountain Kidz & Daycare. If there is a conflict between these 'Terms of Service' and any such other terms, these 'Terms of Service' will prevail. The FoodGunj is intended mainly for Nepal jurisdiction which is abide by the laws of Nepal. Any provision inconsistent with the local laws shall remain void. Our new Terms and Conditions will be updating and modifying from time to time to meet the present circumstances without any further notice.",
    },
    {
      "title": "Introduction",
      "description":
          "Mountain Kidz & Daycare, with the motto to 'Construe the best' is an online mobile app established with the aim to deliver all type of cuisine in your doorstep. We don't only deliver food, but we satisfy you with toothsome dishes. Enjoy the best food; be it Nepali, Indian, Italian, Chinese or many more. We are linked with the best restaurants to serve you. Choose your favorite food from your favorite restaurant while you are drooling for your favorite food. We work to make our customer happy with healthy food. Remember us anytime for your hunger, we are always ready to serve you with your best one. Mountain Kidz & Daycare is probably the best mobile app to get your food anywhere you want. We deliver very quickly and it just take a minute to order. Mountain Kidz & Daycare is the rising food delivery service whose objective is to provide the best food delivery experience for the users residing in Kathmandu valley. However, this company have intention to run all over Nepal after certain time and hopefully all over Asia in coming years.",
    },
    {
      "title": "Registration",
      "description":
          "Personal information is to be correctly provided by the user and or other missing information is needed to be updated. Every description is authenticated by our IT team with validation systems, so fake names are restricted. Your personal information is your responsibility. For any confidentiality theft, Mountain Kidz & Daycare will not be responsible."
    },
    {
      "title": "Price",
      "description":
          "The information regarding price, product specifications and availability contained on the Site has been provided by member merchants.The prices charged by the member merchants in our web application are regardless same as the price charged in restaurants or stores at the time when order is delivered or available for pickup."
    },
    {
      "title": "ORDERING AND PAYMENT",
      "description":
          "Orders will be taken online. Our app provide wide range of visual satisfaction to the user that generally helps them to recognize the new item via tabulated pictures and price. Transaction is very easy in comparison to other app available in the market. . Buyers are usually billed directly by merchant members for their orders, and 'Mountain Kidz & Daycare' will be the name that appears on the bills you receive from the merchants. You need to pay for the ordered food either by online payments like eSewa, khalti, fonepay, and others available in present days; or by paying cash to delivery staff depending on user’s choice."
    },
    {
      "title": "REFUND POLICY",
      "description":
          "Mountain Kidz & Daycare always looks forward for customer satisfaction regarding services. In the case of problems with your food order, please contact us. In only appropriate cases, Mountain Kidz & Daycare will issue full or partial refunds. For example: if you did not receive your order or received an incorrect order, you may be issued a full refund; if part of your order is missing, we may issue a partial refund. In every event, we will do our best to ensure your satisfaction."
    },
    {
      "title": "Sale of Alcohol",
      "description":
          "Persons who place an order for alcohol from our connected restaurants must be strictly aged 18 or above. Each and every alcoholic beverages will be easily sold or delivered to the persons only by authenticating their age. For authentication, user will be asked about the proof of their ages. Mountain Kidz & Daycare holds the right to decline the order of any alcoholic beverages to any person who is under the influence of either alcohol or drugs."
    },
    {
      "title": "Cancellation",
      "description":
          "You have the right to cancel an order within a reasonable time and before the order is prepared. The cancellation process can only be determined by Mountain Kidz & Daycare. It depends upon time interval from confirm food to cancellation time."
    },
    {
      "title": "Termination",
      "description":
          "Mountain Kidz & Daycare also holds the right to terminate membership of any customer or partner restaurant owner if some irresponsible or bad behaviour is done to Mountain Kidz & Daycare. In case of any legal disputes, user or restaurant owner are entitled to bear all the costs which is needed during procedure."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Terms & Conditions',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 60),
              height: MediaQuery.of(context).size.height,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data[index]["title"]}',
                          style: TextStyle(
                            color: Get.isDarkMode
                                ? Colors.white.withOpacity(0.8)
                                : Colors.black54,
                            letterSpacing: 1,
                            wordSpacing: 1,
                            fontSize: 16.0,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${data[index]["description"]}',
                            style:
                                Theme.of(context).primaryTextTheme.labelMedium),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    );
                  }),
                  itemCount: data.length,
                ),
              ),
            ),
          ),
        ));
  }
}
