import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Container(
          height: 44.h,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: TextFormField(
            onTap: () {},
            enabled: false,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: 10.sp),
            decoration: InputDecoration(
              isDense: true,
              hintText: "Jump to or Search...",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                height: 2.h,
                color: Colors.white54,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(6),
                child: Icon(Icons.search, color: Colors.white, size: 20),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.all(6),
                child: Icon(Icons.person, color: Colors.white, size: 20),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(title: Text("Credentials Service name"));
          },
        ),
      ),
    );
  }
}
