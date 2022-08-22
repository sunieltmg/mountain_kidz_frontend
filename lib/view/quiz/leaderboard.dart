import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Leaderboard',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('1. Sunil Tamang'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.9,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('2. Phurba Sherpa'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.7,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('3. Nishan Thapa'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.6,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('4. Nischal Khatri'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.5,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('5. Ambika Adhikari'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.4,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('6. Sanjib Limbu'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.3,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text('7. Nishma Khanal'),
                  ),
                  subtitle: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    minHeight: 20,
                    value: 0.2,
                    backgroundColor: Colors.white,
                  ),
                  leading: CachedNetworkImage(
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60',
                    placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/loading.gif',
                          )),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
