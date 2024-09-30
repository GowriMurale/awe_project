
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/Screens/termscreen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
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
  // TextEditingController  badge=TextEditingController();
  // TextEditingController name=TextEditingController();
  // TextEditingController dept=TextEditingController();
  // TextEditingController title=TextEditingController();
  // TextEditingController balance=TextEditingController();

  final List<String> _leaveTypes = ['Annual Leave', 'Sick Leave', 'Hospitalisation Leave','Unpaid Authorised Leave','Marriage Leave',
    'Maternity/Paternity Leave','Compassionate Leave','Unpaid Unauthorised Leave'];
  final List<String> _roles = ['Superior'];
  String? _selectedRole;
  String? _selectedLeaveType;
  DateTime? selectedDate;
  bool isSelected=false;
  DateTime? _fromDate;
  DateTime? _toDate;
  bool _isChecked = false;
  bool isHalfDay=false;
  String? selectedTicket;

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


  // bool _validateFields() {
  //   // Replace 'controller.text' with the actual controllers for each field
  //   // if (badge.text.isEmpty) return false;
  //   // if (name.text.isEmpty) return false;
  //   // if (dept.text.isEmpty) return false;
  //   // if (title.text.isEmpty) return false;
  //   if (_selectedLeaveType == null || _selectedLeaveType!.isEmpty) return false;
  //   if (from.text.isEmpty) return false;
  //   if (to.text.isEmpty) return false;
  //   if (days.text.isEmpty) return false;
  //   if (_selectedRole == null || _selectedRole!.isEmpty) return false;
  //
  //   return true; // All fields are valid
  // }

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

      // Validate Apply To
      if (_selectedRole == null || _selectedRole!.isEmpty) {
        applyToError = '* This field is required';
        isValid = false;
      }

      // Validate Ticket Selection
      // if (selectedTicket == null || selectedTicket!.isEmpty) {
      //   ticketError = '* Please select a ticket option';
      //   isValid = false;
      // }

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
    return  Row(
      children: [
    // Sidebar container
    Container(
    width: size.width * 0.150, // Adjust width as necessary
      height:size.height* 0.900, // Sidebar takes full height
      color: grey, // Background color for sidebar
      child: Column(
        children: [
          SizedBox(height: size.height * 0.20),
          GestureDetector(
            onTap: (){
              Get.to(DashBoardScreeen());
            },
            child: Container(
              width: size.width * 0.125,
              height:size.height* 0.048,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.02,),
                  SizedBox(
                    height: 18,
                    width: 22,
                    child: Image.asset('assets/images/dash.png',color: Colors.black,),
                  ),
                  SizedBox(width: size.width * 0.01,),
                  Text('Dashboard',style: TextStyle(fontSize: 18,fontFamily: 'Inter', color:Colors.black),),
                ],
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          // Add more widgets here as per your sidebar content
        ],
      ),
    ),


      Column(
      children: [
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.095,),
            Text('Badge #:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.038,),
            myContainer(context, '0001'),
            SizedBox(width: size.width * 0.088,),
            Text('Name:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.051,),
            myContainer(context, 'Adinin'),
          ],
        ),
        SizedBox(height: size.height * 0.025,),
        Row(
          children: [
            SizedBox(width: size.width * 0.095,),
            Text('Dept/Dev:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.033,),
            myContainer(context, 'Xyz'),
            SizedBox(width: size.width * 0.085,),
            Text('Job Title:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.040,),
            myContainer(context, 'Worker'),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          // Align error message properly
          children: [
            SizedBox(width: size.width * 0.095,),
            Text(
              'Leave Type:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.023),

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
                  width: size.width * 0.16,
                  height: size.height * 0.042,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, // Keep the border color gray always
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
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
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: grey),
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
                                  fontSize: 15,
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
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.010),
            myContainer(context, '04'),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            //Half day
            SizedBox(width: size.width * 0.000010,),
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
        SizedBox(height: size.height * 0.02,),
        Row(
          children: [
            SizedBox(width: size.width * 0.118,),
            Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.145,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.15,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: size.height * 0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align error messages properly
          children: [
            SizedBox(width: size.width * 0.115,),
            Text(
              'Select Date:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.022),

            // From Date TextField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for From Date
                if (fromDateError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                    child: Text(
                      fromDateError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

                Container(
                  width: size.width * 0.14,
                  height: size.height * 0.050,
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      controller: from,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        suffixIcon: IconButton(
                          onPressed: () => _selectDate(context, from, true),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'dd/mm/yyyy',
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
                  width: size.width * 0.14,
                  height: size.height * 0.050,
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      controller: to,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        hintText: 'dd/mm/yyyy',
                        suffixIcon: IconButton(
                          onPressed: () => _selectDate(context, to, false),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            size: 25,
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
              width: size.width * 0.14,
              height: size.height * 0.050,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: days,
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


        SizedBox(height: size.height * 0.03,),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: size.width * 0.0100,),
            Text(
              'Apply To:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.035),

            // Apply To Dropdown
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for Apply To
                if (applyToError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                    child: Text(
                      applyToError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

                Container(
                  width: size.width * 0.22,
                  height: size.height * 0.045,
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 1), // Keep border color grey
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedRole,
                        hint: Padding(
                          padding: EdgeInsets.only(left: size.width * 0.005),
                          child: Text(
                            'Select Role',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: grey),
                          ),
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
                              padding: EdgeInsets.only(left: size.width * 0.01),
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
          ],
        ),


        SizedBox(height: size.height * 0.027,),
        Row(
          children: [
            SizedBox(width: size.width * 0.0003,),
            Text('Own Ticket:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
            Radio<String>(
              value: 'own_ticket',
              groupValue: selectedTicket,
              onChanged: (String? value) {
                setState(() {
                  selectedTicket = value; // Update the selected value
                });
              },
              activeColor: Colors.grey, // Customize the active color
            ),
            SizedBox(width: size.width * 0.035,),
            Text('company Ticket:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
            Radio<String>(
              value: 'company_ticket',
              groupValue: selectedTicket,
              onChanged: (String? value) {
                setState(() {
                  selectedTicket = value; // Update the selected value
                });
              },
              activeColor: Colors.grey, // Customize the active color
            ),
          ],
        ),
        SizedBox(height: size.height * 0.022,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align error message properly
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.115, bottom: size.height * 0.090),
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
                  height: size.height * 0.13, // Specify the height of the TextField
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


        SizedBox(height: size.height * 0.022,),
        Row(
          children: [
            SizedBox(width: size.width * 0.080,),
            RichText(
              text: TextSpan(
                text: 'I have read and accept ', // First part of the text
                style: TextStyle(
                  color: Colors.black, // Default text color
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
                children: [
                  TextSpan(
                    text: 'the leave policies', // Clickable link
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
        SizedBox(height: size.height * 0.034,),
        Row(
          children: [
            SizedBox(width: size.width * 0.12,),
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
                minWidth: size.width * 0.075,
                height: size.height * 0.06,
                color: yellow,
                child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
              ),
            ),


            SizedBox(width: size.width * 0.03,),
            Material(
              borderRadius: BorderRadius.circular(45),
              child: MaterialButton(
                onPressed: (){},
                minWidth: size.width * 0.075,
                height: size.height * 0.06,
                color: Colors.redAccent.shade200,
                child: Text('Cancel',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
          ],
        )

      ],
              )
    ]
    );
  }
}

//tablet view
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

      // Validate Apply To
      if (_selectedRole == null || _selectedRole!.isEmpty) {
        applyToError = '* This field is required';
        isValid = false;
      }

      // Validate Ticket Selection
      // if (selectedTicket == null || selectedTicket!.isEmpty) {
      //   ticketError = '* Please select a ticket option';
      //   isValid = false;
      // }

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
    return Column(
      children: [
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.20,),
            Text('Badge #:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.038,),
            myContainer(context, '0001'),
            SizedBox(width: size.width * 0.088,),
            Text('Name:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.072,),
            myContainer(context, 'Adinin'),
          ],
        ),
        SizedBox(height: size.height * 0.025,),
        Row(
          children: [
            SizedBox(width: size.width * 0.20,),
            Text('Dept/Dev:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.033,),
            myContainer(context, 'Xyz'),
            SizedBox(width: size.width * 0.085,),
            Text('Job Title:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.053,),
            myContainer(context, 'Worker'),
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align error message properly
          children: [
            SizedBox(width: size.width * 0.25),
            Text(
              'Leave Type:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.023),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for Leave Type
                if (leaveTypeError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                    child: Text(
                      leaveTypeError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

                // Leave Type Dropdown
                Container(
                  width: size.width * 0.16,
                  height: size.height * 0.042,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, // Keep the border color gray always
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedLeaveType,
                        hint: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Select Leave Type',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: grey),
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
                                  fontSize: 15,
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
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.010),
            myContainer(context, '04'),
          ],
        ),


        SizedBox(height: size.height * 0.04,),
        Row(
          children: [
            //Half day
            SizedBox(width: size.width * 0.20,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.042,),
            Container(
              width: size.width * 0.028,
              height: size.height * 0.038,
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
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.32,),
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
            SizedBox(width: size.width * 0.20),
            Text(
              'Select Date:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.020),

            // From Date Field
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for From Date
                if (fromDateError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below error message
                    child: Text(
                      fromDateError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

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
                          onPressed: () => _selectDate(context, from, true),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            size: 18,
                            color: black,
                          ),
                        ),
                        hintText: '00/00/0000',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 1),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(width: size.width * 0.03),

            // To Date Field
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
                          onPressed: () => _selectDate(context, to, false),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            size: 18,
                            color: black,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 1),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(width: size.width * 0.025),

            // Days Field
            Container(
              width: size.width * 0.16,
              height: size.width * 0.032,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: days,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey, width: 1),
                      borderRadius: BorderRadius.circular(0),
                    ),
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
            SizedBox(width: size.width * 0.20),
            Text(
              'Apply To:',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 18,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: size.width * 0.042),

            // Apply To Dropdown
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for Apply To
                if (applyToError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below the error message
                    child: Text(
                      applyToError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

                Container(
                  width: size.width * 0.22,
                  height: size.height * 0.044,
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 1),
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
                          child: Text(
                            'Manager',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 15, color: grey),
                          ),
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
          ],
        ),

        SizedBox(height: size.height * 0.02,),
        Row(
          children: [
            SizedBox(width: size.width * 0.20,),
            Text('Own Ticket:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
            Radio<String>(
              value: 'own_ticket',
              groupValue: selectedTicket,
              onChanged: (String? value) {
                setState(() {
                  selectedTicket = value; // Update the selected value
                });
              },
              activeColor: Colors.grey, // Customize the active color
            ),
            SizedBox(width: size.width * 0.035,),
            Text('company Ticket:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.025,),
            Radio<String>(
              value: 'company_ticket',
              groupValue: selectedTicket,
              onChanged: (String? value) {
                setState(() {
                  selectedTicket = value; // Update the selected value
                });
              },
              activeColor: Colors.grey, // Customize the active color
            ),
          ],
        ),
        SizedBox(height: size.height * 0.025,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Ensures vertical alignment
          children: <Widget>[
            // Adjust space before the label as needed
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.205, bottom: size.height * 0.090),
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

            // Reason TextField with error message
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Error message for Reason
                if (reasonError != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4), // Adjust padding below the error message
                    child: Text(
                      reasonError!,
                      style: TextStyle(color: Colors.red, fontSize: 12), // Error text styling
                    ),
                  ),

                Container(
                  width: size.width * 0.3, // Specify the width of the TextField
                  height: size.height * 0.13, // Specify the height of the TextField
                  child: TextField(
                    controller: reason,
                    style: TextStyle(fontSize: 16), // Adjust text size within the TextField
                    maxLines: null, // Allows the TextField to expand vertically
                    expands: true, // Allows the TextField content to fill the available space
                    textAlignVertical: TextAlignVertical.top, // Centers text vertically
                    decoration: InputDecoration(
                      hintText: 'Text Here',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.only(top: 15, left: 10), // Padding inside the TextField
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

        SizedBox(height: size.width * 0.01,),
        Row(
          children: [
            SizedBox(width: size.width * 0.33,),
            RichText(
              text: TextSpan(
                text: 'I have read and accept ', // First part of the text
                style: TextStyle(
                  color: Colors.black, // Default text color
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
                children: [
                  TextSpan(
                    text: 'the leave policies', // Clickable link
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
        SizedBox(height: size.width * 0.02,),
        Row(
          children: [
            SizedBox(width: size.width * 0.35,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
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
                minWidth: size.width * 0.11,
                height: size.height * 0.06,
                color: yellow,
                child: Text('Apply',style: TextStyle(fontFamily: 'Inter',fontSize: 13,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
            SizedBox(width: size.width * 0.02,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
              child: MaterialButton(
                onPressed: (){},
                minWidth: size.width * 0.11,
                height: size.height * 0.06,
                color: Colors.redAccent.shade100,
                child: Text('Cancel',style: TextStyle(fontFamily: 'Inter',fontSize: 13,fontWeight: FontWeight.bold,color: black),),
              ),
            ),
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

Widget myContainer(BuildContext context,String text){
  final Size size = MediaQuery.of(context).size;
  return    Container(
    width: size.width * 0.14,
    height: size.height * 0.044,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700,width: 1)
    ),
    child: Padding(
      padding:  EdgeInsets.all( 5.0),
      child: Text(text,style: TextStyle(color: Colors.grey.shade500,fontFamily: 'Inter',fontSize: 16),),
    ),
  );
}

