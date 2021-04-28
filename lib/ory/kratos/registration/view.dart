import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'package:blog/ory/constants.dart';
import 'package:blog/ory/kratos/registration/model.dart';
import 'package:blog/ory/kratos/registration/controller.dart';
import 'package:blog/ory/kratos/registration/service.dart';

// Create a Form widget.
class RegistrationView extends StatefulWidget {
  @override
  RegistrationFormState createState() {
    return RegistrationFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class RegistrationFormState extends State<RegistrationView> {
  final RegistrationController registrationController =
      Get.put(new RegistrationController());

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<RegistrationFormState>.
  final _formKey = GlobalKey<FormState>();

  String? username;
  String? email;
  String? password;
  String? verifyPassword;
  String? firstName;
  String? lastName;

  Widget _buildUserName() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Username'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Username is required';
          }
          return null;
        },
        onSaved: (value) {
          username = value;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Email is required';
          }
          return null;
        },
        onSaved: (value) {
          email = value;
        });
  }

  Widget _buildPassword() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Password'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          return null;
        },
        onSaved: (value) {
          password = value;
        });
  }

  Widget _buildVerifyPassword() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Verify password'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Verify password is required';
          } else if (value != password) {
            return 'Verify Password and password are not equal!';
          }
          return null;
        },
        onSaved: (value) {
          verifyPassword = value;
        });
  }

  Widget _buildFirstName() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Firstname'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Firstname is required';
          }
          return null;
        },
        onSaved: (value) {
          firstName = value;
        });
  }

  Widget _buildLastName() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Lastname'),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Lastname is required';
          }
          return null;
        },
        onSaved: (value) {
          lastName = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildUserName(),
          _buildEmail(),
          _buildPassword(),
          _buildVerifyPassword(),
          _buildFirstName(),
          _buildLastName(),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              _formKey.currentState?.save();
              if (_formKey.currentState!.validate()) {
                Object body = {
                  'username': username,
                  'email': email,
                  'password': password,
                  'firstname': firstName,
                  'lastname': lastName,
                };
                RegistrationService.postRegistration(
                    registrationController.initRegistration.value.id, body);
              }
            },
            child: Text('Submit',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
