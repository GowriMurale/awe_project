
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/leave_view_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return DesktopDashboard();
        } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1200) {
          return TabletDashboard();
        } else {
          return  MobileDashboard();
        }
      },
    );
  }
}

class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {


  final List<String> _dropdownItems = [
    'Last 3 months',
    'Last 6 months',
    'Last 12 months',
  ];
    TextEditingController from=TextEditingController();
  TextEditingController to=TextEditingController();
  String selectedValue = 'Last 3 months';

  String _selectedDate = "From"; // Default text

  // Function to show the date picker and update the selected date
  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        controller.text = "${picked.day}/${picked.month}/${picked.year}"; // Update the controller with the selected date
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
     return
    // Row(
    //   children: [
    // // Sidebar container
    // Container(
    //   width: size.width * 0.150, // Adjust width as necessary
    //   height:size.height* 0.900, // Sidebar takes full height
    //   color: grey, // Background color for sidebar
    //   child: Column(
    //     children: [
    //       SizedBox(height: size.height * 0.20),
    //       GestureDetector(
    //         onTap: (){
    //           Get.to(ApplyLeaveScreen());
    //         },
    //         child: Container(
    //           width: size.width * 0.125,
    //           height:size.height* 0.048,
    //           decoration: BoxDecoration(
    //             color: Colors.yellowAccent,
    //             borderRadius: BorderRadius.circular(10),
    //           ),
    //           child: Row(
    //             children: [
    //               SizedBox(width: size.width * 0.02,),
    //             SizedBox(
    //               height: 18,
    //               width: 22,
    //               child: Image.asset('assets/images/leave.png',color: Colors.black,),
    //             ),
    //               SizedBox(width: size.width * 0.01,),
    //               Text('Leaves',style: TextStyle(fontSize: 18,fontFamily: 'Inter', color:Colors.black),),
    //             ],
    //           ),
    //         ),
    //       ),
    //       SizedBox(height: size.height * 0.05),
    //       // Add more widgets here as per your sidebar content
    //     ],
    //   ),
    // ),
    // return
      Column(
        children: [
          SizedBox(height: size.height * 0.01,),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: size.width* 0.35,),
              // IconButton(onPressed: (){
              //   Get.back();
              // }, icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,)),
              // SizedBox(width: size.width* 0.14,),
              Text('Welcome',style: TextStyle(color: black,fontSize:36 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
              SizedBox(width: size.width * 0.01,),
              Text('Nur Hafiza',style: TextStyle(color: lightYellow,fontFamily:'Inter',fontSize: 46,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: size.height * 0.015,),
          Row(
            children: [
              SizedBox(width: size.width * 0.170,),
             container2('Present', '20.5', purple,context),
              SizedBox(width: size.width * 0.04,),
              container2('Absent Days', '2.5', green,context),
              SizedBox(width: size.width * 0.04,),
              container2('Available Leave', '6.5', brown,context),
              SizedBox(width: size.width * 0.04,),
              container2('Leave Request', '00', black,context),

            ],
          ),
          SizedBox(height: size.height * 0.015,),
          Row(
            children: [
              SizedBox(width: size.width * 0.170,),
              container2('Annual Leave', '9', purple, context),
              SizedBox(width: size.width * 0.04,),
              container2('Sick Leave', '8', purple, context),
              SizedBox(width: size.width * 0.04,),
              container2('Unpaid Authorize', '0.5', purple, context),
            ],
          ),
          SizedBox(height: size.height * 0.055,),
            Row(
              children: [
              SizedBox(width: size.width * 0.178),
                Text(
                    'My Recent Leave',
                      style: TextStyle(color: Colors.black, fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                SizedBox(width: size.width * 0.326),
                Container(
                  width: size.width * 0.082,
                  height: size.height * 0.034,
                  color: Colors.white,
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      controller: from,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 5,bottom: 6),
                        hintText: 'From',
                        hintStyle: TextStyle(fontSize: 12),
                        suffixIcon: IconButton(
                          onPressed: () => _selectDate(context,from),
                          icon: Icon(
                            Icons.calendar_month,
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
                SizedBox(width: size.width * 0.016),
                Container(
                  width: size.width * 0.082,
                  height: size.height * 0.034,
                  color: Colors.white,
                  child: Material(
                    color: Colors.transparent,
                    child: TextField(
                      controller: to,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 5,bottom: 6),
                        hintText: 'To',
                        hintStyle: TextStyle(fontSize: 12),
                        suffixIcon: IconButton(
                          onPressed: () => _selectDate(context,to),
                          icon: Icon(
                            Icons.calendar_month,
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
      Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: size.width * 0.170,top: size.height * 0.02),
                child: EmployeeTable(),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.032,),
          Row(
            children: [
              SizedBox(width: size.width * 0.42,),
                MaterialButton(
                    onPressed: (){
                      Get.to(()=>ApplyLeaveScreen());
                    },
                    minWidth: size.width * 0.085,
                    height: size.height * 0.060,
                    color: yellow,
                    child: Text('Apply Leave',style: TextStyle(fontFamily: 'Inter,',fontSize: 15,fontWeight: FontWeight.bold,color: black),),
                ),
                SizedBox(width: size.width * 0.015,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Request Ticket",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none, // Remove default underline
                      ),
                    ),
                  ),
                  // Add space between text and line
                  Container(
                    height: 1,
                    color: blue, // Custom underline color
                    width: size.width * 0.065, // Set the underline width as needed
                  ),
                ],
              )

            ],
          )
        ],
    );


  }
}

class TabletDashboard extends StatefulWidget {
  const TabletDashboard({super.key});


  @override
  State<TabletDashboard> createState() => _TabletDashboardState();
}

class _TabletDashboardState extends State<TabletDashboard> {
  final List<String> _dropdownItems = [
    'Last 3 months',
    'Last 6 months',
    'Last 12 months',
  ];

  String selectedValue = 'Last 3 months';
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(width: size.width* 0.12,),
            // IconButton(onPressed: (){
            //   Get.back();
            // }, icon: Icon(Icons.arrow_back,size: 20,color: Colors.black,)),
            SizedBox(width: size.width* 0.35,),
            Text('Welcome',style: TextStyle(color: black,fontSize:36 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
            SizedBox(width: size.width * 0.01,),
            Text('Nur Hafiza',style: TextStyle(color: lightYellow,fontFamily:'Inter',fontSize: 46,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.120,),
            tabcontainer2('Present', '20.5', purple,context),
            SizedBox(width: size.width * 0.04,),
            tabcontainer2('Absent Days', '2.5', green,context),
            SizedBox(width: size.width * 0.04,),
            tabcontainer2('Available Leave', '6.5', brown,context),
            SizedBox(width: size.width * 0.04,),
            tabcontainer2('Leave Request', '00', black,context),

          ],
        ),
        SizedBox(height: size.height * 0.06,),
        Row(
          children: [
            SizedBox(width: size.width * 0.145),
            Text(
              'My Recent Leave',
              style: TextStyle(color: Colors.black, fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: size.width * 0.435),

          ],
        ),
        SizedBox(height: size.height * 0.015,),
        Row(
          children: [
            SizedBox(width: size.width * 0.12,),
            TabEmployeeTable(),
          ],
        ),
        SizedBox(height: size.height * 0.035,),
        Row(
          children: [
            SizedBox(width: size.width * 0.43,),
            MaterialButton(
              onPressed: (){
                Get.to(()=>ApplyLeaveScreen());
              },
              minWidth: size.width * 0.075,
              height: size.height * 0.055,
              color: yellow,
              child: Text('Apply Leave',style: TextStyle(fontFamily: 'Inter,',fontSize: 15,fontWeight: FontWeight.bold,color: black),),
            )
          ],
        )
      ],
    );
  }
}


class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}


Widget container1(Color color,String text,IconData icon,double width){
  return Container(
    width: width,
    height: 40,
    color: color,
    child: Row(
      children: [
        SizedBox(width: 15,),
        Icon(icon,size: 14,color: grey,),
        SizedBox(width: 15,),
        Text(text,style: TextStyle(fontFamily: 'Inter',fontSize: 14,color: black),),
      ],
    ),
  );
}

Widget container2(String text,String no, Color color,BuildContext context ){
  final Size size = MediaQuery.of(context).size;
  return Card(
    elevation: 2,
    child: Container(
      width: size.width * 0.105,
      height:size.height *  0.102,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Colors.grey.shade400,
              width: 1
          )
      ),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.007,),
          Text(text,style: TextStyle(color: color,fontFamily: 'Inter',fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.003),
          Text(no,style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 21,fontWeight: FontWeight.bold),)
        ],
      ),
    ),
  );
}

