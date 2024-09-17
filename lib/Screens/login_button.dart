import 'package:awe_project/Components/helper_class.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class EmployeLogin extends StatelessWidget {
  const EmployeLogin({super.key});

  Future<void> _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return HelperClass(
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Align(
        alignment: Alignment.topCenter,
        child: MaterialButton(
            onPressed: (){
              _launchURL('https://dev.dxtlxvdrz6jj5.amplifyapp.com/');
            },
          minWidth: 130,
          height: 45,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          child: Text('Employe Login',style: TextStyle(color: Colors.white,fontSize: 14),),
        ),
      )
          ],
        ),
        tablet: Row(
          children: [

          ],
        ),
        mobile: Column(
          children: [

          ],
        ),
        paddingWidth: size.width * 0.1,
        bgColor: Colors.white);
  }
}
