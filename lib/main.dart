import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> namax = [
      "Kim NamJoon",
      "Kim SeokJin",
      "Min Yoongi",
      "Jeong HoSeok",
      "Park JiMin",
      "Kim TaeHyung",
      "Jeon JungKook",
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum Flutter',
      // home: Test(),
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 63, 158),
          leading: Icon(Icons.home),
          title: Text(
            'Project UJI COBA',
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding:
                  EdgeInsets.only(right: 16.0), // Adjust the value as needed
              child: Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: namax.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    //backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://cdn.idntimes.com/content-images/community/2021/11/img-20211130-083246-8d569333abbc9e26646dc6a398891324-ce29c808d65c81bf82b95199c11839c2.jpg'),
                    radius: 25.0,
                  ),
                  title: Text(
                    namax[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  subtitle: Text(
                    'members BTS',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12.0,
                    ),
                  ),
                );
              }),
        )),
      ),
    );
  }
}
