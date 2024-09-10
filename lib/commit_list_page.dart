import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/user_profile_page.dart';

class CommitListPage extends StatelessWidget {
  const CommitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(
      seconds: 5
    ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserProfilePage()
      ));
    });
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      appBar: AppBar(
        backgroundColor: const Color(0xff333333),
        title: Row(
          children: [
            Text("Flutter Commit List",style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400
            ),),

            Container(
              margin: const EdgeInsets.only(left: 24),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 2,left: 8,right: 8,bottom: 2),
              decoration: BoxDecoration(
                color: const Color(0xff515050),
                borderRadius: BorderRadius.circular(26.r)
              ),

              child:  Text("master",style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400
              ),),
            )
          ],
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context,index){
              return Container(
                padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 12),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff404040)
                    )
                  )
                ),

                child: Column(
                  children: [
                    /// -----------commit and time--------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          maxLines: 10,
                          "Add module to login and register so that others can add features.",style: GoogleFonts.sourceSans3(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400
                        ),),
                      ),

                      Text("18:14",style: GoogleFonts.sourceCodePro(
                          color: const Color(0xffB8B8B8),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                      ),),
                    ],
                    ),
                    SizedBox(height: 8.h,),

                    /// -----------user image and name--------------
                    Row(
                      children: [
                        CachedNetworkImage(
                            imageUrl:  "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            // imageUrl: ApiEndpoint.imageBaseUrl+controller.response.value!.myProfile!.image!,
                            imageBuilder: (context, imageProvider) =>
                                Container(
                                  height: 20.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.fill
                                    ),

                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                            placeholder: (context, url) => SizedBox(
                                height: 20.h,
                                width: 20.w,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 2,
                                )),
                            errorWidget: (context, url, error) => const Icon(Icons.error)

                        ),

                        SizedBox(width: 8.w,),

                        Text("Francisco Miles",style: GoogleFonts.sourceCodePro(
                            color: const Color(0xff9B9B9B),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    )
                  ],
                ),
              );
            }),
          )

        ],
      ),
    );




  }
}
