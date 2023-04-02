import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFF39A160),
        title: Text('Terms of Service'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introduction',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'These Terms of Service govern your use of our mobile application. By accessing or using the application, you are agreeing to these Terms of Service and entering into a legally binding agreement with us. If you do not agree to these terms, please do not use the application.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16.0),
            Text(
              'User Conduct',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'You agree to use the application only for lawful purposes and in a manner that does not infringe the rights of, or restrict or inhibit the use and enjoyment of, the application by any third party. You must not use the application in any way that causes, or is likely to cause, the application or access to it to be interrupted, damaged or impaired in any way.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16.0),
            Text(
              'Intellectual Property',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'All content included on the application, such as text, graphics, logos, images, audio clips, video, data, music, software, and other material (collectively "Content") is owned or licensed property of us or our suppliers or licensors and is protected by copyright, trademark, patent, or other proprietary rights. The collection, arrangement, and assembly of all Content on the application are our exclusive property and are protected by U.S. and international copyright laws.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16.0),
            Text(
              'Termination',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
              'We may terminate or suspend your access to all or part of the application, without notice, for any conduct that we, in our sole discretion, believe is in violation of any applicable law, is harmful to the interests of another user, or is otherwise inappropriate.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16.0),
            Text(
              'Governing Law',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16.0),
            Text(
                'These Terms of Service and any dispute or claim arising out of, or related to, them, their subject matter, or their formation (in each case, including non-contractual disputes or claims) shall be governed by and construed in accordance with the laws of the State of [Insert State], without giving effect to any choice or conflict of law provision or rule.'),
          ],
        ),
      ),
    );
  }
}
