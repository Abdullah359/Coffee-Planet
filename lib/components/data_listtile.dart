import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DataListTile extends StatefulWidget {
  const DataListTile({
    super.key,
    required this.imageURL,
    required this.title,
    required this.price,
    required this.addCartOnTap,
    required this.navigateOnTap,
  });

  final String imageURL, title, price;
  final void Function()? addCartOnTap;
  final void Function()? navigateOnTap;

  @override
  State<DataListTile> createState() => _DataListTileState();
}

class _DataListTileState extends State<DataListTile> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: ListTile(
            leading: SizedBox(
              height: 90,
              width: 60,
              child: Image.asset(widget.imageURL, fit: BoxFit.cover),
            ),
            title: Text(
              widget.title,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              widget.price,
              style: GoogleFonts.poppins(),
            ),
            trailing: IconButton(
              icon: const FaIcon(FontAwesomeIcons.circlePlus),
              onPressed: widget.addCartOnTap,
            ),
            onTap: widget.navigateOnTap,
          ),
        ),
      ),
    );
  }
}
