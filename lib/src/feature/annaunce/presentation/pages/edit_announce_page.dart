// import "dart:developer";

// import "package:flutter/material.dart";
// import "package:flutter_screenutil/flutter_screenutil.dart";
// import "package:go_router/go_router.dart";
// // import "package:http/http.dart" as http;
// // import "package:image_picker/image_picker.dart";
// // import "package:path/path.dart" as path;
// // import "dart:io";

// import "../../../../core/localization/words.dart";
// import "../../../../core/routes/app_route_name.dart";
// import "../../../../core/style/colors.dart";
// import "../../../../core/style/images.dart";
// import "../widgets/user_card_videget.dart";

// class EditAnnouncePage extends StatefulWidget {
//   const EditAnnouncePage({super.key});

//   @override
//   EditAnnouncePageState createState() => EditAnnouncePageState();
// }

// class EditAnnouncePageState extends State<EditAnnouncePage> {

// ///file tanlab post qiladigan funksiya
//   // final ImagePicker _picker = ImagePicker();
//   // late File _image;
//   // String? _uploadedImageUrl;
//   // Future<void> _pickImage(ImageSource source) async {
//   //   final XFile? pickedFile = await _picker.pickImage(source: source);
//   //   if (pickedFile != null) {
//   //     setState(() {
//   //       _image = File(pickedFile.path);
//   //     });
//   //     _uploadImage(_image);
//   //   }
//   // }

