class Cerdito
{
  int numCerdito;
  
  Cerdito(int num)
  {
    numCerdito=num;
  }
  
  void dibujarCerdito(int cerdito1posX, int cerdito1posY)
  {
    //Orejas
     fill(#F293BC); //Rosado oscuro cerditos
     ellipse(cerdito1posX-35,cerdito1posY-35,40,30);
     ellipse(cerdito1posX+35,cerdito1posY-35,40,30);
     //Cabeza
     fill(#F293BC); //Rosado cerditos
     circle(cerdito1posX,cerdito1posY,100);
     //Nariz
     fill(#CE7B9F); //Rosado oscuro cerditos
     ellipse(cerdito1posX,cerdito1posY+20,50,35);
     fill(#F293BC); //Rosado cerditos
     ellipse(cerdito1posX-10,cerdito1posY+20,10,15);
     ellipse(cerdito1posX+10,cerdito1posY+20,10,15);
     //Ojos
     fill(0);
     ellipse(cerdito1posX-15,cerdito1posY-15,8,15);
     ellipse(cerdito1posX+15,cerdito1posY-15,8,15);
     fill(255);
     circle(cerdito1posX-17,cerdito1posY-20,3);
     circle(cerdito1posX+13,cerdito1posY-20,3);
     
     
     //Dependiendo del numero, se pinta el cerdito azul, verde o amarillo
     if(numCerdito==1)
     {
       fill(#5234CE); //Azul
       triangle(cerdito1posX-30,cerdito1posY+40,cerdito1posX-10,cerdito1posY+70,cerdito1posX+40,cerdito1posY+40);
     }
     
     if(numCerdito==2)
     {
       fill(#36CE34); //Verde
       triangle(cerdito1posX-30,cerdito1posY+40,cerdito1posX-10,cerdito1posY+70,cerdito1posX+40,cerdito1posY+40);
     }
     
     if(numCerdito==3)
     {
       fill(#CEAD34); //Amarillo
       triangle(cerdito1posX-30,cerdito1posY+40,cerdito1posX-10,cerdito1posY+70,cerdito1posX+40,cerdito1posY+40);
     }
  }
}
