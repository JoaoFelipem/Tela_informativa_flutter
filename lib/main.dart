import 'package:flutter/material.dart';

void main() {
  runApp(TelaInformativa());
}

class TelaInformativa extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cidades de Rondônia",
            style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
              //Imagem
              Container(
                  width: double.infinity,
                  child: Flexible(
                    child: Image.asset(
                      'assets/images/jiparana.jpg',
                      fit: BoxFit.contain,
                      )
                    ) 
                  ),

              //País estado, cidade e estrelas
              Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //País, estado e cidade
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Brasil",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Text("Ji-Paraná, Rondônia",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey))
                          ],
                        ),
                      ),

                      //Estrelas
                      Container(
                        child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.blue),
                          Text("  3.500")
                          ],
                        )
                      ),
                    ],
                  )
                ),

              //BOTÕES
              Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        IconButton(
                            icon: Icon(Icons.phone, color: Colors.blue),
                            onPressed: () {}),
                        Text("Ligar",
                            style: TextStyle(fontWeight: FontWeight.bold))
                        ]
                      ),
                      Column(children: [
                        IconButton(
                            icon: Icon(Icons.map, color: Colors.blue),
                            onPressed: () {}),
                        Text("Endereço",
                            style: TextStyle(fontWeight: FontWeight.bold))
                        ]
                      ),
                      Column(
                          children: [
                            IconButton(
                                icon: Icon(Icons.share, color: Colors.blue),
                                onPressed: () {}),
                            Text("Compartilhar",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]
                      )
                    ],
                   )
                  ),

              //Descrição
              Container(
                  margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
                  child: Text(
                      "Ji-Paraná é um município brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131 026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 237º mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro.",
                      style: TextStyle(fontWeight: FontWeight.w600)))
            ]
                )
              )
            );
  }
}
