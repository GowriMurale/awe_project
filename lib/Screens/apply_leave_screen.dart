import 'package:awe_project/Components/apply_leave.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dashboard_screen.dart';
class ApplyLeaveScreen extends StatefulWidget {
  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  TextEditingController leave=TextEditingController();
  TextEditingController from=TextEditingController();
  TextEditingController to=TextEditingController();
  TextEditingController reason=TextEditingController();
  TextEditingController  days=TextEditingController();
  // TextEditingController  badge=TextEditingController();
  // TextEditingController name=TextEditingController();
  // TextEditingController dept=TextEditingController();
  // TextEditingController title=TextEditingController();

  final List<String> _leaveTypes = ['Annual Leave', 'Sick Leave', 'Hospitalisation Leave','Unpaid Authorised Leave','Marriage Leave',
    'Maternity/Paternity Leave','Compassionate Leave','Unpaid Unauthorised Leave'];
  final List<String> _roles = ['Manager','Supervisor'];
  String? _selectedRole;
  String? _selectedLeaveType;
  DateTime? selectedDate;
  bool isSelected=false;
  DateTime? _fromDate;
  DateTime? _toDate;
  bool _isChecked = false;
  bool isHalfDay=false;
  String? selectedTicket;
  bool isManager=false;
  bool isSuperior=false;

  String? leaveTypeError;
  String? fromDateError;
  String? toDateError;
  String? applyToError;
  String? ticketError;
  String? reasonError;

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
      // Calculate the difference in days between _fromDate and _toDate
      double dayDifference = _toDate!.difference(_fromDate!).inDays + 1;

      // If half-day is selected
      if (isHalfDay) {
        // Case 1: If the from and to dates are the same, the leave is half a day
        if (_fromDate == _toDate) {
          dayDifference = 0.5;
        }
        // Case 2: If the from and to dates are different, add 0.5 to the total days
        else {
          dayDifference -= 0.5; // Subtract 0.5 from the dayDifference to represent half of a day
        }
      }

