///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';



class TestUIs extends StatelessWidget {
  const TestUIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: GridView(
        padding: EdgeInsets.zero,
        shrinkWrap: false,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 1,
          childAspectRatio: 1.2,
        ),
        children: [
          Align(
            alignment: const Alignment(0.1, 0.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.1, 0.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: const Alignment(0.1, 0.1),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xffffffff),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xff808080), width: 1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textColor: const Color(0xff000000),
                height: 40,
                minWidth: 100,
                child: Text(
                  "Text Button",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.3, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(2),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(2),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.3, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(2),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.all(2),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.2, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xffffffff),
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 40,
              minWidth: 140,
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffffffff),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textColor: const Color(0xff000000),
            height: 40,
            minWidth: 140,
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
