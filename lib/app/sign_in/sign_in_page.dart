import 'package:first_flutter_project/app/sign_in/sign_in_button.dart';
import 'package:first_flutter_project/app/sign_in/social_sign_in_button.dart';
import 'package:first_flutter_project/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIME🐒TRACKER🕐🕑🕒..'),
        elevation: 5.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 48.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign In With Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign In With Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign In With email',
            textColor: Colors.white,
            color: Colors.teal,
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
