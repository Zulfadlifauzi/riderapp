import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:riderapp/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<LoginScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    bool hidePassword = true;

    return Scaffold(
      appBar: AppBar(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFffffff),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                const Text(
                  'Here to Get',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  'Welcome !',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(height: height * 0.05),
                TextFormField(
                    controller: emailController,
                    decoration:
                        const InputDecoration(labelText: 'Enter your email'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter your email'),
                      EmailValidator(errorText: 'Not A Valid Email')
                    ])),
                SizedBox(height: height * 0.05),
                TextFormField(
                  controller: passController,
                  decoration:
                      const InputDecoration(labelText: 'Enter your password'),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Enter your password'),
                    MinLengthValidator(6,
                        errorText: 'Should be at least 6 characters')
                  ]),
                  obscureText: hidePassword,
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF363f93))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: const Text('Sign up',
                            style: TextStyle(color: Colors.black))),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF363f93))),
                        onPressed: () {},
                        child: const Text('Sign in',
                            style: TextStyle(color: Colors.black))),
                    Text(
                      'Forgot password',
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

//ignore: must_be_immutable
}
