import 'package:atividade1/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color color = const Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  double widthLenght = 343;
  double heightLenght = 57;

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 100),
            //   child: Container(
            //     alignment: Alignment.center,
            //     child: Image.asset('assets/images/single_icon_blue.png'),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: AnimatedContainer(
                    width: selected ? 72.0 : 72.0,
                    height: selected ? 72.0 : 72.0,
                    color: selected ? Colors.blue[100] : Colors.white,
                    alignment:
                    selected ? Alignment.center : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child:  selected ? const FlutterLogo(size: 72) : Image.asset('assets/images/single_icon_blue.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(0xFF, 0x22, 0x32, 0x63),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sign in to continue',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(0xFF, 0x90, 0x98, 0xB1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 343,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Your Email',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.email),
                      ),
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 343,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Password',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.lock),
                      ),
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 57,
                width: 343,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color),
                  child: const Text('Sign in'),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(RouterGenerator.homePage);
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'OR',
                style: TextStyle(
                    color: Color.fromARGB(0xFF, 0x90, 0x98, 0xB1),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 57,
                width: 343,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Image.asset('assets/images/google.png'),
                      ),
                      const Text(
                        'Login with Google',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 57,
                width: 343,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 65),
                        child: Image.asset('assets/images/facebook.png'),
                      ),
                      const Text(
                        'Login with facebook',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 12, color: color),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Don't have account?",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 12, color: color),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouterGenerator.registerForm);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
