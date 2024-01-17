import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/controllers/two_d_prview_page_controller.dart';
import 'package:shwe_bo_2d_3d/pages/two_d_preview_page/two_d_pre_live_widget.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/utils/global_function.dart';
import 'package:shwe_bo_2d_3d/widgets/my_wallet_container.dart';
import 'package:shwe_bo_2d_3d/widgets/white_Container_three_column.dart';

class TwoDPreviewPage extends StatelessWidget {
  static const route = '/two_d_preview_page';
  const TwoDPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TwoDPreViewController());
    return Scaffold(
      appBar: GlobalFunction.appBar('2D'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(gradient: backGroundGradient),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Column(
                  children: [
                    headWidget(),
                    TwoDPreLiveWidget(controller: controller,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headWidget() {
    return Column(
      children: [
        const MyWalletContainer(
          visibleSecond: true,
        ),
        const SizedBox(
          height: 16,
        ),
        WhiteContainerThreeColumnWidget(
          firstText: 'မှတ်တမ်း',
          firstIcon: Icons.receipt,
          firstOnTap: () {},
          secondText: 'ကံထူးရှင်များ',
          secondIcon: EneftyIcons.moneys_outline,
          secondOnTap: () {},
          thirdText: 'ပိတ်ရက်',
          thirdIcon: EneftyIcons.calendar_remove_outline,
          thirdOnTap: () {},
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