Widget tabcontainer2(String text,String no, Color color,BuildContext context ){
  final Size size = MediaQuery.of(context).size;
  return Card(
    elevation: 2,
    child: Container(
      width: size.width * 0.143,
      height: size.height * 0.115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Colors.grey.shade400,
              width: 1
          )
      ),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.015,),
          Text(text,style: TextStyle(color: color,fontFamily: 'Inter',fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.005),
          Text(no,style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      ),
    ),
  );
}

// class EmployeeTable1 extends StatefulWidget {
//   @override
//   _EmployeeTable1State createState() => _EmployeeTable1State();
// }
//
// class _EmployeeTable1State extends State<EmployeeTable1> {
//   final ScrollController _scrollController = ScrollController();
//   List<Leave> leaveList = []; // Define a list to hold leave data
//
//   @override
//   void initState() {
//     super.initState();
//     fetchLeaveApplications(); // Fetch leave data when the widget initializes
//   }
//
//   Future<void> fetchLeaveApplications() async {
//     try {
//       // Replace with your actual method to fetch leaves from AWS
//       List<Leave> fetchedLeaves = await getLeavesFromAWS();
//       setState(() {
//         leaveList = fetchedLeaves; // Update the leaveList state
//       });
//     } catch (e) {
//       print("Error fetching leave applications: $e");
//     }
//   }
//
//   // Future<List<Leave>> getLeavesFromAWS() async {
//   //   // Implement your logic to fetch leave data from AWS
//   //   final dynamoDb = DynamoDB(region: 'us-east-1'); // Specify your region
//   //
//   //   // Assuming you have a table called 'LeaveApplications'
//   //   final response = await dynamoDb.scan(table: 'LeaveApplications');
//   //
//   //   List<Leave> leaves = [];
//   //
//   //   for (var item in response.items) {
//   //     leaves.add(Leave.fromMap(item)); // Convert the item to Leave object
//   //   }
//   //
//   //   return leaves;
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//
//     // Define the text style for the header row
//     TextStyle headerTextStyle = TextStyle(
//       fontFamily: 'Inter',
//       fontWeight: FontWeight.bold, // Bold font for header
//       fontSize: 14,
//       color: Colors.black,
//     );
//
//     // Define the text style for the data rows
//     TextStyle rowTextStyle = TextStyle(
//       fontFamily: 'Inter',
//       fontSize: 13,
//       color: Colors.black,
//     );
//
//     return Container(
//       color: Colors.white, // Set the background color to white
//       child: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: DataTable(
//               headingRowHeight: size.height * 0.050,
//               dataRowHeight: size.height * 0.055,
//               columnSpacing: size.width * 0.040,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey, width: 1), // Outline border for the table
//                 borderRadius: BorderRadius.circular(10), // Rounded corners for the table
//               ),
//               columns: [
//                 DataColumn(label: Text('Leave Type', style: headerTextStyle)),
//                 DataColumn(label: Text('From', style: headerTextStyle)),
//                 DataColumn(label: Text('To', style: headerTextStyle)),
//                 DataColumn(label: Text('Days', style: headerTextStyle)),
//                 DataColumn(label: Text('Reason', style: headerTextStyle)),
//                 DataColumn(label: Text('Approver', style: headerTextStyle)),
//                 DataColumn(label: Text('Status', style: headerTextStyle)),
//               ],
//               rows: leaveList.map((leave) {
//                 return DataRow(cells: [
//                   DataCell(Text(leave.leaveType, style: rowTextStyle)),
//                   DataCell(Text('${leave.fromDate.toLocal()}'.split(' ')[0], style: rowTextStyle)),
//                   DataCell(Text('${leave.toDate.toLocal()}'.split(' ')[0], style: rowTextStyle)),
//                   DataCell(Text(leave.days.toString(), style: rowTextStyle)),
//                   DataCell(Text(leave.reason, style: rowTextStyle)),
//                   DataCell(Text(leave.approver, style: rowTextStyle)),
//                   DataCell(Text(leave.status, style: rowTextStyle)),
//                 ]);
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Define your Leave class
class Leave {
  final String leaveType;
  final DateTime fromDate;
  final DateTime toDate;
  final int days;
  final String reason;
  final String approver;
  final String status;

