import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset('assets/images/login_image.png'),
          const Text(
            'WELCOME',
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
              decoration: const InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter User Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 24,
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter Password',
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 70.0, horizontal: 130),
            child: Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('sign in'),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 45,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('log in'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
