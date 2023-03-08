import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children:
            [
              Image.asset('assets/images/screen1.png',height: 480,width: double.infinity,fit: BoxFit.cover,),
              Padding(
                padding: EdgeInsets.only(left: 15,bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fashion Sale",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    MaterialButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed : ()
                      {
                        // Todo: put Logic here ( when you tap on this button, this logic will be operated )
                      },
                      child: Text("Check",style: TextStyle(fontSize: 17,color: Colors.white),),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
              height: 400,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,

                itemBuilder: (context,index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Stack(
                        children:
                        [
                          Image.asset('assets/images/man.png',height: 100,width: 125,fit: BoxFit.fill,),

                          MaterialButton(
                            onPressed: ()
                            {
                              print("Done!");
                            },
                            color: Colors.red,
                            height: 40,
                            minWidth: 40,
                            child: Text("20%",style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                        [

                          Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                          Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                          Icon(Icons.favorite,color: Colors.yellow,size: 20,),
                          Icon(Icons.favorite,color: Colors.grey,size: 20,),
                          Icon(Icons.favorite,color: Colors.grey,size: 20,),
                          Text("(10)",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      SizedBox(height: 7,),
                      Text("Product's name",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 7,),
                      Text("Product's category",style: TextStyle(),),
                      SizedBox(height: 7,),



                      RichText(
                        text: const TextSpan(
                            children:
                            [

                              TextSpan(text: "15 \$   ",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black)),
                              TextSpan(text: "10 \$ ",style: TextStyle(color: Colors.red)),
                            ]
                        ),
                      )
                    ],
                  );
                },

                separatorBuilder : (context,i){
                  return SizedBox(width : 10);
                },
              )
          )
        ],
      ),
    );
  }
}