import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/apps/style/styles.dart';
import 'package:food_delivery_app/page/account_page/recovery_page/recovery_page.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
                'Please enter your email address. You will recieve a link to set a new password via email.',
                style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              onChanged: (val) {
                if (val != "") {
                  setState(() {
                    clrButton = true;
                  });
                }
              },
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Your Email',
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                    icon: const Icon(CupertinoIcons.multiply),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecoveryPage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xff462B96),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                "Send Code",
                style: GlobalStyles.textStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
