import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Builder"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        text: 'Name',style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: '*',style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                ),
                FormBuilderTextField(name: "name",
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  hintText: "Name"
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.max(2)
                ]),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: const TextSpan(
                      text: 'Email',style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: '*',style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ),
                FormBuilderTextField(name: "email",
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email"
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),

                ),

                const SizedBox(height: 10),

                FilledButton(onPressed: (){
                  _formKey.currentState?.saveAndValidate();
                }, child: Text("Validate")),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}
