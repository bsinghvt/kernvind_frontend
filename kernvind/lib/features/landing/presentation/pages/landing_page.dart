import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';
import 'package:kernvind/features/landing/presentation/widgets/instructional_slider_page.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authTokenState = ref.read(authTokenStateNotifierProvider.future);
    return Scaffold(
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header Section
                Container(
                  padding: const EdgeInsets.all(32.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 66, 74, 67),
                        Color.fromARGB(255, 123, 135, 123)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kernvind (Beta)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Platform for finding insights in your data',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              AutoRouter.of(context).push(const HomeRoute());
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              AutoRouter.of(context)
                                  .push(const PlaygroundSetupRoute());
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              'Try Playground',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'How it Works?',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondaryFixedVariant,
                        fontStyle: FontStyle.italic,
                      ),
                  textAlign: TextAlign.center,
                ),
                InstructionalVideoSlider(),
                // About Section
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What is Kernvind?',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        """
Kernvind is a platform where you can create multiple AI-powered assistants by integrating your own model services, such as OpenAI (ChatGPT) or Ollama, along with various data sources. It serves as a platform that allows you to use your AI services and data to uncover relevant information from vast, unstructured datasets. Imagine having the ability to generate bots that can sift through lengthy reports or books, delivering the insights you need and making unstructured data accessible and actionable.
""",
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),

                // Features Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Features',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      featureTile('Seamless Data Ingestion',
                          'Effortlessly connect your data sources for a comprehensive view.'),
                      featureTile('Custom AI Models',
                          'Leverage your own AI models on a single platform.'),
                      featureTile('Personalized Prompts',
                          'Create prompts tailored to your specific queries.'),
                      featureTile('Real-Time Insights',
                          'Access instant, actionable insights powered by advanced AI.'),
                      featureTile('Customizable Assistants',
                          'Design assistants to meet your unique needs.'),
                    ],
                  ),
                ),
                const SizedBox(height: 40), // Spacer before copyright
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const DisclaimerRoute());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                    child: const Center(
                      child: Text(
                        'Disclaimer: Click or tap to read disclaimer.',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), //
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  child: const Center(
                    child: SelectionArea(
                      child: MarkdownBody(
                          data:
                              'For support or any questions, please contact us at: [contact@kernvind.com](mailto:contact@kernvind.com).'
                          //shrinkWrap: true,
                          //physics: const NeverScrollableScrollPhysics(),
                          ),
                    ),
                  ),
                ),
                // Copyright Section
                const SizedBox(height: 10), // Spacer before copyright
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  child: Center(
                    child: SelectionArea(
                      child: MarkdownBody(
                        data: '''---
© 2024 Kernvind. All rights reserved.  
[Privacy Policy](https://privacypolicy.kernvind.com) | [Terms of Service](https://tos.kernvind.com)
---''',
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
                  ),
                ),
              ],
            );
          }),
    ));
  }

  // Widget for Feature Tile
  Widget featureTile(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Color(0xFF4CAF50)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
