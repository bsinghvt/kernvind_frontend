import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:url_launcher/url_launcher.dart';

const String openAiDisclaimer = '''
## **Disclaimer for OpenAI API Usage**

When using the OpenAI API through Kernvind, users acknowledge and agree to the following:

- **Costs**: OpenAI’s API services are subject to usage fees. Users are responsible for any costs associated with using OpenAI’s API, including but not limited to token consumption, processing charges, and any other related fees.
  
- **User Responsibility**: It is the user's responsibility to manage their OpenAI API usage, monitor costs, and ensure they are aware of their usage limits and billing structure. Kernvind does not control or manage OpenAI's pricing or billing policies.
  
- **Account Management**: Users must maintain their own OpenAI API key and account, and are responsible for securing their API credentials. Kernvind will only interact with OpenAI’s API based on the user’s provided API key and configuration.

By using the OpenAI API within Kernvind, users agree to comply with OpenAI's terms of service and bear all associated costs.
''';

@RoutePage()
class GetChatGptApiKeyPage extends StatelessWidget {
  const GetChatGptApiKeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to Get ChatGPT API Key'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            InstructionStep(
              stepNumber: 1,
              title: 'Log in to OpenAI',
              description:
                  'Open your web browser and navigate to [OpenAI\'s Website](https://platform.openai.com/api-keys "Visit OpenAI\'s Platform") Log in with your credentials or use a third-party account.',
              imagePath:
                  'assets/howtos/openai_login.png', // Replace with actual asset path
            ),
            InstructionStep(
              stepNumber: 2,
              title: 'Create a New API Key',
              description:
                  'In the "API Keys" section at the top-right corner, click on "Create new secret key". Copy the key immediately as it will not be shown again. This is the key you will use in Kernvind, when creating any OpenAI model',
              imagePath:
                  'assets/howtos/create_openai_key.png', // Replace with actual asset path
            ),
            InstructionStep(
              stepNumber: 3,
              title: 'Store Your API Key Securely',
              description:
                  'Paste your API key into a secure location such as a password manager. Never share your API key publicly.',
            ),
            FAQSection(),
          ],
        ),
      ),
    );
  }
}

class InstructionStep extends StatelessWidget {
  final int stepNumber;
  final String title;
  final String description;
  final String? imagePath;

  const InstructionStep({
    super.key,
    required this.stepNumber,
    required this.title,
    required this.description,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Step $stepNumber: $title',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 8),
        SelectionArea(
          child: MarkdownBody(
            data: description,
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
        const SizedBox(height: 8),
        if (imagePath != null)
          Image.asset(
            imagePath!,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Placeholder(fallbackHeight: 150),
          ),
        const Divider(height: 24, thickness: 1),
      ],
    );
  }
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Frequently Asked Questions',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 8),
        const Text('Q: What if I lose my API key?'),
        const Text(
            'A: You’ll need to generate a new one. Lost keys cannot be retrieved.'),
        const SizedBox(height: 16),
        const Text('Q: How do I upgrade my plan for higher usage?'),
        SelectionArea(
          child: MarkdownBody(
            data:
                'A: Visit the [Billing section](https://platform.openai.com/account/billing) in the OpenAI dashboard to manage your plan.',
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
        const SizedBox(height: 16),
        const Text('Q: What if I encounter issues?'),
        SelectionArea(
          child: MarkdownBody(
            data:
                'A: Check OpenAI\'s [support page](https://help.openai.com/) or contact their customer support.',
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
        const SizedBox(height: 50),
        const SelectionArea(
          child: MarkdownBody(data: openAiDisclaimer
              //shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              ),
        ),
        const SizedBox(height: 50),
        const Text(
          '© 2024 Kernvind. All rights reserved.',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
