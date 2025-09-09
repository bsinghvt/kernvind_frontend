import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/widgets/app_bar.dart';

@RoutePage()
class SubscriptionPlansPage extends ConsumerStatefulWidget {
  const SubscriptionPlansPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubscriptionPlansPageState();
}

class _SubscriptionPlansPageState extends ConsumerState<SubscriptionPlansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Choose Your Plan',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SubscriptionPlanCard(
                title: "Free Plan",
                price: "\$0/month",
                features: [
                  "1 AI Assistant",
                  "Limited to 100 queries/month",
                  "Access to basic data sources",
                ],
                buttonText: "Start Free",
                buttonColor: Colors.green,
              ),
              SizedBox(height: 16),
              SubscriptionPlanCard(
                title: "Pro Plan",
                price: "\$19.99/month",
                features: [
                  "5 AI Assistants",
                  "Unlimited queries",
                  "Priority support",
                  "Access to premium data sources",
                ],
                buttonText: "Go Pro",
                buttonColor: Color.fromARGB(255, 41, 111, 169),
              ),
              SizedBox(height: 16),
              SubscriptionPlanCard(
                title: "Enterprise Plan",
                price: "Custom Pricing",
                features: [
                  "Unlimited AI Assistants",
                  "Dedicated support",
                  "Custom integrations",
                  "Enhanced security & analytics",
                ],
                buttonText: "Contact Us",
                buttonColor: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscriptionPlanCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final String buttonText;
  final Color buttonColor;

  const SubscriptionPlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.buttonText,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(fontSize: 18, color: Colors.indigo[400]),
            ),
            SizedBox(height: 16),
            ...features.map(
              (feature) => Row(
                children: [
                  Icon(Icons.check, color: Colors.green, size: 18),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      feature,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //  backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Handle subscription logic here
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
