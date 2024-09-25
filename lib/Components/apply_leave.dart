
import 'package:awe_project/Screens/termscreen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class ApplyLeave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return DesktopLeave();
        } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1200) {
          return TabletLeave();
        } else {
          return  MobileLeave();
        }
      },
    );
  }
}

class DesktopLeave extends StatefulWidget {
  const DesktopLeave({super.key}); // Constructor with optional key

  @override
  State<DesktopLeave> createState() => _DesktopLeaveState(); // Create state without 'return'
}

class _DesktopLeaveState extends State<DesktopLeave> {
  TextEditingController leave=TextEditingController();
  TextEditingController from=TextEditingController();
  TextEditingController to=TextEditingController();
  TextEditingController reason=TextEditingController();
  TextEditingController  days=TextEditingController();
  TextEditingController  badge=TextEditingController();
  TextEditingController name=TextEditingController();

  final List<String> _leaveTypes = ['Annual Leave', 'Sick Leave', 'Hospitalisation Leave','Unpaid Authorised Leave','Marriage Leave',
    'Maternity/Paternity Leave','Compassionate Leave','Unpaid Unauthorised Leave'];
  final List<String> _roles = ['Manager'];
  String? _selectedRole;
  String? _selectedLeaveType;
  DateTime? selectedDate;
  bool isSelected=false;
  DateTime? _fromDate;
  DateTime? _toDate;
  bool _isChecked = false;

