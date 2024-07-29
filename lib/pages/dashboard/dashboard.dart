import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard/components/body.dart';
import 'package:flutter_application_1/pages/dashboard/components/listItemComponent.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(0, 0),
                          blurRadius: 10)
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            const Icon(Icons.abc),
                            Container(
                              width: 5,
                            ),
                            Text(
                              "DigiPilot",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                    Container(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      child: Text(
                        "Main Menu",
                        style: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const ListItemComponent(
                      icon: Icons.home,
                      text: "Dashboard",
                      isActive: true,
                    ),
                    const ListItemComponent(
                      icon: Icons.speed,
                      text: "Performance",
                      isActive: false,
                    ),
                    const ListItemComponent(
                        icon: Icons.dashboard_outlined,
                        text: "Template",
                        isActive: false),
                  ],
                ),
              ),
            ),
            Expanded(flex: 5, child: DigiPilotBody())
          ],
        ));
  }
}
