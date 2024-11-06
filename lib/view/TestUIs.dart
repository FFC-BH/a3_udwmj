///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class TestUIs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: GridView(
        padding: EdgeInsets.zero,
        shrinkWrap: false,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 1,
          childAspectRatio: 1.2,
        ),
        children: [
          Align(
            alignment: Alignment(0.1, 0.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(-0.1, 0.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment(0.1, 0.1),
              child: MaterialButton(
                onPressed: () {},
                color: Color(0xffffffff),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xff808080), width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "Text Button",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xff000000),
                height: 40,
                minWidth: 100,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.3, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(2),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(2),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.3, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(2),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.1, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(2),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          Align(
            alignment: Alignment(0.2, -1.0),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xffffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Text Button",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
          MaterialButton(
            onPressed: () {},
            color: Color(0xffffffff),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Color(0xff808080), width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Text Button",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            textColor: Color(0xff000000),
            height: 40,
            minWidth: 140,
          ),
        ],
      ),
    );
  }
}
