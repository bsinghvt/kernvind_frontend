import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';

import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/features/home/presentaion/provider/google_auth/google_auth_state.dart';
import 'package:kernvind/features/home/presentaion/provider/google_auth/google_sign_in_provider.dart';
import 'package:kernvind/features/home/presentaion/widgets/google_sign_in_button.dart';

import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final googleAuthState = ref.watch(googleAuthProvider);
    final authTokenState = ref.read(authTokenStateNotifierProvider.future);

    return Scaffold(
      appBar: AppBar(title: const Text('Kernvind')),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: authTokenState,
            builder:
                (BuildContext context, AsyncSnapshot<AuthTokenState> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data is AvailableAccessTokenState) {
                  AutoRouter.of(context)
                      .replaceAll([const AuthUserNavigationRoute()]);
                }
              }
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppGradientButton(
                          buttonText: 'Login',
                          onPressed: () {
                            AutoRouter.of(context).push(const LoginRoute());
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      AppGradientButton(
                          buttonText: 'Sign Up',
                          onPressed: () {
                            AutoRouter.of(context).push(const SignUpRoute());
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Or Continue With",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                          const Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                      const SizedBox(
                        height: 10,
                      ),
                      buildGoogleSignInButton(
                        onPressed: () async {
                          await ref
                              .read(googleAuthProvider.notifier)
                              .handleGoogleSignIn();
                        },
                      ),
                      if (googleAuthState is GoogleAuthFailure)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.error,
                            ),
                            googleAuthState.error.error,
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
