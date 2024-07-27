import 'package:doctor_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Mahmoud,',
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you Today?',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
            radius: 24.0,
            backgroundColor: AppColor.moreLighterGray,
            child: SvgPicture.asset('assets/svgs/Notification.svg'))
      ],
    );
  }
}