      // Update the text field with the calculated days
      days.text = dayDifference.toString();
    }
  }

  bool _validateFields() {
    bool isValid = true;

    setState(() {
      // Reset all error messages
      leaveTypeError = null;
      fromDateError = null;
      toDateError = null;
      applyToError = null;
      ticketError = null;
      reasonError = null;

      // Validate Leave Type
      if (_selectedLeaveType == null || _selectedLeaveType!.isEmpty) {
        leaveTypeError = '* This field is required';
        isValid = false;
      }

      // Validate From Date
      if (from.text.isEmpty) {
        fromDateError = '* This field is required';
        isValid = false;
      }

      // Validate To Date
      if (to.text.isEmpty) {
        toDateError = '* This field is required';
        isValid = false;
      }

      // Validate Apply To (Manager or Superior checkbox)
      if (!isManager && !isSuperior) {
        applyToError = '* Please select either Manager or Superior.';
        isValid = false;
      }

      // Validate Reason
      if (reason.text.isEmpty) {
        reasonError = '* This field is required';
        isValid = false;
      }
    });

    return isValid;
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Navbar2(),
                  ApplyLeave(),
                ],
              ),
            ),
          ),
        ),
        tablet: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Navbar2(),
                  ApplyLeave(),
                ],
              ),
            ),
          ),
        ),
        mobile: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: bgColor,
          // ),
          backgroundColor: bgColor,
          body: Container(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.035,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.15,),
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back,size: 18,color: Colors.black,)),
                    SizedBox(width: size.width * 0.18,),
                    Text('Apply Leave',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                  ],
                ),
                SizedBox(height: size.height * 0.024,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.10,),
                    Text('Badge #:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.038,),
                    myContainer(context, '0001'),
                    SizedBox(width: size.width * 0.088,),
                    Text('Name:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.118,),
                    myContainer(context, 'Adinin'),
                  ],
                ),
                SizedBox(height: size.height * 0.034,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.09,),
                    Text('Dept/Dev:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.033,),
                    myContainer(context, 'Xyz'),
                    SizedBox(width: size.width * 0.085,),
                    Text('Job Title:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.082,),
                    myContainer(context, 'Worker'),
                  ],
                ),
                SizedBox(height: size.height * 0.034,),
                Row(
                  // Align error message properly
                  children: [
                    SizedBox(width: size.width * 0.08,),
                    Text(
                      'Leave Type:',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: size.width * 0.013),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Error message for Leave Type
                        if (leaveTypeError != null)
                          Padding(
                            padding: EdgeInsets.only(bottom: 4), // Adjust padding above dropdown
                            child: Text(
                              leaveTypeError!,
                              style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                            ),
                          ),

                        // Leave Type Dropdown
                        Container(
                          width: size.width * 0.17,
                          height: size.height * 0.032,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Keep the border color gray always
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(2),
                            color: bgColor,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _selectedLeaveType,
                                hint: Padding(
                                  padding: EdgeInsets.only(left: size.width * 0.005),
                                  child: Text(
                                    'Select Type',
                                    style: TextStyle(fontFamily: 'Inter', fontSize: 13, color: grey),
                                  ),
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedLeaveType = newValue;
                                  });
                                },
                                items: _leaveTypes.map((String leaveType) {
                                  return DropdownMenuItem<String>(
                                    value: leaveType,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: size.width * 0.01),
                                      child: Text(
                                        leaveType,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 25,
                                  color: Colors.black,
                                ),
                                isExpanded: true, // Ensures the dropdown takes full width
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: size.width * 0.065),
                    Text(
                      'Leave balance:',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: size.width * 0.012),
                    myContainer(context, '04'),
                  ],
                ),
                SizedBox(height: size.height * 0.029,),
                Row(
                  children: [
                    //Half day
                    SizedBox(width: size.width * 0.10,),
                    Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.042,),
                    Container(
                      width: size.width * 0.035,
                      height: size.height * 0.026,
                      child: Material(
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isHalfDay = !isHalfDay; // Toggle half-day state
                              if (_fromDate != null && _toDate != null) {
                                _calculateDays(); // Recalculate days whenever half-day is toggled
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(color: Colors.grey, width: 1),
                              color: isHalfDay ? Colors.blue : Colors.transparent, // Optional: change color when selected
                            ),
                            child: Center(
                              child: isHalfDay
                                  ? Icon(Icons.check, color: Colors.white, size: 20) // Show tick icon when selected
                                  : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.034,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.25,),
                    Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.145,),
                    Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                    SizedBox(width: size.width * 0.20,),
                    Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,),),
                  ],
                ),
                SizedBox(height: size.height * 0.008,),
                Row(// Align error messages properly
                  children: [
                    SizedBox(width: size.width * 0.05,),
                    Text(
                      'Select Date:',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: size.width * 0.020),

                    // From Date TextField
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Error message for From Date
                        if (fromDateError != null)
                          Padding(
                            padding: EdgeInsets.only(bottom: 2), // Adjust padding below error message
                            child: Text(
                              fromDateError!,
                              style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                            ),
                          ),

                        Container(
                          width: size.width * 0.22,
                          height: size.height * 0.036,
                          child: Material(
                            color: Colors.transparent,
                            child: TextField(
                              controller: from,
                              style: TextStyle(
                                fontSize: 10, // Set a smaller font size for the picked date
                                color: Colors.black, // You can also control the color of the text
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                suffixIcon: IconButton(
                                  onPressed: () => _selectDate(context, from, true),
                                  icon: Icon(
                                    Icons.calendar_today_outlined,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'dd/mm/yyyy',
                                hintStyle: TextStyle(fontSize: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: size.width * 0.03),

                    // To Date TextField
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Error message for To Date
                        if (toDateError != null)
                          Padding(
                            padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                            child: Text(
                              toDateError!,
                              style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                            ),
                          ),

                        Container(
                          width: size.width * 0.22,
                          height: size.height * 0.036,
                          child: Material(
                            color: Colors.transparent,
                            child: TextField(
                              controller: to,
                              style: TextStyle(
                                fontSize: 10, // Set a smaller font size for the picked date
                                color: Colors.black, // You can also control the color of the text
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(2),
                                hintText: 'dd/mm/yyyy',
                                hintStyle: TextStyle(fontSize: 10),
                                suffixIcon: IconButton(
                                  onPressed: () => _selectDate(context, to, false),
                                  icon: Icon(
                                    Icons.calendar_today_outlined,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: size.width * 0.025),

                    // Days TextField
                    Container(
                      width: size.width * 0.20,
                      height: size.height * 0.036,
                      child: Material(
                        color: Colors.transparent,
                        child: TextField(
                          controller: days,
                          style: TextStyle(
                            fontSize: 12, // Set a smaller font size for the picked date
                            color: Colors.black, // You can also control the color of the text
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey, width: 1), // Keep border color grey
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          readOnly: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.038,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns error to the left
                  children: [
                    // Conditionally show the error message above the checkboxes
                    if (applyToError != null)
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.22, bottom: 4), // Align error message
                        child: Text(
                          applyToError!,
                          style: TextStyle(color: Colors.red, fontSize: 12), // Styling for error message
                        ),
                      ),
                    Row(
                      children: [
                        SizedBox(width: size.width * 0.10),
                        Text(
                          'Apply To:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Colors.black,

                          ),
                        ),
                        SizedBox(width: size.width * 0.035),
                        Text(
                          'Manager:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Colors.black,

                          ),
                        ),
                        SizedBox(width: size.width * 0.015),
                        Transform.scale(
                          scale: 1.0, // Adjust this value to change the checkbox size
                          child: Checkbox(
                            value: isManager,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isManager = newValue ?? false;
                              });// Validate all fields when user selects/deselects
                            },
                            side: BorderSide(
                              color: Colors.grey.shade500, // Light grey border color
                              width: 1,
                            ),
                            activeColor: Colors.blue, // Optional: change checkbox color when selected
                            checkColor: Colors.white, // Optional: checkmark color
                          ),
                        ),
                        SizedBox(width: size.width * 0.085),
                        Text(
                          'Superior:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: size.width * 0.015),
                        Transform.scale(
                          scale: 1.0, // Adjust this value to change the checkbox size
                          child: Checkbox(
                            value: isSuperior,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isSuperior = newValue ?? false;
                              });
                              // Validate all fields when user selects/deselects
                            },
                            side: BorderSide(
                              color: Colors.grey.shade500,
                              width: 1,
                            ),
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.035,),
                    Row(
                      // Align error message properly
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.15, bottom: size.height * 0.090),
                          child: Text(
                            'Reason:',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.042), // Adjust space between label and text field as needed

                        // Reason TextField
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Error message for Reason
                            if (reasonError != null)
                              Padding(
                                padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                                child: Text(
                                  reasonError!,
                                  style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                                ),
                              ),

                            Container(
                              width: size.width * 0.3, // Specify the width of the TextField
                              height: size.height * 0.08, // Specify the height of the TextField
                              child: TextField(
                                controller: reason,
                                style: TextStyle(fontSize: 16), // Adjust text size within the TextField
                                maxLines: null, // Allows the TextField to expand vertically
                                expands: true, // Allows the TextField content to fill the available space
                                textAlignVertical: TextAlignVertical.top, // Centers text vertically
                                decoration: InputDecoration(
                                  hintText: 'Text Here',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding: EdgeInsets.only(top: size.height * 0.015, left: size.width * 0.010), // Padding inside the TextField
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey, width: 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.010,),
                    Row(
                      children: [
                        SizedBox(width: size.width * 0.18,),
                        RichText(
                          text: TextSpan(
                            text: 'I have read and accept the ', // First part of the text
                            style: TextStyle(
                              color: Colors.black, // Default text color
                              fontSize: 16,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'leave policies', // Clickable link
                                style: TextStyle(
                                  color: Colors.blue, // Link color
                                  decoration: TextDecoration.underline, // Underline the link
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    const url = 'https://commonfiles.s3.ap-southeast-1.amazonaws.com/Policy/INSTRUCTION+FOR+APPLICATION+FOR+LEAVE+.pdf';
                                    if (await canLaunch(url)) {
                                      await launch(url, forceSafariVC: false); // Open in browser
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Could not launch the URL'),
                                        ),
                                      );
                                    }
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.045,),
                    Row(
                      children: [
                        SizedBox(width: size.width * 0.28,),
                        Material(
                          borderRadius: BorderRadius.circular(45),
                          child: MaterialButton(
                            onPressed: () {
                              // Validate all fields before applying
                              if (_validateFields()) {
                                // All fields are filled, show confirmation popup with Yes and No buttons
                                Get.defaultDialog(
                                  title: 'Confirm',
                                  content: Text('Are you sure you want to apply?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        // Action on No (cancel)
                                        Get.back(); // Clo  se the dialog
                                      } ,
                                      child: Text('No', style: TextStyle(color: Colors.red)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Action on Yes (confirmation)
                                        Get.off(DashBoardScreeen()); // Close the dialog
                                        // Proceed with applying leave
                                      },
                                      child: Text('Yes', style: TextStyle(color: Colors.green)),
                                    ),
                                  ],
                                );
                              } else {
                                // Show error alert dialog if fields are missing
                                Get.defaultDialog(
                                  title: 'Error',
                                  content: Text('Please fill all required fields.'),
                                  confirmTextColor: Colors.white,
                                  onConfirm: () {
                                    Get.back(); // Close the dialog
                                  },
                                );
                              }
                            },
                            minWidth: size.width * 0.195,
                            height: size.height * 0.06,
                            color: yellow,
                            child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
                          ),
                        ),


                        SizedBox(width: size.width * 0.03,),
                        OutlinedButton(
                          onPressed: () {
                            Get.off(DashBoardScreeen());
                          },
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(size.width * 0.005, size.height * 0.06), // Similar to minWidth and height in MaterialButton
                            side: BorderSide(color: grey), // Define the border color for the outlined button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                            ),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: black,
                            ),
                          ),
                        )

                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

        ),
        paddingWidth: size.width * 0.1,
        bgColor: Colors.white);
  }
}

Widget myContainer(BuildContext context,String text){
  final Size size = MediaQuery.of(context).size;
  return    Container(
    width: size.width * 0.16,
    height: size.height * 0.035,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700,width: 1)
    ),
    child: Padding(
      padding:  EdgeInsets.all( 2.0),
      child: Text(text,style: TextStyle(color: Colors.grey.shade500,fontFamily: 'Inter',fontSize: 13),),
    ),
  );
}