import 'package:awe_project/Components/apply_leave.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
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
                Row(
                  children: [
                    SizedBox(width: size.width * 0.15,),
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back,size: 18,color: Colors.black,)),
                    SizedBox(width: size.width * 0.18,),
                    Text('Apply Leave',style: TextStyle(fontFamily: 'Inter',fontSize: 16,fontWeight: FontWeight.bold,color: black),),
                  ],
                ),
                SizedBox(height: size.height * 0.015,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.10,),
                    Text('Badge #:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.038,),
                    myContainer(context, '0001'),
                    SizedBox(width: size.width * 0.088,),
                    Text('Name:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.078,),
                    myContainer(context, 'Adinin'),
                  ],
                ),
                SizedBox(height: size.height * 0.025,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.09,),
                    Text('Dept/Dev:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.033,),
                    myContainer(context, 'Xyz'),
                    SizedBox(width: size.width * 0.085,),
                    Text('Job Title:',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.040,),
                    myContainer(context, 'Worker'),
                  ],
                ),
                SizedBox(height: size.height * 0.025,),
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
                        fontWeight: FontWeight.bold,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: size.width * 0.010),
                    myContainer(context, '04'),
                  ],
                ),
                SizedBox(height: size.height * 0.025,),
                Row(
                  children: [
                    //Half day
                    SizedBox(width: size.width * 0.10,),
                    Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
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
                SizedBox(height: size.height * 0.020,),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.25,),
                    Text('From',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.145,),
                    Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
                    SizedBox(width: size.width * 0.15,),
                    Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: size.height * 0.020,),
                Row(// Align error messages properly
                  children: [
                    SizedBox(width: size.width * 0.05,),
                    Text(
                      'Select Date:',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
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
                          width: size.width * 0.18,
                          height: size.height * 0.038,
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
                          width: size.width * 0.18,
                          height: size.height * 0.038,
                          child: Material(
                            color: Colors.transparent,
                            child: TextField(
                              controller: to,
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
                      width: size.width * 0.18,
                      height: size.height * 0.038,
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
      child: Text(text,style: TextStyle(color: Colors.grey.shade500,fontFamily: 'Inter',fontSize: 16),),
    ),
  );
}