  Future<void> _selectDate(BuildContext context, TextEditingController controller, bool isFromDate) async {
    DateTime firstDate = DateTime.now(); // Disable all previous dates

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isFromDate ? DateTime.now() : (_toDate ?? DateTime.now()),
      firstDate: firstDate, // No previous dates allowed
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        String formattedDate = DateFormat('MM/dd/yyyy').format(pickedDate);
        controller.text = formattedDate;

        if (isFromDate) {
          _fromDate = pickedDate;
        } else {
          _toDate = pickedDate;
        }

        // Automatically calculate the number of days if both dates are selected
        if (_fromDate != null && _toDate != null) {
          _calculateDays();
        }
      });
    }
  }


  // Method to calculate the difference in days between two dates
  void _calculateDays() {
    if (_fromDate != null && _toDate != null) {
      int dayDifference = _toDate!.difference(_fromDate!).inDays + 1; // +1 to include both start and end dates
      days.text = dayDifference.toString();
    }
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Badge #:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.038,),
            myContainer(context, badge),
            SizedBox(width: size.width * 0.088,),
            Text('Name:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.030,),
            myContainer(context, name),
          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Dept/Dev:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.033,),
            myContainer(context, badge),
            SizedBox(width: size.width * 0.085,),
            Text('Job Title:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.018,),
            myContainer(context, name),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Leave Type:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
               Container(
                width: size.width * 0.2,
                height: size.height * 0.05,
                 decoration: BoxDecoration(
                     border: Border.all(color: grey,width: 1),
                       borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                      ),
                      child: Material(
                  color: Colors.transparent,
                  child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    value: _selectedLeaveType,
              hint: Text('', style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black)),
              onChanged: (String? newValue) {
          setState(() {
             _selectedLeaveType = newValue;
                });
            },
               items: _leaveTypes.map((String leaveType) {
                  return DropdownMenuItem<String>(
                 value: leaveType,
                  child: Padding(
                     padding:  EdgeInsets.only(left: size.width * 0.01),
                    child: Text(
                    leaveType,
                    style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black),
                 ),
                ),
                  );
              }).toList(),
              icon: Icon(Icons.keyboard_arrow_down_outlined, size: 25, color: Colors.black),
              isExpanded: true, // Ensures the dropdown takes full width
               ),
             ),
               ),
             ),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.042,),
            Container(
              width: size.width * 0.020,
                height: size.height * 0.038,
              child: Material(
              color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected; // Toggle selection state
                 });
                   },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                border: Border.all(color: Colors.grey, width: 1),
                  color: isSelected ? Colors.blue : Colors.transparent, // Optional: change color when selected
                  ),
              child: Center(
              child: isSelected
             ? Icon(Icons.check, color: Colors.white, size: 20) // Show tick icon when selected
        : null,
          ),
             ),
            ),
            ),
          ),
          ],
           ),
        SizedBox(height: size.height * 0.02,),
        Row(
          children: [
            SizedBox(width: size.width * 0.34,),
            Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.145,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.15,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Select Date:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.022,),
            Container(
              width: size.width * 0.14,
              height: size.height * 0.054,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: from,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                      suffixIcon: IconButton(
                        onPressed: ()=> _selectDate(context, from, true),
                        icon: Icon(Icons.calendar_today_outlined,size: 25,color: black,),
                      ),
                      hintText: 'dd/mm/yyyy',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey,width: 1),
                      borderRadius: BorderRadius.circular(0),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.03,),
            Container(
              width: size.width * 0.14,
              height: size.height * 0.054,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: 'dd/mm/yyyy',
                      suffixIcon: IconButton(
                        onPressed: () => _selectDate(context,to,false),
                        icon: Icon(Icons.calendar_today_outlined,size: 25,color: black,),
                        ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.025,),
            Container(
              width: size.width * 0.14,
              height: size.height * 0.052,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: days,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )
                  ),
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.25,),
            Text('Apply To:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.035,),
            Container(
              width: size.width * 0.22,
              height: size.height * 0.052,
              decoration: BoxDecoration(
                border: Border.all(color: grey,width: 1),
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedRole,
                    hint: Padding(
                      padding:  EdgeInsets.only(left: size.width * 0.01),
                      child: Text('Manager', style: TextStyle(fontFamily: 'Inter', fontSize: 15, color:grey)),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedRole = newValue;
                      });
                    },
                    items: _roles.map((String role) {
                      return DropdownMenuItem<String>(
                        value: role,
                        child: Padding(
                          padding:  EdgeInsets.only(left: size.width * 0.01),
                          child: Text(
                            role,
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black),
                          ),
                        ),
                      );
                    }).toList(),
                    icon: Icon(Icons.keyboard_arrow_down_outlined, size: 25, color: Colors.black),
                    isExpanded: true, // Ensures the dropdown takes full width
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Ensures vertical alignment
          children: <Widget>[
       // Adjust space before the label as needed
            Padding(
              padding:  EdgeInsets.only(left: 380,bottom: 90),
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
            SizedBox(width: size.width * 0.042), // Adjust space between label and textfield as needed
            Container(
            width: size.width * 0.3, // Specify the width of the TextField
            height: size.height * 0.15,  // Specify the height of the TextField
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
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.34,),
            Checkbox(
                value: _isChecked,
                onChanged: (bool? value){
                  setState(() {
                    _isChecked=value ?? false;
                  });
                }),
            SizedBox(width: size.width * 0.014,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Termscreen()));
                  },
                    child: Text('I agree to terms of conditions and policies',style: TextStyle(color: Colors.blue,
                        decoration: TextDecoration.underline,fontSize: 16,fontFamily: 'Inter'),))
          ],
        ),
        SizedBox(height: size.height * 0.018,),
        Row(
          children: [
            SizedBox(width: size.width * 0.36,),
            Material(
              borderRadius: BorderRadius.circular(45),
              child: MaterialButton(
                onPressed: _isChecked
                    ? () {
                  // Define what happens when "Apply" is pressed
                }
                    : null,
                minWidth: size.width * 0.08,
                height: size.height * 0.06,
                color: _isChecked ? yellow : grey,
                child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
            SizedBox(width: size.width * 0.03,),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(size.width * 0.07, size.height * 0.05),
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


class TabletLeave extends StatefulWidget {
  const TabletLeave({super.key}); // Constructor with optional key

  @override
  State<TabletLeave> createState() => _TabletLeaveState(); // Create state without 'return'
}

class _TabletLeaveState extends State<TabletLeave> {
  TextEditingController leave=TextEditingController();
  TextEditingController from=TextEditingController();
  TextEditingController to=TextEditingController();
  TextEditingController reason=TextEditingController();
  TextEditingController  days=TextEditingController();

  final List<String> _leaveTypes = ['Casual', 'Sick', 'Lop'];
  final List<String> _roles = ['Manager'];
  String? _selectedRole;
  String? _selectedLeaveType;
  DateTime? selectedDate;
  bool isSelected=false;
  DateTime? _fromDate;
  DateTime? _toDate;

  Future<void> _selectDate(BuildContext context, TextEditingController controller, bool isFromDate) async {
    final DateTime now = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      // Set firstDate to today's date if it's for the "fromDate"
      firstDate: isFromDate ? now : DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      setState(() {
        String formattedDate = DateFormat('MM/dd/yyyy').format(pickedDate);
        controller.text = formattedDate;

        // Set the appropriate date variable
        if (isFromDate) {
          _fromDate = pickedDate;
        } else {
          _toDate = pickedDate;
        }

        // Automatically calculate the number of days if both dates are selected
        if (_fromDate != null && _toDate != null) {
          _calculateDays();
        }
      });
    }
  }


  // Method to calculate the difference in days between two dates
  void _calculateDays() {
    if (_fromDate != null && _toDate != null) {
      int dayDifference = _toDate!.difference(_fromDate!).inDays + 1; // +1 to include both start and end dates
      days.text = dayDifference.toString();
    }
  }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.13,),
            Text('Leave Type:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
            Container(
              width: size.width * 0.2,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                border: Border.all(color: grey,width: 1),
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedLeaveType,
                    hint: Text('', style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black)),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedLeaveType = newValue;
                      });
                    },
                    items: _leaveTypes.map((String leaveType) {
                      return DropdownMenuItem<String>(
                        value: leaveType,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            leaveType,
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black),
                          ),
                        ),
                      );
                    }).toList(),
                    icon: Icon(Icons.keyboard_arrow_down_outlined, size: 25, color: Colors.black),
                    isExpanded: true, // Ensures the dropdown takes full width
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.04,),
        Row(
          children: [
            SizedBox(width: size.width * 0.13,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.052,),
            Container(
              width: 30,
              height: 28,
              child: Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected; // Toggle selection state
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: isSelected ? Colors.blue : Colors.transparent, // Optional: change color when selected
                    ),
                    child: Center(
                      child: isSelected
                          ? Icon(Icons.check, color: Colors.white, size: 20) // Show tick icon when selected
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.26,),
            Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.165,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.19,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.13,),
            Text('Select Date:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.020,),
            Container(
              width: size.width * 0.18,
              height: size.width * 0.032,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: from,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      suffixIcon: IconButton(
                        onPressed: ()=> _selectDate(context, from, true),
                        icon: Icon(Icons.calendar_today_outlined,size: 18,color: black,),
                      ),
                      hintText: '00/00/0000',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.03,),
            Container(
              width: size.width * 0.18,
              height: size.width * 0.032,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(4),
                      hintText: '00/00/0000',
                      suffixIcon: IconButton(
                        onPressed: () => _selectDate(context,to,false),
                        icon: Icon(Icons.calendar_today_outlined,size: 18,color: black,),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.025,),
            Container(
              width: size.width * 0.16,
              height: size.width * 0.032,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: days,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey,width: 1),
                        borderRadius: BorderRadius.circular(0),
                      )
                  ),
                  readOnly: true,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.13,),
            Text('Apply To:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.042,),
            Container(
              width: size.width * 0.22,
              height: size.height * 0.044,
              decoration: BoxDecoration(
                border: Border.all(color: grey,width: 1),
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedRole,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Manager', style: TextStyle(fontFamily: 'Inter', fontSize: 15, color:grey)),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedRole = newValue;
                      });
                    },
                    items: _roles.map((String role) {
                      return DropdownMenuItem<String>(
                        value: role,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            role,
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: Colors.black),
                          ),
                        ),
                      );
                    }).toList(),
                    icon: Icon(Icons.keyboard_arrow_down_outlined, size: 25, color: Colors.black),
                    isExpanded: true, // Ensures the dropdown takes full width
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.06,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Ensures vertical alignment
          children: <Widget>[
            // Adjust space before the label as needed
            Padding(
              padding: const EdgeInsets.only(left: 125,bottom: 90),
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
            SizedBox(width: size.width * 0.048), // Adjust space between label and textfield as needed
            Container(
              width: size.width * 0.3, // Specify the width of the TextField
              height: size.height * 0.18,  // Specify the height of the TextField
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
        SizedBox(height: size.width * 0.02,),
        Row(
          children: [
            SizedBox(width: size.width * 0.30,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
              child: MaterialButton(
                onPressed: (){},
                minWidth: size.width * 0.11,
                height: size.height * 0.06,
                color: yellow,
                child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 13,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
            SizedBox(width: size.width * 0.02,),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(size.width * 0.10, size.height * 0.05),
                side: BorderSide(color: grey, width: 2.0), // Outline border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), // Rounded corners (optional)
                ),
              ),
              child: Text('Cancel',style: TextStyle(fontFamily: 'Inter',fontSize: 13,fontWeight: FontWeight.bold,color: black),),
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

Widget myContainer(BuildContext context, TextEditingController controller){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.12,
    height: size.height * 0.042,
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: grey,width: 1),
              borderRadius: BorderRadius.circular(0),
            )
        ),

      ),
    ),
  );
}