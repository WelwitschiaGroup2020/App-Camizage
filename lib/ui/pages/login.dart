import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/cores/Cores.dart';


class Login extends  StatefulWidget{
    @override
  State<StatefulWidget> createState() =>  LoginState();
}

class LoginState extends  State<Login>{
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
                Text("Bem-vindo(a) de Volta",style: TextStyle(
                  color: Colors.black ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 17,
                ),),
                SizedBox(height: 5,),
                Center(child:  Text("Alendra!",style: TextStyle(
                  color: Colors.black ,
                  fontWeight: FontWeight.bold ,
                  fontSize: 17,
                ),),),
                SizedBox(height: 20,),
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
                    InputFormulario(hinttext: "Cria a sua senha ", categoria: true),
                    SizedBox(height: 20,),
                    MaterialButton(
                      onPressed: (){},
                      color: Azul,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),

                      ),
                      minWidth: 300,
                      height: 40,
                      child: Text("Criar uma Conta", style: TextStyle(
                        color: Colors.white ,

                      ),),
                    ) ,

                    SizedBox(height: 5,),
                    MaterialButton(
                      minWidth: 300,
                      height: 40,
                      color: Vermelho,
                      onPressed: (){},
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