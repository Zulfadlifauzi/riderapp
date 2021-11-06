import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:lottie/lottie.dart';
import 'package:riderapp/auth/signup.dart';
import 'package:riderapp/auth/forgot_password.dart';
import 'package:riderapp/models/login.dart';
import 'package:riderapp/widgets/bottom_tab_navigator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<LoginScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<FormState>();

  late LoginRequestModel requestModel;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  void initState() {
    requestModel = LoginRequestModel();
  }

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
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Hello Again,',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 85, top: 10),
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 1),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Lottie.asset('assets/lottie/rider.json'),
                ),
                TextFormField(
                    onSaved: (input) => requestModel.email = input,
                    controller: emailController,
                    decoration:
                        const InputDecoration(labelText: 'Enter your email'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Enter your email'),
                      EmailValidator(errorText: 'Not A Valid Email')
                    ])),
                SizedBox(height: height * 0.05),
                TextFormField(
                  onSaved: (input) => requestModel.password = input,
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
                            if (_formKey.currentState!.validate()) {}
                            if (validateAndSave()) {
                              print(requestModel.toJson());
                            }
                            emailController.clear();
                            passController.clear();
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen()));
                      },
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
}
