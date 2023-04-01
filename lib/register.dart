import 'data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formfield = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Form(
            key: _formfield,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    "assets/images/logoreg.png",
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/register.png",
                    height: 80,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      controller: name,
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your username",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username is empty";
                        }
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email cannot be empty";
                        } else if (!value.contains('@')) {
                          return 'Enter a valid email';
                        }
                        return null;
                      }),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: password,
                    obscureText: showpass,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            showpass = !showpass;
                          });
                        },
                        child: Icon(
                            showpass ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (password.text.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: confirmpassword,
                    obscureText: showpass,
                    decoration: InputDecoration(
                      labelText: "Re-enter Password",
                      hintText: "Re-enter your Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            showpass = !showpass;
                          });
                        },
                        child: Icon(
                            showpass ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (password.text.length < 6) {
                        return "Password must be at least 6 characters";
                      } else if (value != password.text) {
                        return "Password does not match";
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      //validation
                      if (_formfield.currentState!.validate()) {
                        name.clear();
                        email.clear();
                        password.clear();
                        confirmpassword.clear();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (buildContext) => DataPage(
                                    name: '',
                                  )),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 14, 61, 163),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
