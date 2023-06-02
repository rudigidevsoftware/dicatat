import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardHomeRiwayat extends StatelessWidget {
  const CardHomeRiwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.sp, horizontal: 4.sp),
      height: 8.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.sp), color: Colors.blue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 5.sp),
              Icon(Icons.arrow_circle_down_rounded, size: 22.sp),
              SizedBox(width: 5.sp),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('08:00'), Text('Gaji Bulan Ini..')],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.sp),
            child: Text('3.200.000', style: TextStyle(fontSize: 12.sp)),
          )
        ],
      ),
    );
  }
}
