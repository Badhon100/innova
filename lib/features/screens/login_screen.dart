import 'package:flutter/material.dart';
import 'package:innova/features/screens/nav_bar.dart';
import 'package:innova/features/widgets/custom_social_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  String adminEmail = 'admin@gmail.com';
  String adminPassword = '123456';
  int ematch = 0;
  int pmatch = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/img/backgroung.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: (ematch != 1 && pmatch != 1)
                      ? Image.asset('assets/img/login_logout/login.png')
                      : Image.asset('assets/img/login_logout/logout.png'),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Login Details",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      TextField(
                        style: TextStyle(
                          color: (ematch == 1) ? Colors.red : Colors.black54,
                        ),
                        onChanged: (value) {
                          setState(() {
                            email = value;
                            if (adminEmail != email) {
                              ematch = 1;
                            } else if (adminEmail == value) {
                              ematch = 2;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color:
                                  (ematch == 1) ? Colors.red : Colors.black54,
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: "Username, email & phone number",
                          hintStyle: TextStyle(
                            color: (ematch == 1) ? Colors.red : Colors.black54,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color:
                                  (ematch == 1) ? Colors.red : Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        (ematch == 1) ? "Please enter valid email!" : '',
                        style: const TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      TextField(
                        style: TextStyle(
                          color: (pmatch == 1) ? Colors.red : Colors.black54,
                        ),
                        onChanged: (value) {
                          setState(() {
                            password = value;
                            if (adminPassword != password) {
                              pmatch = 1;
                            } else if (adminPassword == value) {
                              pmatch = 2;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color:
                                  (pmatch == 1) ? Colors.red : Colors.black54,
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: "password",
                          hintStyle: TextStyle(
                            color: (pmatch == 1) ? Colors.red : Colors.black54,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color:
                                  (pmatch == 1) ? Colors.red : Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            (pmatch == 1) ? "Please enter valid password!" : '',
                            style: const TextStyle(color: Colors.red),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "Forgot password ?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          if (ematch == 2 && pmatch == 2) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NavBar(),
                              ),
                              (Route route) => false,
                            );
                          }
                        },
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                              color: (ematch != 1 && pmatch != 1)
                                  ? Theme.of(context).colorScheme.primary
                                  :const Color(0xffB6D3FF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: (ematch != 1 && pmatch != 1)
                                      ? Colors.white
                                      :Colors.grey,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 3,
                            width: width * 0.27,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Colors.white,
                                  Theme.of(context).colorScheme.primary,
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Or Sign up With"),
                          ),
                          Container(
                            height: 3,
                            width: width * 0.27,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Theme.of(context).colorScheme.primary,
                                  Colors.white,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomSocialContainer(
                            height: height,
                            width: width,
                            image: 'assets/img/social/google.png',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          CustomSocialContainer(
                            height: height,
                            width: width,
                            image: 'assets/img/social/facebook.png',
                            onTap: () {},
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          CustomSocialContainer(
                            height: height,
                            width: width,
                            image: 'assets/img/social/apple-logo.png',
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
