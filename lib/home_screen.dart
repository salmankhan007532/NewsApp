import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height* 1;
    var width= MediaQuery.sizeOf(context).width* 1;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("News",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Container(
            height: height * .5,
            color: Colors.amber,
            child: Stack(
              children: [
                Container(
                  color: Colors.blueGrey,
                ),

                Positioned(
                  bottom: 10,
                  left: width * .1,
                  right: width * .1,
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: height * .24,
                        width: width * .8,
                        color: Colors.orange,
                        
                      ),
                    ),
                  ),
                )
                
              ],
            ),
          )
      ]),
    );
  }
}