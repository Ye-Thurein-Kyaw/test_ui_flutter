import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration:  const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFACB2D5)),
                  child:  Icon(
                    Icons.person,
                    size: 24,
                    color: Get.theme.colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Su Yee',
                      style: TextStyle(
                        color: Get.theme.colorScheme.onPrimary,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'ID: +95925853453',
                      style: TextStyle(
                        color: Color(0xFFACB2D5),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/images/myanmar.png"),
                const SizedBox(
                  width: 16,
                ),
                Icon(Icons.notifications_active,color: Get.theme.colorScheme.primary,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
