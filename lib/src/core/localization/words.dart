import "package:flutter/material.dart";

import "app_localizations.dart";

extension MyWords on Words {
  String tr(BuildContext context, [int? key]) =>
      AppLocalizations.of(context).tr("$name${key ?? ""}");
}

enum Words {
  ///welcome page
  Hello,
  GoodAnimals,
  GoodMoments,
  EnjoyTheMomentWithYourPet,
  GetStarted,

  PersonalD,

  ///sign in page
  GoodMorning,
  WelcomeBack,
  Password,
  KeepMeLoggedIn,
  ForgotPassword,
  Login,
  LoginWithFacebook,
  LoginWithGoogle,
  Or,
  IfYouDoNotHaveAnAccount,
  CreateAccount,

  ///All Done page
  AllDone,
  ThanksForGivingUs,
  //title
  LetsGo,

  ///forgot password page
  DoNotWorry,
  //longer title
  RememberPassword,
  ResetPassword,
  DoNotHaveAnAccount,
  SignIn,

  ///Email sent page
  EmailSent,
  WeHaveSentAPasswordResetLinkTo,
  DidNotReceive,
  Resend,
  BackToLogin,
  SendCode,

  ///Sign up
  Hi,
  WelcomeToRegistration,
  SignUpDetails,
  FirstName,
  LastName,
  ThisWillBeYourUserName,
  ConfirmPassword,
  IDoNotWishToReceive,
  //long title
  JoinNow,
  Email,

  ///Sign in PIN page
  CreateYourPinCode,
  CreateA5DigitPIN,
  //title,
  Confirm,

  ///Home page
  //categories soon...
  PopularAnimals,
  ViewAll,
  Buy,

  ///Adding Product Page,
  ToAnnounce,
  Animals,
  Dogs,
  Cats,
  Ducks,
  UploadYourFileHere,
  Browse,
  Name,
  Title,
  TypeSomething,
  Price,
  PhoneNumber,
  Location,
  Country,
  Region,
  Description,
  TypeHere,
  Upload,

  ///Product Page
  Complain,
  ReportUser,
  CopyLink,
  PlacedOn,
  Status,
  Available,
  Unavailable,
  Call,

  ///Editing The Product Page
  Delete,
  Cancel,
  AreYouSure,
  //title,
  Editing,
  DescriptionProduct,
  

  ///Next adding Page
  ActiveProducts,

  //katolog 
  WelcomeTo, 
  NaturalTrading,
  AnimalType,

  //utils uchun
  BelgilanganTartibdaQaytadanToldiring,
  PinCodeXatoQaytadanUriningKoring,
  createdSuccessfully
  
}