  Leave({
    required this.leaveType,
    required this.fromDate,
    required this.toDate,
    required this.days,
    required this.reason,
    required this.approver,
    required this.status,
  });

  factory Leave.fromMap(Map<String, dynamic> data) {
    return Leave(
      leaveType: data['leaveType'] as String,
      fromDate: DateTime.parse(data['fromDate'] as String),
      toDate: DateTime.parse(data['toDate'] as String),
      days: data['days'] as int,
      reason: data['reason'] as String,
      approver: data['approver'] as String,
      status: data['status'] as String,
    );
  }
}

class TabEmployeeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Define the text style for the header row
    TextStyle headerTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold, // Bold font for header
      fontSize: 13,
      color: Colors.black,
    );

    // Define the text style for the data rows
    TextStyle rowTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      color: Colors.black,
    );

    // Create a list of data rows for demonstration
    List<DataRow> rows = List<DataRow>.generate(
      4, // Example number of rows, dynamically adjust based on your data
          (index) => DataRow(
        cells: [
          DataCell(Text('Casual', style: rowTextStyle)),
          DataCell(Text('10/06/2024', style: rowTextStyle)),
          DataCell(Text('12/06/2024', style: rowTextStyle)),
          DataCell(Text('2', style: rowTextStyle)),
          DataCell(Text('Traveling to Village', style: rowTextStyle)),
          DataCell(Text('Hassan Ali', style: rowTextStyle)),
          DataCell(Text(index % 2 == 0 ? 'Pending' : 'Approved', style: rowTextStyle)),
        ],
      ),
    );

    return Container(
      color: Colors.white, // Set the background color to white
      child: Column(
        children: [
          // Static header (remains in view while scrolling)
          // DataTable(
          //   headingRowHeight: 42,
          //   columnSpacing: 45,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(color: Colors.grey, width: 1), // Outline border for the table
          //     borderRadius: BorderRadius.circular(10), // Rounded corners for the table
          //   ),
          //
          //   rows: [], // Empty rows for the fixed header
          // ),
          // Fixed height for 4 rows + scrollable area
          SizedBox(
            height: 4 * 47.0, // 4 rows * row height (47.0)
            child: Container(
              // decoration: BoxDecoration(
              //   border: Border(
              //     top: BorderSide(color: Colors.grey, width: 1),  // Top border
              //     bottom: BorderSide(color: Colors.grey, width: 1),
              //   ),
              // ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  headingRowHeight: size.height * 0.053, // Remove header inside the scrollable table
                  dataRowHeight: size.height *  0.052,
                  columnSpacing: size.width * 0.044,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1), // Outline border for the table
                    borderRadius: BorderRadius.circular(10), // Rounded corners for the table
                  ),
                  columns: [
                    DataColumn(label: Text('Leave Type', style: headerTextStyle)),
                    DataColumn(label: Text('From', style: headerTextStyle)),
                    DataColumn(label: Text('To', style: headerTextStyle)),
                    DataColumn(label: Text('Days', style: headerTextStyle)),
                    DataColumn(label: Text('Reason', style: headerTextStyle)),
                    DataColumn(label: Text('Approved', style: headerTextStyle)),
                    DataColumn(label: Text('Status', style: headerTextStyle)),
                  ],
                  rows: rows, // Scrollable data rows
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







Container container3(Color color, String text, String name){
  return Container(
    child: Row(
      children: [
        SizedBox(width: 15,),
        CircleAvatar(
          radius: 17,
          backgroundColor: color,
          child: Text(text),
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Text(name,style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'Inter'),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text('April 20- Happy birthday',style: TextStyle(fontSize: 8,color: black,fontFamily: 'Inter'),),
            )
          ],
        )
      ],
    ),
  );
}

Widget dashContainer(BuildContext context,Color color,String text,IconData icon){
  final Size size = MediaQuery.of(context).size;
  return   Container(
    width: size.width * 0.125,
    height:size.height* 0.050,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        SizedBox(width: size.width * 0.02,),
        Icon(Icons.person_outline,size: 18,color: Colors.white,),
        SizedBox(width: size.width * 0.01,),
        Text('Leaves',style: TextStyle(fontSize: 18,fontFamily: 'Inter', color: Colors.white),),
      ],
    ),
  );
}

