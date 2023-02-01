import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
              child: Column(
            children: const [
              Image(
                image: AssetImage('assets/images/signin.png'),
              ),
              Text('pppppppppp'),
            ],
          ))
        ]),
      ),
    );
  }
}
