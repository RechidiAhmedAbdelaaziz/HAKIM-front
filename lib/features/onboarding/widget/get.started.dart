import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/helpers/extension.dart';
import 'package:front/core/routes/routes.dart';
import 'package:front/core/widgets/continue.button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 689.h,
      child: ContinueButton(
        title: "AppStrings.getStarted.tr",
        press: () {
          context.offNamed(Routes.home);
        },
      ),
    );
  }
}
