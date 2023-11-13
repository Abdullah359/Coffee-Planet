import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Muhammad Abdullah';
    List splitted = name.split(' ');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.moon,
                    size: 20,
                    color: Colors.black,
                  ))
            ]),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(
                      'assets/images/pfp.jpeg',
                      height: 140,
                      width: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  name.length > 12
                      ? '${splitted[0] + " " + splitted[1][0].toString()}'
                      : name,
                  style: GoogleFonts.poppins(
                      fontSize: 26, fontWeight: FontWeight.w500),
                ),
                Text(
                  'User123@gmail.com',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 30),
                ProfileMenuTile(
                    title: 'Setting',
                    icon: FontAwesomeIcons.gear,
                    onPress: () {}),
                ProfileMenuTile(
                    title: 'Billing Details',
                    icon: FontAwesomeIcons.wallet,
                    onPress: () {}),
                ProfileMenuTile(
                    title: 'User Management',
                    icon: FontAwesomeIcons.userCheck,
                    onPress: () {}),
                Divider(
                  height: 4,
                  indent: 15,
                  endIndent: 15,
                  thickness: 1.2,
                ),
                SizedBox(height: 15),
                ProfileMenuTile(
                    title: 'Information',
                    icon: FontAwesomeIcons.info,
                    onPress: () {}),
                ProfileMenuTile(
                    title: 'Logout',
                    icon: FontAwesomeIcons.rightFromBracket,
                    endIcon: false,
                    textColor: Colors.red,
                    onPress: () {}),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xffa75e44).withOpacity(0.1),
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: Color(0xffa75e44),
            size: 20,
          ),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400)
            .apply(color: textColor),
      ),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.angleRight,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            )
          : null,
    );
  }
}
