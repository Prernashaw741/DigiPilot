import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemComponent extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isActive;
  const ListItemComponent(
      {super.key,
      required this.icon,
      required this.text,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isActive ? Colors.grey.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(icon,
                color: isActive
                    ? DigiPilotColors.primary
                    : Colors.black.withOpacity(0.5)),
            Container(
              width: 5,
            ),
            Text(text,
                style: GoogleFonts.roboto(
                    color: isActive
                        ? DigiPilotColors.primary
                        : Colors.black.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w600))
          ],
        ));
  }
}
