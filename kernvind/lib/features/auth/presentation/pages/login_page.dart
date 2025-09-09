import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';

import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/features/auth/domain/entities/login_entity.dart';
import 'package:kernvind/features/auth/presentation/provider/auth_provider.dart';
import 'package:kernvind/features/auth/presentation/provider/auth_provider_state.dart';
import 'package:kernvind/features/auth/presentation/widgets/auth_field.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(loginAuthStateProvider);
    if (authState is AuthSuccess) {
      AutoRouter.of(context).replaceAll([const AuthUserNavigationRoute()]);
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Kernvind')),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign In.',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthField(
                      hintText: 'Email',
                      controller: _emailController,
                      validator: emailValidator('Email'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthField(
                      hintText: 'Password',
                      controller: _passwordController,
                      validator: loginPasswordValidator('Password'),
                      isObscureText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SelectionArea(
                      child: MarkdownBody(
                        data: '''
By signing in, you confirm that you are 18 years or older and agree to our [Terms of Service](https://tos.kernvind.com) and [Privacy Policy](https://privacypolicy.kernvind.com).''',
                        onTapLink: (text, url, title) {
                          if (url != null) {
                            if (url.startsWith('https://')) {
                              try {
                                final uri = Uri.parse(url);
                                launchUrl(uri, webOnlyWindowName: '_blank');
                                // ignore: empty_catches
                              } catch (e) {}
                            }
                          }
                        },
                        //shrinkWrap: true,
                        //physics: const NeverScrollableScrollPhysics(),
                      ),
                    ),
                    authState is AuthLoading
                        ? const CircularProgressIndicator()
                        : AppGradientButton(
                            buttonText: 'Sign In',
                            onPressed: () {
                              _passwordController.text =
                                  _passwordController.text.trim();
                              _emailController.text =
                                  _emailController.text.trim();
                              if (_formKey.currentState!.validate()) {
                                ref
                                    .read(loginAuthStateProvider.notifier)
                                    .loginUser(LoginEntity(
                                        email: _emailController.text,
                                        password: _passwordController.text));
                              }
                            },
                          ),
                    if (authState is AuthFailure)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          authState.error.error,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    /* const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(const SignUpRoute());
                      },
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account? ',
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              TextSpan(
                                  text: 'Sign Up',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: AppPallete.gradient2,
                                          fontWeight: FontWeight.bold))
                            ]),
                      ),
                    )*/
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
