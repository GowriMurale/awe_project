
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/leave_view_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  String selectedValue = 'Last 3 months';


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
          SizedBox(height: size.height * 0.02,),
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
          SizedBox(height: size.height * 0.030,),
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
          SizedBox(height: size.height * 0.065,),
            Row(
              children: [
              SizedBox(width: size.width * 0.178),
                Text(
                    'My Recent Leave',
                      style: TextStyle(color: Colors.black, fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                SizedBox(width: size.width * 0.396),
              Container(
                width:size.width * 0.098,
                height:size.height * 0.042,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(color: grey,width: 1)
                  ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                value: selectedValue,
                onChanged: (String? newValue) {
                setState(() {
                selectedValue = newValue!;
                });
              },
              items: _dropdownItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding:  EdgeInsets.only(left: size.width * 0.008),
                 child: Text(
                value,
                style: TextStyle(
                  fontFamily: 'Inter',
                fontSize: 15,
                color: Colors.black,
                ),
              ),),
              );
           }).toList(),
        // Show the dropdown icon and no custom container needed
              icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
            size: 20,
            ),
        // Adjusting dropdown's appearance
            dropdownColor: Colors.white, // Background color of dropdown
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
            Container(
              width: size.width * 0.137,
              height: size.height * 0.040,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: grey,width: 1)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: _dropdownItems.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),),
                    );
                  }).toList(),
                  // Show the dropdown icon and no custom container needed
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                  // Adjusting dropdown's appearance
                  dropdownColor: Colors.white, // Background color of dropdown
                ),
              ),
            ),
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
      width: size.width * 0.115,
      height:size.height *  0.112,
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
          Text(text,style: TextStyle(color: color,fontFamily: 'Inter',fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.003),
          Text(no,style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 23,fontWeight: FontWeight.bold),)
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