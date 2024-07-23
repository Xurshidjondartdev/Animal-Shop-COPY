import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/svg.dart";

import "colors.dart";

@immutable
sealed class AppImages {
  const AppImages._();

  ///  SVG

  static final SvgPicture signInGoogle = SvgPicture.asset(
    "assets/icons/ic_sing_in_google.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeIcon = SvgPicture.asset(
    "assets/icons/ic_home.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture homeIconGreen = SvgPicture.asset(
    "assets/icons/ic_home_green.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture heartIcon = SvgPicture.asset(
    "assets/icons/ic_heart.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture heartIconGreen = SvgPicture.asset(
    "assets/icons/ic_heart_green.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture chatIcon = SvgPicture.asset(
    "assets/icons/ic_chat.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture chatIconGreen = SvgPicture.asset(
    "assets/icons/ic_chat_green.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture profileIcon = SvgPicture.asset(
    "assets/icons/ic_profile.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final SvgPicture profileIconGreen = SvgPicture.asset(
    "assets/icons/ic_profile_green.svg",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  /// PNG


  static final Image mapPOinter = Image.asset(
    "assets/images/map_pin.png",
    height: 14.h,
    width: 14.h,
    fit: BoxFit.cover,
  );
  static final Image productImges = Image.asset(
    "assets/images/products.png",
    height: 154.h,
    width: 156.h,
    fit: BoxFit.cover,
  );

  static final Image postAnDefaultImage = Image.asset(
    "assets/images/post_an_default_picture.png",
    height: 70.h,
    width: 70.h,
    fit: BoxFit.fitHeight,
  );

  static final Image flagEN = Image.asset(
    "assets/flags/us.png",
    width: 24.w,
    height: 18.h,
    fit: BoxFit.cover,
  );
  static final Image flagRU = Image.asset(
    "assets/flags/ru.png",
    width: 24.w,
    height: 18.h,
    fit: BoxFit.cover,
  );
  static final Image flagUZ = Image.asset(
    "assets/flags/uz.png",
    width: 24.w,
    height: 18.h,
    fit: BoxFit.cover,
  );

  static final Image onbordingMainImage = Image.asset(
    "assets/images/onbording_main_image.png",
    height: 233.h,
    width: double.maxFinite,
    fit: BoxFit.fitHeight,
  );

  static final Image signInSticker = Image.asset(
    "assets/images/sign_in_sticker.png",
    height: 24.h,
    width: 24.253.w,
    fit: BoxFit.fitHeight,
  );

  static final Image signInFacebook = Image.asset(
    "assets/images/sign_in_facebook.png",
    height: 25.h,
    width: 25.w,
    fit: BoxFit.fitHeight,
  );

  static final Image forgetPasArrowButton = Image.asset(
    "assets/images/forget_pas_arrow_button.png",
    height: 30.h,
    width: 30.w,
    fit: BoxFit.fitHeight,
  );

  static final Image forgetPasSecurityImage = Image.asset(
    "assets/images/forget_pas_security.png",
    height: 233.h,
    width: double.maxFinite,
    fit: BoxFit.cover,
  );

  static final Image forgetPasSmsSendImage = Image.asset(
    "assets/images/forget_pas_sms_send.png",
    height: 222.h,
    width: 228.w,
    fit: BoxFit.cover,
  );

  static final Image allDoneImges = Image.asset(
    "assets/images/all_done.png",
    height: 282.h,
    width: double.maxFinite,
    fit: BoxFit.cover,
  );

  static final Image homeAnimalCategory = Image.asset(
    "assets/images/home_animal_category.png",
    height: 20.h,
    width: 27.5.w,
    fit: BoxFit.cover,
  );

  static final Image bnbHomeImage = Image.asset(
    "assets/images/bnb_home.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final Image bnbHeartImage = Image.asset(
    "assets/images/bnb_heart.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final Image bnbShoppingCartImage = Image.asset(
    "assets/images/bnb_shoppingcart.png",
    height: 32.h,
    width: 32.w,
    fit: BoxFit.cover,
  );

  static final Image homeMainLogoImage = Image.asset(
    "assets/images/home_main_log.png",
    height: 70.h,
    width: 69.w,
    fit: BoxFit.fitHeight,
  );

  static final Image katalogFilter = Image.asset(
    "assets/images/katalog_filter.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final Image katalogYaproq = Image.asset(
    "assets/images/katalog_yaproq.png",
    height: 200.h,
    width: 200.w,
    fit: BoxFit.cover,
  );

  static final Image SearchWhite = Image.asset(
    "assets/images/katalog_search.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
    color: AppColors.l00613A,
  );
  static final Image homeSearch = Image.asset(
    "assets/images/katalog_search.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
    color: AppColors.white,
  );

  static final Image katalogTopButton = Image.asset(
    "assets/images/katalog_top_button.png",
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
