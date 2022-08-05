import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LicenseSection extends StatelessWidget {
  const LicenseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'License',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Unsplash images and flaticons are made to be used freely. Our license reflect that',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/check.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'All photos can be downloaded and used for free',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/check.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Commercial and non-commercial purposes',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/check.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'No permission needed (though attribution is appreciated)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        'What is not permitted',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image(
                      image: AssetImage('assets/sad.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 200,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/prohibition.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Photos cannot be sold without significant modification',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/prohibition.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Compiling photos from Unsplash to rebuild a similar or competing service',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/prohibition.png'),
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Using company photographs, videos, text, or audio without permission or acknowledgement.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
