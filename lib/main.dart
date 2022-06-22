import 'package:flutter/material.dart';
import 'package:project_app/screens/home_page.dart';
import 'package:project_app/screens/more_info.dart';
import 'package:project_app/screens/register_successful.dart';
import 'package:project_app/screens/sign_up.dart';
import 'package:project_app/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(),
        routes: {
          SignScreen.routeName : (_) { return SignScreen(); },
          LoginScreen.routeName : (_) { return LoginScreen(); },
          HomeScreen.routeName : (_) { return HomeScreen(); },
          RegisterSuccessScreen.routeName : (_) { return RegisterSuccessScreen(); },
          MoreInfoScreen.routeName : (_) { return MoreInfoScreen(); },
        }
    );
  }
}

class MainScreen extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Text('Welcome to', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,)),
            Text('StudyGroup', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,)),

            Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logo.png")
                    )
                )),
            Column(
              children: <Widget> [
                MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () =>
                        Navigator.of(context).pushNamed(LoginScreen.routeName),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 18)
                  )
                ),
                SizedBox(height:20),
                MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () =>
                        Navigator.of(context).pushNamed(SignScreen.routeName),
                    color: Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)
                    )
                ),
              ],
            )
          ],
        ),


      ),
    );
  }
}
