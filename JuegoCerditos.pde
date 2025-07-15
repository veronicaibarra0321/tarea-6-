//Juego de los 3 Cerditos

//Estas son las variables
int escena;

//Estos son los cerditos
Cerdito cerd1;
Cerdito cerd2;
Cerdito cerd3;

//posicion inicial de cada cerdito
int posCerdito1;
int posCerdito2;
int posCerdito3;

//tamaño de cada una de las casa
int tamCasa1;
int tamCasa2;
int tamCasa3;

//Este es el lobo
Lobo lobo;
int posLobo;

//Aqui set up
void setup(){
  size(800,800);
  noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
  
  
  //Inicializamos las variables
  escena=1;
  
  //Aqui se crean los cerditos
  cerd1 = new Cerdito(1);
  cerd2 = new Cerdito(2);
  cerd3 = new Cerdito(3);
  
  posCerdito1=250;
  posCerdito2=50;
  posCerdito3=50;
  
  //Cada casa comienza en un tamaño
  tamCasa1=100;
  tamCasa2=100;
  tamCasa3=100;
  
  //Aqui se inicia el lobo
  lobo = new Lobo();
  posLobo = -100;
}

//Aqui se dibuja
void draw(){
  
  //Lo primero que aparece son los cerditos
  if(escena==1)
  {
     background(#BFDE9D);
     
     //Cada cerdito con su color diferente
     cerd1.dibujarCerdito(400,500);
     cerd2.dibujarCerdito(200,500);
     cerd3.dibujarCerdito(600,500);
     
     fill(0);
     textSize(40);
     text("Presiona cualquier tecla para comenzar",400,200);
  }
  
  //Primer cerdito camina para construir la casa de paja
  if(escena==2)
  {
    background(#BFDE9D);
    
    fill(0);
    textSize(40);
    if(posCerdito1<600)
    {
      text("Usa las flechas <-  -> para moverte",400,200);
    }
    else
    {
      text("Ahora, haz click para construir la casa",400,200);
    }
    
    //dibuja el cerdito 1
    cerd1.dibujarCerdito(posCerdito1,500);
    
    //casa de paja
    fill(#BCA348);
    rect(600,500,tamCasa1,tamCasa1*1.7);
    
    //La casa va a crecer cuando el jugador presiona la flecha
    if(tamCasa1>200)
    {
      escena=3;
    }
  }
  
  //Llega el lobo a la casa de paja y la destruye
  if(escena==3)
  {
    background(#BFDE9D);
    
    //dibuja el cerdito 1
    cerd1.dibujarCerdito(posCerdito1,500);
     
    //casa de paja
    fill(#BCA348);
    rect(600,500,tamCasa1,tamCasa1*1.7);
    
    //Dibuja al lobo
    lobo.dibujarLobo(posLobo,posLobo);
    //el lobo se mueve
    posLobo+=2;
    
    //la casita se hace pequeña y el cerdito sale corriendo
    if(posLobo>300)
    {
      tamCasa1-=1.5;
      posCerdito1+=5;
    }
    
    if(posLobo>600)
    {
      escena=4;
      posLobo=-100;
    }
  }
  
  //EL segundo cerdito construye su casa de madera
  if(escena==4)
  {
    background(#BFDE9D);
    
    fill(0);
    textSize(40);
    if(posCerdito2<600)
    {
      text("Usa las flechas <-  -> para moverte",400,200);
    }
    else
    {
      text("Ahora, haz click para construir la casa",400,200);
    }
    
    //dibuja el cerdito 2
    cerd2.dibujarCerdito(posCerdito2,500);
     
    //casa de madera
    fill(#906939);
    rect(600,500,tamCasa2,tamCasa2*1.5);
        

    //La casa va a crecer cuando el jugador presiona la flecha
    if(tamCasa2>200)
    {
      escena=5;
    }
  }
  
  //Llega el lobo a la casa de madera y la destruye
  if(escena==5)
  {
    background(#BFDE9D);
    
    //dibuja el cerdito
    cerd2.dibujarCerdito(posCerdito2,500);
     
    //casa de madera
    fill(#906939);
    rect(600,500,tamCasa2,tamCasa2*1.5);
    
    //Dibuja al lobo
    lobo.dibujarLobo(posLobo,posLobo);
    //el lobo se mueve
    posLobo+=2;
    
    //la casita se hace pequeña y el cerdito sale corriendo
    if(posLobo>300)
    {
      tamCasa2-=1.5;
      posCerdito2+=5;
    }
    
    if(posLobo>600)
    {
      escena=6;
      posLobo=-100;
    }
  }
  
  //EL tercer cerdito construye su casa de ladrillo
  if(escena==6)
  {
    background(#BFDE9D);
        
    fill(0);
    textSize(40);
    if(posCerdito3<600)
    {
      text("Usa las flechas <-  -> para moverte",400,200);
    }
    else
    {
      text("Ahora, haz click para construir la casa",400,200);
    }
    
    //dibuja el cerdito
    cerd3.dibujarCerdito(posCerdito3,500);
     
    //casa de madera
    fill(#F27131);
    rect(600,500,tamCasa3,tamCasa3*1.5);
        

    //La casa va a crecer cuando el jugador presiona la flecha
    if(tamCasa3>200)
    {
      escena=7;
    }
  }
  
  //Llega el lobo a la casa de ladrillo y la intenta destruir
  if(escena==7)
  {
    background(#BFDE9D);
    
    //dibuja el cerdito
    cerd3.dibujarCerdito(posCerdito3,500);
     
    //casa de ladrillo
    fill(#F27131);
    rect(600,500,tamCasa3,tamCasa3*1.5);
    
    //Dibuja al lobo
    lobo.dibujarLobo(posLobo,posLobo);
   
    //la casita no se destruye y el lobo sale corriendo
    if(posLobo>300)
    {
      //el lobo se mueve
      posLobo+=2;
    }
    else
    {
       posLobo+=5;
    }
    
    //Si el lobo pasa la casa sin destruirla, pasa a la ultima escena
    if(posLobo>800)
    {
      escena=8;
    }
  }
  
  //El lobo se va y los cerditos celebran
  if(escena==8)
  {
    background(#96F0A4);
     
     //Cada cercito con su color diferente
     cerd1.dibujarCerdito(400,500);
     cerd2.dibujarCerdito(200,500);
     cerd3.dibujarCerdito(600,500);
     
     fill(0);
     textSize(30);
     text("¡El lobo se fue y los tres cerditos vivieron felices y seguros!",400,200);
  }
}

//Aqui es la funcion para pasar a otras escenas con las teclas
void keyReleased()
{ 
  if(escena==1)
  {
    escena=2;
  }
}

//Aqui se mueven las cosas cuando se presionan las teclas
void keyPressed()
{
  //La escena donde el cerdito 1 camina a la casa de paja y la construye
  if(escena==2)
  {
    //Aqui es mientras el cerdito no está en la casa
    if(posCerdito1<600)
    {
      if(keyCode==RIGHT)
      {
        posCerdito1+=10;
      }
      
      else if(keyCode==LEFT )
      {
        posCerdito1-=10;
      }
    }
  }
  
  //La escena donde el cerdito 2 camina a la casa de madera y la construye
  if(escena==4)
  {
    //Aqui es mientras el cerdito no está en la casa
    if(posCerdito2<600)
    {
      if(keyCode==RIGHT)
      {
        posCerdito2+=10;
      }
      
      else if(keyCode==LEFT )
      {
        posCerdito2-=10;
      }
    }
  }
  
  //La escena donde el cerdito 3 camina a la casa de ladrillo y la construye
  if(escena==6)
  {
    //Aqui es mientras el cerdito no está en la casa
    if(posCerdito3<600)
    {
      if(keyCode==RIGHT)
      {
        posCerdito3+=10;
      }
      
      else if(keyCode==LEFT )
      {
        posCerdito3-=10;
      }
    }
  }
}

void mouseReleased()
{
  //Primera casa
  if(escena==2)
  {
    //Aqui es cuando ya está en la casa
    if(posCerdito1>=600)
    {
      tamCasa1+=10;
    }
  }
  
  //Segunda casa
  else if(escena==4)
  {
    //Aqui es cuando ya está en la casa
    if(posCerdito2>=600)
    {
      tamCasa2+=10;
    }
  }
  
  //Tercera casa
  if(escena==6)
  {
    //Aqui es cuando ya está en la casa
    if(posCerdito3>=600)
    {
      tamCasa3+=10;
    }
  }
}
