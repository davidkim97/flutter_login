import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 키

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 키를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리 할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField("Password"),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // 유효성 검사
                Navigator.pushNamed(context, "/home"); // Navigator를 이용하여 화면전환
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
