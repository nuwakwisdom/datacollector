import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              controller: firstName,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'First Name',
                hintStyle: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: lastName,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Last Name',
                hintStyle: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20),
                  ),
                  borderSide: new BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print('$firstName');
                var nameEntered = firstName.text;
                var surnameEntered = lastName.text;
                var emailEntered = email.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewData(
                              name: nameEntered,
                              surname: surnameEntered,
                              mail: emailEntered,
                            )));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  'Display Data',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ViewData extends StatelessWidget {
  final name;
  final surname;
  final mail;
  ViewData({required this.name, this.surname, this.mail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('View data'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              '$name',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '$surname',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '$mail',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
