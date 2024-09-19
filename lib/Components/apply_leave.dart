import 'package:amplify_core/amplify_core.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ApplyLeave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLeave();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
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

  final List<String> _leaveTypes = ['Casual', 'Sick', 'Lop'];
  final List<String> _roles = ['Manager'];
  String? _selectedRole;
  String? _selectedLeaveType;
  DateTime? selectedDate;
  bool isSelected=false;
  DateTime? _fromDate;
  DateTime? _toDate;

  Future<void> _selectDate(BuildContext context, TextEditingController controller, bool isFromDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
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
  // Future<void> saveLeaveApplication() async {
  //   final newLeaveApplication = LeaveApplication(
  //     leaveType: _selectedLeaveType!,
  //     fromDate: from.text,
  //     toDate: to.text,
  //     days: int.parse(days.text),
  //     role: _selectedRole!,
  //     reason: reason.text,
  //     isHalfDay: isSelected,
  //   );
  //
  //   try {
  //     await Amplify.DataStore.save(newLeaveApplication);
  //     print("Leave application saved successfully!");
  //   } catch (e) {
  //     print("Error saving leave application: $e");
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.17,),
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
            SizedBox(width: size.width * 0.17,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.042,),
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
            SizedBox(width: size.width * 0.145,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.15,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.17,),
            Text('Select Date:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.022,),
            Container(
              width: size.width * 0.14,
              height: size.width * 0.024,
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
              width: size.width * 0.14,
              height: size.width * 0.024,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: '00/00/0000',
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
              height: size.width * 0.024,
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
            SizedBox(width: size.width * 0.17,),
            Text('Apply To:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.035,),
            Container(
              width: size.width * 0.22,
              height: size.width * 0.024,
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
              padding: const EdgeInsets.only(left: 255,bottom: 90),
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
            SizedBox(width: size.width * 0.34,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
              child: MaterialButton(
                  onPressed: (){},
                minWidth: size.width * 0.08,
                height: size.height * 0.06,
                color: yellow,
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
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
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
  // Future<void> saveLeaveApplication() async {
  //   final newLeaveApplication = LeaveApplication(
  //     leaveType: _selectedLeaveType!,
  //     fromDate: from.text,
  //     toDate: to.text,
  //     days: int.parse(days.text),
  //     role: _selectedRole!,
  //     reason: reason.text,
  //     isHalfDay: isSelected,
  //   );
  //
  //   try {
  //     await Amplify.DataStore.save(newLeaveApplication);
  //     print("Leave application saved successfully!");
  //   } catch (e) {
  //     print("Error saving leave application: $e");
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.05,),
        Row(
          children: [
            SizedBox(width: size.width * 0.17,),
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
            SizedBox(width: size.width * 0.17,),
            Text('Half day:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.042,),
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
            SizedBox(width: size.width * 0.145,),
            Text('To',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.15,),
            Text('No of days',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.17,),
            Text('Select Date:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.022,),
            Container(
              width: size.width * 0.14,
              height: size.width * 0.024,
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
              width: size.width * 0.14,
              height: size.width * 0.024,
              child: Material(
                color: Colors.transparent,
                child: TextField(
                  controller: to,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: '00/00/0000',
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
              height: size.width * 0.024,
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
            SizedBox(width: size.width * 0.17,),
            Text('Apply To:',style: TextStyle(fontFamily: 'Inter',fontSize: 18,color: black,fontWeight: FontWeight.bold),),
            SizedBox(width: size.width * 0.035,),
            Container(
              width: size.width * 0.22,
              height: size.width * 0.024,
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
              padding: const EdgeInsets.only(left: 255,bottom: 90),
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
            SizedBox(width: size.width * 0.34,),
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
              child: MaterialButton(
                onPressed: (){},
                minWidth: size.width * 0.08,
                height: size.height * 0.06,
                color: yellow,
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

class MobileLeave extends StatelessWidget {
  const MobileLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

