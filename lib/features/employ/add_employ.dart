import 'package:dwellio_admin/common_widget/custom_alert_dialog.dart';
import 'package:dwellio_admin/common_widget/custom_image_picker_button.dart';
import 'package:dwellio_admin/common_widget/custom_text_formfield.dart';
import 'package:dwellio_admin/util/value_validator.dart';
import 'package:flutter/material.dart';

class AddEmploy extends StatelessWidget {
  AddEmploy({
    super.key,
  });
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      title: 'Add Employee',
      content: Flexible(
        child: ListView(
          children: [
            Text(
              'Emplpoy image',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF2D2D2D),
                  ),
            ),
            const SizedBox(height: 5),
            CustomImagePickerButton(
              onPick: (file) {},
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Name',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF2D2D2D),
                  ),
            ),
            const SizedBox(height: 5),
            CustomTextFormField(
              labelText: 'Enter Name',
              controller: _nameController,
              validator: alphabeticWithSpaceValidator,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF2D2D2D),
                  ),
            ),
            const SizedBox(height: 5),
            CustomTextFormField(
              labelText: 'Enter email',
              controller: _emailController,
              validator: alphabeticWithSpaceValidator,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Phone',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFF2D2D2D),
                  ),
            ),
            const SizedBox(height: 5),
            CustomTextFormField(
              labelText: 'Enter phone',
              controller: _phoneController,
              validator: alphabeticWithSpaceValidator,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