//   // Future<void> _uploadImage(File image) async {
//   //   final Uri uri = Uri.parse("http://10.10.3.15:8080/api/files/upload");
//   //   final http.MultipartRequest request = http.MultipartRequest("POST", uri);
//   //   request.files.add(
//   //     await http.MultipartFile.fromPath(
//   //       "file",
//   //       image.path,
//   //       filename: path.basename(image.path),
//   //     ),
//   //   );
//   //   log("Uploading image: ${image.path}");
//   //   log("Request: ${request.fields}, ${request.files}");
//   //   final http.StreamedResponse response = await request.send();
//   //   if (response.statusCode == 200) {
//   //     log("Image uploaded successfully");
//   //     final http.Response responseBody =
//   //         await http.Response.fromStream(response);
//   //     final String imageUrl = responseBody.body;
//   //     setState(() {
//   //       _uploadedImageUrl = imageUrl;
//   //     });
//   //   } else {
//   //     log("Image upload failed with status: ${response.statusCode}");
//   //     final http.Response responseBody =
//   //         await http.Response.fromStream(response);
//   //     log("Error response: ${responseBody.body}");
//   //   }
//   // }
//   ///post qiladigan funcsiya
//   ///
//   // void _showImageSourceActionSheet(BuildContext context) {
//   //   showModalBottomSheet<void>(
//   //     context: context,
//   //     builder: (BuildContext context) {
//   //       return SafeArea(
//   //         child: Wrap(
//   //           children: <Widget>[
//   //             ListTile(
//   //               leading: const Icon(Icons.photo_library),
//   //               title: const Text("Gallery"),
//   //               onTap: () {
//   //                 log("Gallery selected");
//   //                 Navigator.of(context).pop();
//   //                 _pickImage(ImageSource.gallery);
//   //               },
//   //             ),
//   //             ListTile(
//   //               leading: const Icon(Icons.photo_camera),
//   //               title: const Text("Camera"),
//   //               onTap: () {
//   //                 log("Camera selected");
//   //                 Navigator.of(context).pop();
//   //                 _pickImage(ImageSource.camera);
//   //               },
//   //             ),
//   //           ],
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: ,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: REdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 20.h),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     const Text(
//                       "A very good and\nloyal friend",
//                       style: TextStyle(
//                         color: Color(0xFF3A3A3A),
//                         fontSize: 24,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
//                   ],
//                 ),
//                 SizedBox(height: 8.h),
//                 Row(
//                   children: <Widget>[
//                     IconButton(
//                       padding: EdgeInsets.zero,
//                       onPressed: () {},
//                       icon: AppImages.mapPOinter,
//                     ),
//                     Text(
//                       "India",
//                       style: TextStyle(
//                         color: AppColors.l0xFF64748B,
//                         fontSize: 16.sp,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 2.h),
//                 Text(
//                   r"$9800.00",
//                   style: TextStyle(
//                     color: AppColors.l0xFF3A3A3A,
//                     fontSize: 22.sp,
//                     fontFamily: "Lato",
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 SizedBox(height: 24.h),
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       Words.PlacedOn.tr(context),
//                       style: TextStyle(
//                         color: AppColors.l0xFF64748B,
//                         fontSize: 16.sp,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     const Spacer(),
//                     Text(
//                       Words.Status.tr(context),
//                       style: TextStyle(
//                         color: AppColors.l0xFF64748B,
//                         fontSize: 16.sp,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     SizedBox(width: 70.w),
//                   ],
//                 ),
//                 Row(
//                   children: <Widget>[
//                     Text(
//                       "4 day ego",
//                       style: TextStyle(
//                         color: AppColors.l00613A,
//                         fontSize: 16.sp,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     // const Spacer(),
//                     SizedBox(width: 50.w),
//                     Text(
//                       Words.Available.tr(context),
//                       style: TextStyle(
//                         color: AppColors.l00613A,
//                         fontSize: 16.sp,
//                         fontFamily: "Lato",
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const Spacer(),
//                   ],
//                 ),
//                 SizedBox(height: 24.h),
//                 Text(
//                   Words.DescriptionProduct.tr(context),
//                   style: TextStyle(
//                     color: AppColors.l0xFF3A3A3A,
//                     fontSize: 18.sp,
//                     fontFamily: "Lato",
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 SizedBox(height: 12.h),
//                 SizedBox(
//                   width: double.maxFinite,
//                   height: 96.h,
//                   child: const Text(
//                     overflow: TextOverflow.ellipsis,
//                     "backand dan keladi ",
//                     style: TextStyle(
//                       color: AppColors.l0xFF3A3A3A,
//                       fontSize: 16,
//                       fontFamily: "Lato",
//                       fontWeight: FontWeight.w400,
//                       height: 0.09,
//                     ),
//                   ),
//                 ),
//                 const UserCard(),
//               ],
//             ),
//           ),
//         ),
//       ),

//       ///file post qiladigan funksionallik
//       ///buni controllerga olib otish kerak
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {
//       //     log("Floating Action Button pressed");
//       //     return _showImageSourceActionSheet(context);
//       //   },
//       //   child: const Icon(Icons.add),
//       // ),

//       bottomNavigationBar: BottomAppBar(
//         color: AppColors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               SizedBox(
//                 height: 50.h,
//                 width: 150.w,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     log("Delete button pressed");
//                     context.goNamed(AppRouteName.postAnnouncementPage);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     elevation: 5,
//                     backgroundColor: const Color(0xFFEFEFFD),
//                   ),
//                   child: const Text("Delete"),
//                 ),
//               ),
//               SizedBox(
//                 height: 50.h,
//                 width: 150.w,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     log("Editing button pressed");
//                     context.goNamed(AppRouteName.postAnnouncementPage);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     shape: const StadiumBorder(),
//                     elevation: 5,
//                     backgroundColor: Colors.green,
//                   ),
//                   child: const Text("Editing"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";
import "../widgets/bottom_buttons.dart";
import "../widgets/custom_app_bar.dart";
import "../widgets/user_card_videget.dart";

class EditAnnouncePage extends StatefulWidget {
  const EditAnnouncePage({super.key});

  @override
  EditAnnouncePageState createState() => EditAnnouncePageState();
}

class EditAnnouncePageState extends State<EditAnnouncePage> {
  final String imageUrl =
      "https://media.istockphoto.com/id/1147544807/ru/%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F/%D0%BD%D0%B5%D1%82-thumbnail-%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80-%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9.jpg?s=612x612&w=0&k=20&c=qA0VzNlwzqnnha_m2cHIws9MJ6vRGsZmys335A0GJW4="; // Bu yerga rasm URL manzilini yozing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        imageUrl: imageUrl,
        onBackPress: () {
          context.pop();
        },
        onMenuPress: () {},
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "A very good and\nloyal friend",
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: AppImages.mapPOinter,
                    ),
                    Text(
                      "India",
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  r"$9800.00",
                  style: TextStyle(
                    color: AppColors.l0xFF3A3A3A,
                    fontSize: 22.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: <Widget>[
                    Text(
                      Words.PlacedOn.tr(context),
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      Words.Status.tr(context),
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 70.w),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "4 day ego",
                      style: TextStyle(
                        color: AppColors.l00613A,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // const Spacer(),
                    SizedBox(width: 50.w),
                    Text(
                      Words.Available.tr(context),
                      style: TextStyle(
                        color: AppColors.l00613A,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  Words.DescriptionProduct.tr(context),
                  style: TextStyle(
                    color: AppColors.l0xFF3A3A3A,
                    fontSize: 18.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  height: 96.h,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    "backand dan keladi ",
                    style: TextStyle(
                      color: AppColors.l0xFF3A3A3A,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
                const UserCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomButtons(),
    );
  }
}
