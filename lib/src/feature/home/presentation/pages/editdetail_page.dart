import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/widget/button_widget.dart";

class EditDetailPage extends StatelessWidget {
  const EditDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 275.h,
      ),
      body: const SingleChildScrollView(
        child: Column(),
      ),
      bottomNavigationBar:
          MainButton(onPressed: () {}, text: Words.Call.tr(context)),
    );
  }
}
