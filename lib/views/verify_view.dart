import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VarifyEmailView extends StatefulWidget {
  const VarifyEmailView({super.key});

  @override
  State<VarifyEmailView> createState() => _VarifyEmailViewState();
}

class _VarifyEmailViewState extends State<VarifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text('Please Verify your email address:'),
          TextButton(
              onPressed: () async {
                final user = FirebaseAuth.instance.currentUser;
                user?.sendEmailVerification();
              },
              child: const Text('Send email verification'))
        ],
      ),
    );
  }
}