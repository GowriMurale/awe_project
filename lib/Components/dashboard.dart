
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
        if (constraints.maxWidth > 1200) {
          return DesktopDashboard();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopDashboard();
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

  // Future<List<LeaveApplication>> fetchLeaveApplications() async {
  //   try {
  //     return await Amplify.DataStore.query(LeaveApplication.classType);
  //   } catch (e) {
  //     print("Error fetching leave applications: $e");
  //     return [];
  //   }
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fetchLeaveApplications().then((applications) {
  //     setState(() {
  //       _leaveApplications = applications;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 10),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome',style: TextStyle(color: black,fontSize:36 ,fontWeight: FontWeight.bold,fontFamily: 'Inter'),),
              SizedBox(width: size.width * 0.01,),
              Text('Nur Hafiza',style: TextStyle(color: lightYellow,fontFamily:'Inter',fontSize: 46,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          children: [
            SizedBox(width: size.width * 0.155,),
           container2('Present', '20.5', purple),
            SizedBox(width: size.width * 0.04,),
            container2('Absent Days', '2.5', green),
            SizedBox(width: size.width * 0.04,),
            container2('Available Leave', '6.5', brown),
            SizedBox(width: size.width * 0.04,),
            container2('Leave Request', '00', black),

          ],
        ),
        SizedBox(height: size.height * 0.07,),
          Row(
            children: [
            SizedBox(width: size.width * 0.180),
              Text(
                  'My Recent Leave',
                    style: TextStyle(color: Colors.black, fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
                    ),
              SizedBox(width: size.width * 0.390),
            Container(
              width: 145,
              height: 30,
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
              padding: const EdgeInsets.only(left: 250,top: 10),
              child: EmployeeTable(),
            ),
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
                  minWidth: size.width * 0.025,
                  height: size.height * 0.05,
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

Widget container2(String text,String no, Color color ){
  return Card(
    elevation: 2,
    child: Container(
      width: 180,
      height: 80,
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
          SizedBox(height: 7,),
          Text(text,style: TextStyle(color: color,fontFamily: 'Inter',fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 3),
          Text(no,style: TextStyle(color: black,fontFamily: 'Inter',fontSize: 23,fontWeight: FontWeight.bold),)
        ],
      ),
    ),
  );
}

class EmployeeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the text style for the header row
    TextStyle headerTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold, // Bold font for header
      fontSize: 14,
      color: black,
    );

    // Define the text style for the balance rows
    TextStyle rowTextStyle = TextStyle(
      fontFamily: 'Inter',
      fontSize: 13,
      color: black,
    );

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: 900,
        height: 245,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.shade500,
            width: 1,
          ),
        ),
        child: DataTable(
          // Define the columns with the header text style
          columns: [
            DataColumn(
              label: Text('Leave Type', style: headerTextStyle),
            ),
            DataColumn(
              label: Text('From', style: headerTextStyle),
            ),
            DataColumn(
              label: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('To', style: headerTextStyle),
              ),
            ),
            DataColumn(
              label: Text('Days', style: headerTextStyle),
            ),
            DataColumn(
              label: Text('Reason', style: headerTextStyle),
            ),
            DataColumn(
              label: Text('Approved', style: headerTextStyle),
            ),
            DataColumn(
              label: Text('Status', style: headerTextStyle),
            ),
          ],
          // Define the rows with the balance row text style
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
              DataCell(Text('Monthly Leave', style: rowTextStyle)),
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
          ],
        ),
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