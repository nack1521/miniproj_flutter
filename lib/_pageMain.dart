import 'package:flutter/material.dart';
import 'package:final_proj/_nextPage.dart';

class PageMain extends StatefulWidget {
  const PageMain({super.key});

  @override
  State<PageMain> createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our member group'),
      ),
      backgroundColor: Color.fromARGB(255, 214, 216, 193),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 417,
                width: 1920,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 255, 216),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile2.png'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Koraphat Laungthep',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Student ID : 65080502230',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 417,
                width: 1920,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 255, 216),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Apirach Jangin',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Student ID : 65080502248',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 417,
                width: 1920,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 255, 216),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile3.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Thanakorn Boriboonhiran ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Student ID : 65080502265',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('ETE461'),
              accountEmail: Text('Mobile Application'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/kmutt.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage()));
                },
                icon: Icon(Icons.calculate),
                label: Text(
                  'Page 2 - Calculator',
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 51, 51, 51)),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 174, 219, 255)),
                  minimumSize: MaterialStateProperty.all(Size(200, 45)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
