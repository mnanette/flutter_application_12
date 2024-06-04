import 'package:flutter/material.dart';
import 'package:flutter_application_12/widgets/grid_view_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  color: Theme.of(context).primaryColor,
                  child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
     //                   ///
   //                     children: [
                          
//Text(''),
//Card(
//color:const Color(0xff0454db),
//elevation:0,
//shape:RoundedRectangleBorder(
//borderRadius:BorderRadius.circular(20),
//),
//child:Padding(
//padding:EdgeInsets.all(30.0),
//child:Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children:[
//Text('X'),
//Text('Y')
//],
                ),
              ),
            
          ),
          ///
        
     )
        
        ],
        ),

       
Row( 
Expanded (
child: Container(
color: const Color (0xfffbfafb), padding: const EdgeInsets.all(20), child: GridView.count(
crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20,
children:
const GridViewItem(), Container(

  }
}
