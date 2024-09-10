import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff333333),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 48.h,),

              /// --------------user profile image ------------------

              CachedNetworkImage(
                  imageUrl:  "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  // imageUrl: ApiEndpoint.imageBaseUrl+controller.response.value!.myProfile!.image!,
                  imageBuilder: (context, imageProvider) =>
                      Container(
                        height: 168.h,
                        width: 168.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill
                          ),

                        ),
                        alignment: Alignment.topLeft,
                      ),
                  placeholder: (context, url) => const CircularProgressIndicator(

                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error)

              ),

              SizedBox(height: 16.h,),

              /// --------------user name ------------------
              Text("Francisco Miles",style: GoogleFonts.sourceSans3(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 6.h,),
              /// --------------user email ------------------
              Text("@fransico_miles",style: GoogleFonts.sourceSans3(
                  color: const Color(0xffC9C9C9),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 16.h,),
              /// --------------user bio------------------
              Text("Bio: There once was...",style: GoogleFonts.sourceSans3(
                  color: const Color(0xffC9C9C9),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
              ),),

              SizedBox(height: 16.h,),
              /// --------------user public repo ------------------
              Text("Public Repos: 2",style: GoogleFonts.sourceSans3(
                  color: const Color(0xffC9C9C9),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 8.h,),
              /// -------------- public gits ------------------
              Text("Public Gists: 5",style: GoogleFonts.sourceSans3(
                  color: const Color(0xffC9C9C9),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 8.h,),
              /// -------------- private repos ------------------
              Text("Private Repos: 5",style: GoogleFonts.sourceSans3(
                  color: const Color(0xffC9C9C9),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
