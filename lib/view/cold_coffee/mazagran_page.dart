import 'package:flutter/material.dart';

class MazagranPage extends StatelessWidget {
  const MazagranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children:[
                  Hero(tag: 'dash',
                    child:Column(
                      children: [
                        ClipRRect(borderRadius: BorderRadius.circular(35),child: Image.asset('lib/images/caffeemacchiato.png'),),

                        //-------------------------------hero image-----------------------------------------------------------------

                        Text('Americano',style: TextStyle(fontSize:20,fontWeight: FontWeight.w800),),],),),

                  //----------------------------------hero image name-----------------------------------------------------------------------

                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Description',textAlign: TextAlign.start,style: TextStyle(fontWeight:FontWeight.w600,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('The drink consists of a single shot of espresso mixed with added water. Typically about 120 millilitres – 180 millilitres  of hot water mixed with the espresso.The hot water can be drawn directly from the machine used to brew the espresso, as water or steam, or from a separate water heater or kettle.'),),

                      //------------------------------------------description-------------------------------------------------------------------------

                      Text('Size',style: TextStyle(fontWeight:FontWeight.w600,fontSize:15),),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(spacing: 15,
                          children: [
                            Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(13),color: Colors.brown[50]),width:60,height:40,child:Center(child: Text('300 ml',)),),
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Colors.brown[50]),width:60,height:40,child:Center(child: Text('500 ml',)),),
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Colors.brown[50]),width:60,height:40,child:Center(child: Text('200 ml',)),),
                            Container(decoration:   BoxDecoration(borderRadius: BorderRadius.circular(13),color: Colors.brown[50]),width:60,height:40,child:Center(child: Text('600 ml',)),),],),),

                      //------------------------------------------size-------------------------------------------------------------------------

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Additional',style: TextStyle(fontWeight:FontWeight.w600,fontSize:15),),
                      ),
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('oat milk'),
                              Text('\u20B9500'),

                            ],
                          ),
                        ],
                      ),
                      Text('fat milk'),
                      Text('heavy cream'),],),]),),
        ),

        //------------------------------------------additional-------------------------------------------------------------------------

        bottomNavigationBar:
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.orange[400],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(13),topRight: Radius.circular(13),)
          ),
          //
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [Icon(Icons.remove_circle),
                Text('1'),
                Icon(Icons.add_circle),
                SizedBox(width: 80,),
                ElevatedButton(onPressed:(){}, child:Text('Buy Now'))]),

          //------------------------------------------bottom navigation bar-------------------------------------------------------------------------


        )

    );
  }
}
