import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const privacyPolicyUrl =
    'https://dulyana2003.github.io/fitflow-redesign/docs/privacy-policy.html';

class PrivacyLink extends StatelessWidget {
  const PrivacyLink({super.key});

  Future<void> _open(BuildContext context) async {
    final ok = await launchUrl(
      Uri.parse(privacyPolicyUrl),
      mode: LaunchMode.externalApplication,
    );
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open the privacy policy.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _open(context),
      child: const Text('Privacy Policy'),
    );
  }
}