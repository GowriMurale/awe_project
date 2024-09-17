import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
class ApplyLeave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLeave();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopLeave();
        } else {
          return  MobileLeave();
        }
      },
    );
  }
}
class DesktopLeave extends StatelessWidget {
  const DesktopLeave({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController leave=TextEditingController();
    TextEditingController from=TextEditingController();
    TextEditingController to=TextEditingController();
    TextEditingController reason=TextEditingController();
    return Column(
      children: [
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 250,),
            Text('Leave Type:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 40,),
            Container(
              width: 350,
              height: 35,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: leave,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(color: grey,width: 1)
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
        SizedBox(height: 25,),
        Row(
          children: [
            SizedBox(width: 250,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 65,),
            Container(
              width: 30,
              height: 28,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        color: grey,width: 1
                      ),
                    )
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Row(
          children: [
            SizedBox(width: 385,),
            Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 210,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 215,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 250,),
            Text('Select Date:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 33,),
            Container(
              width: 210,
              height: 35,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: from,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintText: '00/00/0000',
                    suffixIcon: Icon(Icons.calendar_today_outlined,size: 25,color: black,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey,width: 1),
                      borderRadius: BorderRadius.circular(0),
                    )

                  ),
                ),
              ),
            ),
            SizedBox(width: 40,),
            Container(
              width: 200,
              height: 35,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: '00/00/0000',
                      suffixIcon: Icon(Icons.calendar_today_outlined,size: 25,color: black,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )

                  ),
                ),
              ),
            ),
            SizedBox(width: 40,),
            Container(
              width: 210,
              height: 35,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )

                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40,),
        Row(
          children: [
            SizedBox(width: 250,),
            Text('Apply To:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: 50,),
            Container(
              width: 260,
              height: 35,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: leave,
                  decoration: InputDecoration(
                  hintText: 'Manager',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(5),
                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,size: 25,color: black,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(color: grey,width: 1)
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Ensures vertical alignment
          children: <Widget>[
       // Adjust space before the label as needed
            Padding(
              padding: const EdgeInsets.only(left: 250,bottom: 90),
              child: Text(
                'Reason:',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 56), // Adjust space between label and textfield as needed
            Container(
            width: 540, // Specify the width of the TextField
            height: 120,  // Specify the height of the TextField
            child: TextField(
            controller: reason,
            style: TextStyle(fontSize: 16), // Adjust text size within the TextField
            maxLines: null, // Allows the TextField to expand vertically
            expands: true, // Allows the TextField content to fill the available space
            textAlignVertical: TextAlignVertical.top, // Centers text vertically
            decoration: InputDecoration(
            hintText: 'Text Here',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.only(top: 15,left: 10), // Padding inside the TextField
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            ),
            ),
            )
          ],
        ),
        SizedBox(height: 25,),
        Row(
          children: [
            SizedBox(width: 500,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
              child: MaterialButton(
                  onPressed: (){},
                minWidth: 110,
                height: 40,
                color: yellow,
                child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
            SizedBox(width: 60,),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(100, 35),
                side: BorderSide(color: grey, width: 2.0), // Outline border
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0), // Rounded corners (optional)
              ),
              ),
              child: Text('Cancel',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
            )
          ],
        )

      ],
    );
  }
}



class MobileLeave extends StatelessWidget {
  const MobileLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

