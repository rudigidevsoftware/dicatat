import 'package:dicatat/widget/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final topPadding = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 13% Height
            SizedBox(
              height: 15.h - topPadding,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.menu_rounded,
                          size: 30.sp,
                        ),
                      ),
                      Text(
                        'dicatat',
                        style: TextStyle(fontSize: 22.sp),
                      )
                    ],
                  )),
            ),
            // 31% Height
            SizedBox(
              height: 24.h,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6.h,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hari Ini',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              Text(
                                'Senin, 31 Okt 2023',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 16.h,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_down_rounded,
                                      size: 22.sp,
                                    ),
                                    Text(
                                      'Rp. 1.200.000',
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                    Text(
                                      'Pemasukan',
                                      style: TextStyle(fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_down_rounded,
                                      size: 22.sp,
                                    ),
                                    Text(
                                      'Rp. 1.200.000',
                                      style: TextStyle(fontSize: 18.sp),
                                    ),
                                    Text(
                                      'Pengeluaran',
                                      style: TextStyle(fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  )),
            ),
            // 13% Height
            SizedBox(
              height: 13.h,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.grey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.sp),
                            height: 10.w,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(5.sp)),
                            child: Icon(Icons.attach_money_rounded),
                          ),
                          Text('Saldo', style: TextStyle(fontSize: 14.sp))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.sp),
                        child: Text('Rp. 1.400.000',
                            style: TextStyle(fontSize: 18.sp)),
                      )
                    ],
                  )),
            ),
            // 42% Height
            SizedBox(
              height: 40.h,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.grey),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Center(
                            child: Text(
                          'Riwayat Hari Ini (6)',
                          style: TextStyle(fontSize: 14.sp),
                        )),
                      ),
                      Expanded(
                          flex: 8,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return const CardHomeRiwayat();
                              })),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 2.sp, vertical: 4.sp),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text('Lihat Semua..')),
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 8.h - bottomPadding,
              child: Container(
                width: 85.w,
                margin: EdgeInsets.symmetric(vertical: 4.sp),
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Tambah Data'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
