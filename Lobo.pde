class Lobo
{
  Lobo()
  {
  }
  
  void dibujarLobo(int loboPosX, int loboPosY)
  {
    rectMode(CORNER);
    //El rect grande de la cabeza
    fill(#7E8798);//Gris lobo
    rect(loboPosX,loboPosY,200,80,10);
    //La oreja
    fill(#7E8798);//Gris lobo
    triangle(loboPosX,loboPosY+5,loboPosX+20,loboPosY-40,loboPosX+40,loboPosY);
    fill(#CE7B9F); //Rosado oscuro cerditos
    triangle(loboPosX+15,loboPosY,loboPosX+20,loboPosY-30,loboPosX+35,loboPosY);
    //La boca es un rect rotado
    fill(#7E8798);//Gris lobo
    pushMatrix();
    translate(loboPosX,loboPosY);
    rotate(radians(30));
    rect(40,20,170,50,10);
    popMatrix();
    //Nariz
    fill(0);
    triangle(loboPosX+160,loboPosY,loboPosX+200,loboPosY,loboPosX+200,loboPosY+20);
    //Ojo
    fill(#830D1B);
    ellipse(loboPosX+60,loboPosY+20,10,20);
    fill(255);
    circle(loboPosX+57,loboPosY+15,3);
    //Dientes
    fill(#EAE2B4);
    for(int i=0; i<7; i++)
    {
      triangle(loboPosX+50+(i*20),loboPosY+80,loboPosX+70+(i*20),loboPosY+80,loboPosX+60+(i*20),loboPosY+100);
    }
    rectMode(CENTER);
  }
}
