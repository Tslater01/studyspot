import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF39A160),
        title: Text('Privacy Policy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduction',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about our policy, or our practices with regards to your personal information, please contact us.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0),
              Text(
                'Information We Collect',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We do not collect any personal information about you. We may collect anonymous usage data to improve our app.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0),
              Text(
                'How We Use Your Information',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We use your anonymous usage data to improve our app and your experience using it.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0),
              Text(
                'Sharing Your Information',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We do not share your personal information with third parties.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0),
              Text(
                'Changes to This Policy',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 8.0),
              Text(
                'We reserve the right to modify this privacy policy at any time. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}