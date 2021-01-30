

import "package:flutter/material.dart";
import 'package:flutter_app_2/ui/cores/Cores.dart';


class Registro extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => RegistroState();
}

class RegistroState extends State<Registro>{
    @override
  Widget build(BuildContext context) {
      return Scaffold(

        body: SingleChildScrollView(
          child:Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Bem-vindo(a) a Camizage Ride",style: TextStyle(
                   color: Colors.black ,
                   fontWeight: FontWeight.bold ,
                   fontSize: 17,
                 ),),
                 SizedBox(height: 20,),
                 Text("Encontre Lorem ipsulum catalipm ipslum" , style: TextStyle(
                     color: Colors.grey ,
                 ),),
                 SizedBox(height:40,) ,
                 Padding(padding:EdgeInsets.only(
                    left: 20  ,
                    right: 20  ,

                 ) ,child:  Form(child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     InputFormulario(hinttext: "Digite o seu nome " , categoria: false),
                     SizedBox(height:10,),
                     InputFormulario(hinttext: "Digite o numero do seu telefone " ,categoria: false),
                     SizedBox(height:10,),
                     InputFormulario(hinttext: "Cria a sua senha ", categoria: true),
                     SizedBox(height: 20,),
                     MaterialButton(
                       onPressed: (){},
                       color: Azul,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),

                       ),
                       minWidth: 260,
                       height: 50,
                       child: Text("Criar uma Conta", style: TextStyle(
                         color: Colors.white ,

                       ),),
                     )


                   ],
                 )),)

               ],
             ),
          ),
        ),
      );
  }

  Widget InputFormulario({hinttext  ,categoria})=> SizedBox(
    height: 50,
    child:TextFormField(
      obscureText: categoria,
      decoration:InputDecoration(

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.5),

            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                  color:Colors.grey.withOpacity(0.2)
              )
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          hintText: hinttext ,
          hintStyle: TextStyle(
            color: Vermelho ,
            fontSize: 14,
            fontWeight: FontWeight.bold ,
          )
      ),

    ),
  );
}