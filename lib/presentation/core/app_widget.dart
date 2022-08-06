import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/application/auth/auth_bloc/auth_bloc.dart';
import 'package:intern_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:intern_app/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:intern_app/application/user/user_bloc.dart';
import 'package:intern_app/injection.dart';
import 'package:intern_app/presentation/route/router.gr.dart';


class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<AuthBloc>()..add(const AuthEvent.requestAuthStatus())),
          BlocProvider(create: (context) => getIt<SignInFormBloc>()),
          BlocProvider(create: (context) => getIt<SignUpFormBloc>()),
          BlocProvider(
            create: (context) =>
                getIt<UserBloc>()..add(const UserEvent.getCurrentUser()),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          title: 'Intern-project',
          theme: ThemeData(primarySwatch: Colors.deepPurple),
        ));
  }
}
