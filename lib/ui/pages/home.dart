
import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/cores/Cores.dart';
import 'package:flutter_app_2/ui/pages/login.dart';
import 'package:flutter_app_2/ui/pages/registro.dart';

class Home extends StatefulWidget{
    @override
  State<StatefulWidget> createState() => HomeState();
}
class HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
      return Scaffold(
           backgroundColor: Azul,
           body: SingleChildScrollView(
               child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                             Text("CAMIZAGE" , style: TextStyle(
                                 color: Vermelho,
                                 fontSize: 32,
                                 letterSpacing: 3,
                                 fontWeight: FontWeight.bold
                             ),),
                             SizedBox(height:30,) ,
                             MaterialButton(
                               minWidth: 300,
                               onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Login())),
                               height: 40,
                               shape: RoundedRectangleBorder(
                                   borderRadius:BorderRadius.circular(22.0) ,
                                   side: BorderSide(
                                      color: Colors.white,
                                   )
                               ),
                               child: Text("Iniciar Seção", style: TextStyle(
                               color: Colors.white ,

                             ),),) ,
                             SizedBox(height: 5,),
                             MaterialButton(
                         minWidth: 300,
                         height: 40,
                         color: Vermelho, onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Registro())),
                         shape: RoundedRectangleBorder(
                             borderRadius:BorderRadius.circular(22.0) ,
                             side: BorderSide(
                               color: Vermelho,
                             )
                         ),
                         child: Text("Registra-se", style: TextStyle(
                         color: Colors.white ,

                       ),),) ,

                     ],
                  ),
               ),
          ),
      );
  }
}