import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:riderapp/screens/signup.dart';
import 'package:riderapp/widgets/bottom_tab_navigator.dart';

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
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Hello Again!',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60, top: 10),
                  child: Text(
                    'How are you today ?',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
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
                Column(
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
                                  builder: (context) => const SignupScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Dont have an account ? ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text('Register',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
                          ],
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomTabNavigator()));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomTabNavigator()));
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF363f93))),
                      onPressed: () {},
                      child: const Text(
                        'Forgot password ',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
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
