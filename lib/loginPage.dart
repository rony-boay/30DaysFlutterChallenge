// ignore: file_names
import 'package:crashcourse_1/homepage.dart';
import 'package:crashcourse_1/utilis/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  // ignore: non_constant_identifier_names
  bool B_shape = false;
  // ignore: non_constant_identifier_names
  bool signin_button = false;
  final _formkey = GlobalKey<FormState>();

  movetotop(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        signin_button = true;
      });
      await Future.delayed(
        Duration(milliseconds: 500),
      );

      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        signin_button = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              Text(
                "WELCOME $name",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'Enter User Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "user name cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 24,
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password should not be empty";
                    } else if (value.length < 8) {
                      return "password characters should not less than 8";
                    }
                    return null;
                  },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return "user name cannot be empty";
                  //   }

                  // },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
                child: Row(
                  children: [
                    Material(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.circular(signin_button ? 50 : 4),
                      child: InkWell(
                        splashColor: Color.fromARGB(255, 255, 251, 34),
                        onTap: () => movetotop(context),
                        child: AnimatedContainer(
                          child: Center(
                            child: signin_button
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Sign in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                          duration: Duration(milliseconds: 500),
                          height: signin_button ? 40 : 40,
                          width: signin_button ? 40 : 80,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 40,
                    //   width: 80,
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     child: const Text('sign in'),
                    //   ),
                    // ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text('Sign in'),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: size(40, 50),
                    //   ),
                    // ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeroute);
                        },
                        child: const Text('log in'),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          B_shape = true;
                        });
                        await Future.delayed(
                          Duration(milliseconds: 505),
                        );
                        Navigator.pushNamed(context, MyRoutes.homeroute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),

                        child: B_shape
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Forget Password',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                        //color: Colors.deepOrange,
                        height: B_shape ? 40 : 40,
                        width: B_shape ? 40 : 140,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(B_shape ? 50 : 5),
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
