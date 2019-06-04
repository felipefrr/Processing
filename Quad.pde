class Quad{
   int i; 
   float txi;
   float tyi;
   float s;
   float sp;
   
   Quad(int i, float s, float xi, float yi, float sp){
     this.i = i;
     this.s = s;
     this.txi = xi;
     this.tyi = yi;
     this.sp = sp;
   }          
  
    void show(){  
      switch(i){
        case 1:
                 line(xi1(yi1(tyi)),yi1(tyi),xf1(txi),yf1(xf1(txi)));
                 txi = txi + sp;
                 tyi = tyi + sp;
                 delay(10);
                 break;
         case 2:
                 line(xi2(yi2(tyi)),yi2(tyi),xf2(txi),yf2(xf2(txi)));
                 txi = txi + sp;
                 tyi = tyi - sp;
                 delay(10);
                 break;
        case 3:
                 line(xi3(yi3(tyi)),yi3(tyi),xf3(txi),yf3(xf2(txi)));
                 txi = txi - sp;
                 tyi = tyi - sp;
                 delay(10);
                 break;
        case 4:
                 line(xi4(txi),s/2,s/2,yf4(tyi));
                 txi = txi + sp;
                 tyi = tyi - sp;
                 delay(10);
                 break;
      }
   }


// 1° Quad formulas
 float xi1(float stop){
      if(stop>=s)
          return s;
      else
          return s/2;
  }
  
  float yi1(float t){
     if(t>s/2)
         return s/2;
     else
         return t;
  }
  
  float xf1(float t){
      if(t>s)
          return s;
      else
          return t;
  }
  
  float yf1(float stop){
     if(stop>s)
       return s;
     else
       return s/2;
  } 
}

//2° Quad formulas

        
  float xi2(float stop){
      if(stop<=s/2)
          return s;
      else
          return s/2;
  }
  
  float yi2(float t){
     if(t<s/2)
         return s/2;
     else
         return t;
  }
  
  float xf2(float t){
      if(t>s)
          return s;
      else
          return t;
  }
  
  float yf2(float stop){
     if(stop>s)
       return s;
     else
       return s/2;
  }
  
  //3° Quad formulas  
  float xi3(float stop){
      if(stop<=s/2)
          return s;
      else
          return s/2;
  }
  
  float yi3(float t){
     if(t<s/2)
         return s/2;
     else
         return t;
  }
  
  float xf3(float t){
      if(t<0)
          return s/2;
      else
          return t;
  }
  
  float yf3(float stop){
     if(stop<0)
       return s/2;
     else
       return s/2;
  }

  //4° Quad formulas
  
  
  float xi4(float t){
      if(t>s/2)
          return s/2;
      else
          return t;
  }
  
  float yf4(float t){
     if(t<0)
       return 0;
     else
       return t;
  }
