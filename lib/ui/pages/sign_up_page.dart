import "package:airplane/shared/theme.dart";
import "package:airplane/ui/widgets/custom_button.dart";
import "package:airplane/ui/widgets/custom_text_form_field.dart";
import "package:flutter/material.dart";

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get \nyour next journey",
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
            title: 'Full Name', hintText: 'Your Full Name');
      }

      ;

      Widget emailInput() {
        return CustomTextFormField(
            title: 'Email Address', hintText: 'Your Email Address');
      }

      Widget passwordInput() {
        return CustomTextFormField(
            title: 'Password', hintText: 'Your Password', obscureText: true);
      }

      ;

      Widget hobbyInput() {
        return CustomTextFormField(title: 'Hobby', hintText: 'Your Hobby');
      }

      ;

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/get-bonus');
          },
        );
      }

      ;

      Widget tacButton() {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
            tacButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [title(), inputSection()],
        ),
      ),
    );
  }
}
