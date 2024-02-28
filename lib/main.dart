import 'package:flutter/material.dart';

void main() {
  runApp(TelaInformativa());
}

class TelaInformativa extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cidades de Rondônia", style: TextStyle(fontWeight:FontWeight.bold) ,),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            //Imagem
            Container(
              child: Image.asset('assets\images\jiparana.jpg')
            ),
            
            //País estado, cidade e estrelas
            Container(
              color: Colors.brown,
              child: Row(
                children: [
                    //País, estado e cidade
                  Container(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Brasil"),
                        Text("Ji-Paraná, Rondônia")
                      ],
                    ),
                    color: Colors.orange,
                  ),

                  //Estrelas
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Text("3.500")
                      ],
                    )
                  ),
                ],
              )
            ),
            

            //BOTÕES
            Container(
              color:Colors.lightBlue,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
              
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: (){

                        }
                      ),
                      Text("Ligar")
                    ]
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.map),
                        onPressed: (){

                        }
                      ),
                      Text("Endereço")
                    ]
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: (){

                        }
                      ),
                      Text("Compartilhar")
                    ]
                  )
                ],
              )
            ),

            //Descrição
            Container(
              child: 
              Text("Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131 026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 237º mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro.")
            )
          ]
        )
      )
    );
  }
}

