import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Image.asset('assets/images/prime_logo.png'),
        title: Container(
          width: 120,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/prime_logo.png'),
          )),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
        leading: TextButton(
            child: Text(
              'Back',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () {
              print('Back Pressed');
            }),
        actions: [
          IconButton(
              onPressed: () {
                print('Clicked Action Button');
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Container(
        color: Color.fromRGBO(0, 0, 0, 1.0),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Create account',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Name",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            TextField(
                decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Your email address",
              filled: true,
              fillColor: Colors.white,
            )),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Create a password",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.info_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Passwords must be at least 6 characters.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Show Password',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(18, 120, 175, 1.0)),
                    child: Text('Create your Amazon account'))),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                    text: "By creating an account, you agree to the ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: "Prime Video Terms of Use and license agreements",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //redirect Terms of Use
                            print("Clicked Prime Video Terms of Use and license agreements");
                          }
                        ,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextSpan(
                        text : " which can be found on the Amazon website.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        )
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            )),
            SizedBox(height: 10),
            Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign-In now'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(66, 81, 101, 1.0)),
                )),
            SizedBox(height: 80),
            Center(
              child: Text(
                "© 1996-2021, Amazon.com, Inc. or its affiliates",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
