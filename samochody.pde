PImage tlo;
PImage meta1;
PImage bomba;
PImage pzycie;
PImage dzycie;
PImage tzycie;
PImage smierc;
PImage zmianapasu1;
PImage policja;
PImage auto;
PImage auto1;
PImage auto2;
PImage auto3;
PImage auto4;
PImage auto5;
PImage auto6;
PImage auto7;
PImage auto8;
PImage auto9;
PImage auto10;
PImage auto11;
PImage auto12;
PImage auto13;
PImage auto14;
PImage auto15;
PImage auto16;
PImage wygrany;
PImage wygrany1;
PImage dziura;
int xAuto1 = 770;
int yAuto1 = 1025;
int boomx = 800;
int boomy = 920;
int licznik;
int a;
int zycia = 3;
int meta = 0;
int xPolicja = 900;
int yPolicja = 735;
boolean pas = false;
int licznikpolicja = 0;
int numerauta = 1;
boolean wygrana1 = false;
boolean blokada = false;
void setup()
{
  size( 1920, 1200 );
  tlo = loadImage("tło.jpg");
  meta1 = loadImage("meta1.png");
  bomba = loadImage("bomba.png");
  pzycie = loadImage("1.png");
  dzycie = loadImage("2.png");
  tzycie = loadImage("3.png");
  wygrany1 = loadImage("4.png");
  smierc = loadImage("5.png");
  zmianapasu1 = loadImage("zp1.png");
  dziura = loadImage("dziura.jpg");
  policja = loadImage("policja.png");
  auto1 = loadImage("czerwone-auto.png");
  auto2 = loadImage("6.png");
  auto3 = loadImage("fioletowe-auto.png");
  auto4 = loadImage("jasno-niebieskie-auto.png");
  auto5 = loadImage("jasno-zielone.png");
  auto6 = loadImage("kabriolet.png");
  auto7 = loadImage("niebieskie-auto.png");
  auto8 = loadImage("pomaranczowe-auto.png");
  auto9 = loadImage("pomaranczowe-auto2.png");
  auto10 = loadImage("rozowe-auto.png");
  auto11 = loadImage("stare-auto.png");
  auto12 = loadImage("wyscigowka.png");
  auto13 = loadImage("zielone-auto.png");
  auto14 = loadImage("zolte-auto.png");
  auto15 = loadImage("ats.png");
  wygrany = loadImage("wygrany.png");
  auto1.resize(64, 128);
  auto2.resize(64, 128);
  auto3.resize(64, 128);
  auto4.resize(64, 128);
  auto5.resize(64, 128);
  auto6.resize(64, 128);
  auto7.resize(64, 128);
  auto8.resize(64, 128);
  auto9.resize(64, 128);
  auto10.resize(64, 128);
  auto11.resize(64, 128);
  auto12.resize(64, 128);
  auto13.resize(64, 128);
  auto14.resize(64, 128);
  auto15.resize(64, 128);
  tlo.resize(width, height);
  bomba.resize(64, 55);
  pzycie.resize(128, 119);
  dzycie.resize(128, 119);
  tzycie.resize(128, 119);
  wygrany1.resize(128, 119);
  smierc.resize(2500, 1600);
  zmianapasu1.resize(80, 128);
  policja.resize(64, 128);
  dziura.resize(1920, 1200);
}

void draw()
{
  image(dziura, 1100, 665);
  if (numerauta == 1)
    auto = auto1;
  if (numerauta == 2)
    auto = auto2;
  if (numerauta == 3)
    auto = auto3;
  if (numerauta == 4)
    auto = auto4;
  if (numerauta == 5)
    auto = auto5;
  if (numerauta == 6)
    auto = auto6;
  if (numerauta == 7)
    auto = auto7;
  if (numerauta == 8)
    auto = auto8;
  if (numerauta == 9)
    auto = auto9;
  if (numerauta == 10)
    auto = auto10;
  if (numerauta == 11)
    auto = auto11;
  if (numerauta == 12)
    auto = auto12;
  if (numerauta == 13)
    auto = auto13;
  if (numerauta == 14)
    auto = auto14;
  if (numerauta == 15)
    auto = auto15;
  image(tlo, 0, 0);
  image(meta1, 745, 70);
  image(auto, xAuto1, yAuto1);
  image(policja, xPolicja, yPolicja);
  image(zmianapasu1, 895, 735);
  print("           x" + xAuto1);
  print("           y" + yAuto1);
  image(bomba, boomx, boomy);
  if (yAuto1 == 80)
  {
    fill(255, 0, 0);
    textSize(100);
    text("WYGRANA!", 50, 920);
    image(wygrany, 550, 0);
    wygrana1 = true;
    blokada = true;
  }
  if (xAuto1 > 700 && xAuto1 < 845 && yAuto1 > 785 && yAuto1 < 970 )
  {
    boomx = 0;
    boomy = 0;
    bomba = loadImage("boom.png");
    bomba.resize(1920, 1200);
    a = 1;
    zycia = zycia-1;
    yAuto1 = 1025;
    xAuto1 = 770;
  }
  if (zycia == 3)
    image(pzycie, 10, 10);
  if (zycia == 2)
    image(dzycie, 10, 10);
  if (zycia == 1)
    image(tzycie, 10, 10);
  if (zycia < 1)
    image(smierc, -250, -250);
  if (wygrana1 == true)
    image(wygrany1, 10, 10);
  if (yAuto1 > 1035)
    {
    yAuto1 = 1025;
    xAuto1 = 770;
    }
  if (a == 1)
  {
    licznik = licznik+1;
    yAuto1 = 1025;
    xAuto1 = 770;
  }
  if (licznik > 125)
  {
    bomba = loadImage("bomba.png");
    bomba.resize(64, 55);
    boomx = 800;
    boomy = 920;
    a = 0;
    licznik = 0;
  }
  if (xAuto1 > 850 && xAuto1 < 950 && yAuto1 < 855 && yAuto1 > 150)
    {   
      yPolicja = yPolicja-5;
      pas = true;
      licznikpolicja = licznikpolicja+1;
      auto.resize(1,1);
    }
  if (licznikpolicja > 200)
    zycia = zycia-1;
}

void keyPressed()
{
  if ( keyCode == LEFT && blokada == false)
  {
    if (xAuto1 > 750)
      xAuto1 = xAuto1-10;
  } else if ( keyCode == RIGHT && blokada == false)
  {
    if (xAuto1 < 1200)
      xAuto1 = xAuto1+10;
  }
  if ( keyCode == UP && blokada == false)
  {
    if (yAuto1 > 80)
      yAuto1 = yAuto1-5;
  } else if ( keyCode == DOWN && blokada == false)
    yAuto1 = yAuto1+5;
      
  if ( keyCode ==  CONTROL)
    {
      if (numerauta > 1)
      {
        numerauta = numerauta-1;
        print("  " + numerauta + "  ");
      }
    }
  else if ( keyCode == SHIFT )
    {
      if (numerauta < 15)
      {
        numerauta = numerauta+1;
        print("  " + numerauta + "  ");
      }
    }
    
} 

