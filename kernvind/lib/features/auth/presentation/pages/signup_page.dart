import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/features/auth/domain/entities/signup_entity.dart';

import 'package:kernvind/features/auth/presentation/provider/auth_provider.dart';
import 'package:kernvind/features/auth/presentation/provider/auth_provider_state.dart';
import 'package:kernvind/features/auth/presentation/widgets/auth_field.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  bool? _agreeTerms = true;
  bool? _ageCheck = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullNameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(signUpAuthStateProvider);
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
                      'Sign Up.',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthField(
                      hintText: 'Full Name',
                      controller: _fullNameController,
                      validator: fullNameValidator('Full Name'),
                    ),
                    const SizedBox(
                      height: 10,
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
                      validator: passwordValidator('Password'),
                      isObscureText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: _ageCheck,
                            onChanged: (bool? value) {
                              setState(() {
                                _ageCheck = value;
                              });
                            }),
                        Text(
                          'I confirm that I am 18 years or older.',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: _agreeTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                _agreeTerms = value;
                              });
                            }),
                        SelectionArea(
                          child: MarkdownBody(
                            data:
                                '''I agree to the [Terms of Service](https://tos.kernvind.com) and [Privacy Policy](https://privacypolicy.kernvind.com).''',
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
                      ],
                    ),
                    authState is AuthLoading
                        ? const CircularProgressIndicator()
                        : _ageCheck == true && _agreeTerms == true
                            ? AppGradientButton(
                                buttonText: 'Sign Up',
                                onPressed: () {
                                  _passwordController.text =
                                      _passwordController.text.trim();
                                  _emailController.text =
                                      _emailController.text.trim();
                                  _fullNameController.text =
                                      _fullNameController.text.trim();
                                  if (_formKey.currentState!.validate()) {
                                    ref
                                        .read(signUpAuthStateProvider.notifier)
                                        .signupUser(SignupEntity(
                                          fullName: _fullNameController.text,
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        ));
                                  }
                                },
                              )
                            : Container(),
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