class EmployeeTable extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Define the text style for the header row
    TextStyle headerTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold, // Bold font for header
      fontSize: 14,
      color: Colors.black,
    );

    // Define the text style for the data rows
    TextStyle rowTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontSize: 13,
      color: Colors.black,
    );

    // Create a list of data rows for demonstration


    return Container(
      color: Colors.white, // Set the background color to white
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              headingRowHeight: size.height * 0.050, // Remove header inside the scrollable table
              dataRowHeight: size.height * 0.055,
              columnSpacing: size.width * 0.040,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1), // Outline border for the table
                borderRadius: BorderRadius.circular(10), // Rounded corners for the table
              ),
              columns: [
                DataColumn(label: Text('Leave Type', style: headerTextStyle)),
                DataColumn(label: Text('From', style: headerTextStyle)),
                DataColumn(label: Text('To', style: headerTextStyle)),
                DataColumn(label: Text('Days', style: headerTextStyle)),
                DataColumn(label: Text('Reason', style: headerTextStyle)),
                DataColumn(label: Text('Approver', style: headerTextStyle)),
                DataColumn(label: Text('Status', style: headerTextStyle)),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Casual', style: rowTextStyle)),
                  DataCell(Text('10/06/2024', style: rowTextStyle)),
                  DataCell(Text('12/06/2024', style: rowTextStyle)),
                  DataCell(Text('2', style: rowTextStyle)),
                  DataCell(Text('Traveling to Village', style: rowTextStyle)),
                  DataCell(Text('Hassan Ali', style: rowTextStyle)),
                  DataCell(Text('Pending', style: rowTextStyle)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sick', style: rowTextStyle)),
                  DataCell(Text('09/06/2024', style: rowTextStyle)),
                  DataCell(Text('11/06/2024', style: rowTextStyle)),
                  DataCell(Text('3', style: rowTextStyle)),
                  DataCell(Text('Fever', style: rowTextStyle)),
                  DataCell(Text('Muneeb Khan', style: rowTextStyle)),
                  DataCell(Text('Approved', style: rowTextStyle)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Casual', style: rowTextStyle)),
                  DataCell(Text('08/06/2024', style: rowTextStyle)),
                  DataCell(Text('10/06/2024', style: rowTextStyle)),
                  DataCell(Text('2', style: rowTextStyle)),
                  DataCell(Text('Wedding', style: rowTextStyle)),
                  DataCell(Text('Ahmed Raza', style: rowTextStyle)),
                  DataCell(Text('Approved', style: rowTextStyle)),
                ]),
                DataRow(cells: [
                  DataCell(Text('Sick', style: rowTextStyle)),
                  DataCell(Text('09/06/2024', style: rowTextStyle)),
                  DataCell(Text('11/06/2024', style: rowTextStyle)),
                  DataCell(Text('3', style: rowTextStyle)),
                  DataCell(Text('Fever', style: rowTextStyle)),
                  DataCell(Text('Muneeb Khan', style: rowTextStyle)),
                  DataCell(Text('Approved', style: rowTextStyle)),
                ]),
              ], // Scrollable data rows
            ),
          ),
        ],
      ),
    );
  }
}