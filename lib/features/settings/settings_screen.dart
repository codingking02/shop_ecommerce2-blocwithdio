import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:shop_ecommerce/shared/adaptive/adaptivw_indicator.dart';
import 'package:shop_ecommerce/shared/components/componets.dart';
import 'package:shop_ecommerce/shared/components/constants.dart';

class SettingsScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [

                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'name must not be empty';
                    }
                    return null;
                  },
                  label: 'Name',
                  prefix: Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                defaultFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                  label: 'Email Address',
                  prefix: Icons.email,
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'phone must not be empty';
                    }

                    return null;
                  },
                  label: 'Phone',
                  prefix: Icons.phone,
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    function: () {

                    },
                    text: 'update'),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    function: () {
                      signOut(context);
                    },
                    text: 'Logout'),
              ],
            ),
          ),
        ),
      );


  }
}
