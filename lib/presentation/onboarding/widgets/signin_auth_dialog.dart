import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInAuthDialog extends StatefulWidget {
  const SignInAuthDialog({Key? key}) : super(key: key);

  @override
  State<SignInAuthDialog> createState() => _SignInAuthDialogState();
}

class _SignInAuthDialogState extends State<SignInAuthDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: BlocListener<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          if (!state.isSubmitting) {
            Navigator.of(context, rootNavigator: true).pop();
          }
        },
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Row(children: const [
            CircularProgressIndicator(),
            SizedBox(width: 20.0),
            Text("Authenticating...",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))
          ]),
        ),
      ),
    );
  }
}
