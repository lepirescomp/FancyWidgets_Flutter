import 'package:flutter/material.dart';

class CustomizedFAB extends StatelessWidget {
  GestureTapCallback onPressed;

  //{} faz o parametro virar opcional
  CustomizedFAB({this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //adiciona configurações legais ao texto
    return RotatedBox(
      //The number of clockwise quarter turns the child should be rotated.
      //rotaciona o botao para ficar em pé
      quarterTurns: 3,
      child: RawMaterialButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RotatedBox(
                  //gira o icone para a bulssola apontar p outro lugar
                    quarterTurns: 1,
                    child: Icon(Icons.explore,color: Colors.orange,)),
                //dá um pequeno espaço entre o icone e o texto. Padding n seria bom aqui
                SizedBox(width:8.0),
                //muda a cor do texto do botão
                Text("PURCHASE", style: TextStyle(color: Colors.orange)),
              ],
            ),
          ),

          fillColor: Colors.purple,
          //isso dá o efeito de clicar
          splashColor: Colors.orange,

          onPressed: onPressed,
          shape: StadiumBorder()),
    );
  }
}
