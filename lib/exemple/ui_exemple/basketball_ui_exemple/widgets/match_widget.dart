import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../match_detail/match_detail_page.dart';

class MatchWidget extends StatelessWidget {
  const MatchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        child: Container(
            height: 600.h,
            width: ScreenUtil().screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.sp),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFC9082A),
                  Color(0xFF17408B),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.h,
                  width: 200.w,
                  alignment: Alignment.center,
                  child: Image.asset('assets/new_orleans.png'),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    const Text(
                      'Final',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      'New Orleans',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'VS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'Lakers',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.sp),
                          color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: const Text(
                              '112',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: const Text(
                              ':',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              '127',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Text(
                      '25 Novembre 2022',
                      style: TextStyle(color: Colors.yellow.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Oracle center Arena',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Container(
                  height: 200.h,
                  width: 200.w,
                  alignment: Alignment.center,
                  child: Image.asset('assets/lakers.png'),
                ),
              ],
            )),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MatchDetailPage()),
          );
        },
      ),
    );
  }
}
