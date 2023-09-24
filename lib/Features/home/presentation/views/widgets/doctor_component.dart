import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Features/doctor%20details(booking)/presentation/views/doctor_details.dart';
import 'package:untitled/core/app_colors.dart';
import 'package:untitled/core/app_styles.dart';
import 'package:untitled/core/utils/app_assets.dart';
import 'package:untitled/core/utils/size_config.dart';

class DoctorComponent extends StatelessWidget {
  const DoctorComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DoctorDetails.id);
      },
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.color0xFFF3FAF9,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: SizeConfig.horizontalBlock,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: AppColors.color0xFF173F68,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        width: 150 * SizeConfig.horizontalBlock,
        child: Column(
          children: [
            Container(
              height: 100 * SizeConfig.verticalBlock,
              decoration: ShapeDecoration(
                color: AppColors.color0xFF173F68,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 5 * SizeConfig.verticalBlock,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 8 * SizeConfig.horizontalBlock,
                  right: 16 * SizeConfig.horizontalBlock),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Doctor Name",
                    style: AppStyles.color0xFF020D18FontSize16FontWeightW400,
                  ),
                  SizedBox(
                    height: 6 * SizeConfig.verticalBlock,
                  ),
                  Text(
                    "doctor major and certification",
                    style: AppStyles.color0xB2030E19FontSize12FontWeightW400,
                  ),
                  SizedBox(
                    height: 20 * SizeConfig.verticalBlock,
                  ),
                  Row(
                    children: [
                      Text(
                        "more details",
                        style: AppStyles.color0xFF020D18FontSize12FontWeightW400,
                      ),
                      SizedBox(
                        width: 5 * SizeConfig.horizontalBlock,
                      ),
                      SvgPicture.asset(
                        AppAssets.arrowIcon,
                        width: 20 * SizeConfig.horizontalBlock,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
