import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHomeView extends StatelessWidget {
  const SearchHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: kSearchHome,
        hintText: kSearch,
        onTapIcon: () {},
      ),
      body: const SearchHomeViewBody(),
    );
  }
}

class SearchHomeViewBody extends StatelessWidget {
  const SearchHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kToolbarHeight + 75.h),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: AppLinear.linearPages,
      ),
    );
  }
}
