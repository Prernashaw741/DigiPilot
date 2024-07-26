import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),  
              decoration: const BoxDecoration(
              
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Row(children: [
                      const Icon(Icons.abc),
                      Container(
                        width: 5,
                      ),
                      const Text("DigiPilot", style: TextStyle(
                        fontWeight: FontWeight.w900
                      ),),
                    ],)

                    
                  ),
                  Container(
                    height: 15,
                  ),
                  Container(
                     padding:const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: const Text("Main Menu", style: TextStyle(
                      fontSize: 15,
                    ),),
                  ),
                  Container(
                    padding:const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Row(children: [
                      const Icon(Icons.abc_outlined),
                      Container(
                        width: 5,
                      ),
                      const Text("DashBoard", style: TextStyle(
                        color: Color(0xFF2E8B57)
                      ))
                    ],)
                  ),
                  
                  Container(
                    padding:const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Row(children: [
                      const Icon(Icons.abc_outlined),
                      Container(
                        width: 5,
                      ),
                      const Text("Performance")
                    ],)
                  ),

                   Container(
                    padding:const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Row(children: [
                      const Icon(Icons.abc_outlined),
                      Container(
                        width: 5,
                      ),
                      const Text("Terminate")
                    ],)
                  ),
                  
                   Container(
                    padding:const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Row(children: [
                      const Icon(Icons.abc_outlined),
                      Container(
                        width: 5,
                      ),
                      const Text("Inbox")
                    ],)
                  )
                  
                ],
              ),
            ),
            
            Container(
              
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),  
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                Container(
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                          Text("Full Details of your Competitors")
                        ],
                      
                      ),

                    ],
                  )
                ),

                Container(
                  child: Row(children: [
                    
                  ],)
                )
                

              ],)
            )
          ],
        )
      ),
    );
  }
}
