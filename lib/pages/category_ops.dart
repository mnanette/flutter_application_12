// ignore_for_file: use_build_context_synchronously

import 'package:easy_pos_r5/helpers/sgl_helper.dart';
import 'package:easy_pos_r5/widgets/app_elevated_button.dart';
import 'package:easy_pos_r5/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CategoriesOpsPage extends StatefulWidget {
  const CategoriesOpsPage({super.key});

  @override
  State<CategoriesOpsPage> createState() => _CategoriesOpsPageState();
}

class _CategoriesOpsPageState extends State<CategoriesOpsPage> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                AppTextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                    label: 'Name'),
                const SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                    controller: descriptionController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Description is required';
                      }
                      return null;
                    },
                    label: 'Description'),
                const SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                  label: 'Submit',
                  onPressed: () async {
                    await onSubmit();
                  },
                ),
              ],
            )),
      ),
    );
  }

  Future<void> onSubmit() async {
    try {
      if (formKey.currentState!.validate()) {
        var sqlHelper = GetIt.I.get<SqlHelper>();
        await sqlHelper.db!.insert('categories', {
          'name': nameController.text,
          'description': descriptionController.text
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Category Saved Successfully')));
        Navigator.pop(context, true);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text('Error In Create Category : $e')));
    }
  }
}
