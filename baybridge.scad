module support() {
   rotate([90,0,0]) linear_extrude(3) polygon([[-5,6],[-5,4],[-2,1],[-2,-1],[-5,-4],[-5,-6],[-1,-2],[1,-2],[5,-6],[5,-4],[2,-1],[2,1],[5,4],[5,6],[1,2],[-1,2]]);
}


module leg(lean=1.5,dir=1) {
   translate([-3+dir,-4,-15]) rotate([0,lean,0]) linear_extrude(277,scale=.8) square([6,12],center=false);
   translate([-6+dir,-2,-15]) rotate([0,lean*1.1,0]) linear_extrude(277,scale=[.5,1]) square([10,6],center=false);
}

module tower() {
   color("Silver") union() {
      translate([-5,-1,0]) leg();
      translate([49,1,0]) rotate([0,0,180]) leg();
      translate([22,3,22]) scale([5,1.8,4]) support();
      translate([22,3,65]) scale([4.9,1.8,3.8]) support();
      translate([22,3,142]) scale([4.4,1.8,3.9]) support();
      translate([22,3,182]) scale([4.0,1.8,3.5]) support();
      translate([22.5,3,220]) scale([3.8,1.8,3.3]) support();
      translate([22,1,-3]) cube([50,5,5],center=true);
      
      difference() {
         translate([22,0.5,260]) cube([38,8,22],center=true); 
         translate([10,0,264]) cube([4,15,5],center=true);
         translate([17,0,264]) cube([4,15,5],center=true);
         translate([28,0,264]) cube([4,15,5],center=true);
         translate([35,0,264]) cube([4,15,5],center=true);
      }
   }
   translate([22.5,0,272]) cylinder(h=8,r=4,center=true);
   color("OrangeRed") translate([22.5,0,280]) sphere(r=4,center=true);
   color("OrangeRed") translate([22.5,0,278]) cylinder(h=4,r=4,center=true);
   
   color("DarkGrey") translate([-5,0,-15]) rotate([0,0,22.5]) cylinder(h=5,r=18,center=true,$fn=8);
   color("DarkGrey") translate([50,0,-15]) rotate([0,0,22]) cylinder(h=5,r=18,center=true,$fn=8);
   color("DarkGrey") translate([20,0,-15]) cube([40,25,5],center=true);

}

module roadway() {
   color("DarkGrey") scale([2,15,5]) rotate([90,0,90]) linear_extrude(20) polygon([[-48,0/*1:44,2,0,0*/] ,[-48,1],[-48,2/*1:0,0,43,2*/] ,[-46.72,2.06] ,[-45.46,2.12] ,[-44.23,2.17] ,[-43.02,2.23] ,[-41.82,2.29] ,[-40.65,2.34] ,[-39.5,2.39] ,[-38.37,2.44] ,[-37.25,2.49] ,[-36.16,2.54] ,[-35.08,2.59] ,[-34.02,2.63] ,[-32.98,2.68] ,[-31.95,2.72] ,[-30.94,2.76] ,[-28.97,2.85] ,[-27.05,2.92] ,[-25.19,3] ,[-23.38,3.06] ,[-21.61,3.13] ,[-19.89,3.18] ,[-18.2,3.24] ,[-16.55,3.28] ,[-14.93,3.33] ,[-13.34,3.37] ,[-11.77,3.4] ,[-10.22,3.43] ,[-8.69,3.45] ,[-7.17,3.47] ,[-5.65,3.49] ,[-4.14,3.49] ,[-2.63,3.5] ,[-1.12,3.5] ,[0.41,3.49] ,[1.94,3.49] ,[3.49,3.47] ,[5.06,3.45] ,[6.66,3.43] ,[8.28,3.4] ,[9.93,3.37] ,[11.62,3.33] ,[13.34,3.28] ,[15.11,3.24] ,[16.93,3.18] ,[18.8,3.13] ,[20.72,3.06] ,[22.7,3] ,[23.71,2.96] ,[24.74,2.92] ,[25.79,2.89] ,[26.85,2.85] ,[27.93,2.81] ,[29.03,2.76] ,[30.15,2.72] ,[31.28,2.68] ,[32.44,2.63] ,[33.61,2.59] ,[34.81,2.54] ,[36.03,2.49] ,[37.26,2.44] ,[38.52,2.39] ,[39.81,2.34] ,[41.11,2.29] ,[42.44,2.23] ,[43.79,2.17] ,[45.17,2.12] ,[46.57,2.06],[48,2/*1:-48,2,0,0*/] ,[48,1],[48,0/*1:0,0,-44,2*/] ,[46.69,0.06] ,[45.4,0.12] ,[44.14,0.17] ,[42.89,0.23] ,[41.66,0.29] ,[40.45,0.34] ,[39.26,0.39] ,[38.09,0.44] ,[36.94,0.49] ,[35.81,0.54] ,[34.69,0.59] ,[33.59,0.63] ,[32.51,0.68] ,[31.44,0.72] ,[30.39,0.76] ,[29.35,0.81] ,[28.33,0.85] ,[27.32,0.89] ,[25.34,0.96] ,[23.42,1.03] ,[21.55,1.09] ,[19.72,1.15] ,[17.93,1.21] ,[16.18,1.26] ,[14.46,1.31] ,[12.77,1.35] ,[11.12,1.38] ,[9.48,1.41] ,[7.87,1.44] ,[6.28,1.46] ,[4.7,1.48] ,[3.12,1.49] ,[1.56,1.5] ,[0,1.5] ,[-1.56,1.5] ,[-3.12,1.49] ,[-4.7,1.48] ,[-6.28,1.46] ,[-7.87,1.44] ,[-9.48,1.41] ,[-11.12,1.38] ,[-12.77,1.35] ,[-14.46,1.31] ,[-16.18,1.26] ,[-17.93,1.21] ,[-19.72,1.15] ,[-21.55,1.09] ,[-23.42,1.03] ,[-25.34,0.96] ,[-27.32,0.89] ,[-28.33,0.85] ,[-29.35,0.81] ,[-30.39,0.77] ,[-31.44,0.72] ,[-32.51,0.68] ,[-33.59,0.63] ,[-34.69,0.59] ,[-35.81,0.54] ,[-36.94,0.49] ,[-38.09,0.44] ,[-39.26,0.39] ,[-40.45,0.34] ,[-41.66,0.29] ,[-42.89,0.23] ,[-44.14,0.17] ,[-45.4,0.12] ,[-46.69,0.06]]);
}

module oldcable() {
    color("Silver") scale([2,7.2,5]) rotate([90,0,90]) linear_extrude(2) polygon([[-48,0/*1:24,-24,0,0*/] ,[-48,1],[-48,2/*1:0,0,19,-21*/] ,[-46.83,0.76] ,[-45.59,-0.46] ,[-44.29,-1.63] ,[-42.93,-2.78] ,[-41.5,-3.89] ,[-40.03,-4.96] ,[-38.5,-5.99] ,[-36.91,-6.98] ,[-35.28,-7.94] ,[-33.6,-8.85] ,[-31.87,-9.72] ,[-30.1,-10.54] ,[-28.29,-11.32] ,[-26.44,-12.06] ,[-25.5,-12.4] ,[-24.55,-12.74] ,[-23.6,-13.07] ,[-22.63,-13.38] ,[-21.66,-13.68] ,[-20.68,-13.97] ,[-19.69,-14.24] ,[-18.69,-14.51] ,[-17.69,-14.76] ,[-16.68,-14.99] ,[-15.66,-15.21] ,[-14.64,-15.42] ,[-13.61,-15.62] ,[-12.58,-15.8] ,[-11.54,-15.97] ,[-10.49,-16.13] ,[-9.44,-16.27] ,[-8.39,-16.39] ,[-7.33,-16.5] ,[-6.26,-16.6] ,[-5.2,-16.68] ,[-4.12,-16.75] ,[-3.05,-16.8] ,[-1.97,-16.84] ,[-0.89,-16.86] ,[0.19,-16.87] ,[1.27,-16.86] ,[2.36,-16.83] ,[3.45,-16.79] ,[4.54,-16.74] ,[5.63,-16.67] ,[6.72,-16.58] ,[7.81,-16.47] ,[8.9,-16.35] ,[10,-16.21] ,[11.09,-16.05] ,[12.18,-15.88] ,[13.27,-15.69] ,[14.36,-15.48] ,[15.45,-15.26] ,[16.54,-15.02] ,[17.63,-14.76] ,[18.71,-14.48] ,[19.79,-14.18] ,[20.87,-13.87] ,[21.94,-13.54] ,[23.02,-13.19] ,[24.08,-12.82] ,[25.15,-12.43] ,[26.21,-12.02] ,[27.27,-11.6] ,[28.32,-11.15] ,[29.37,-10.69] ,[30.41,-10.2] ,[31.45,-9.7] ,[32.48,-9.18] ,[33.5,-8.63] ,[34.52,-8.07] ,[35.54,-7.49] ,[36.54,-6.88] ,[37.54,-6.26] ,[38.53,-5.61] ,[39.52,-4.95] ,[40.5,-4.26] ,[41.47,-3.55] ,[42.43,-2.83] ,[43.38,-2.08] ,[44.32,-1.3] ,[45.26,-0.51] ,[46.18,0.3] ,[47.09,1.14],[48,2/*1:-30,-29,0,0*/] ,[48,1],[48,0/*1:0,0,-24,-24*/] ,[47.27,-0.71] ,[46.53,-1.41] ,[45.78,-2.1] ,[45.01,-2.76] ,[44.23,-3.42] ,[43.43,-4.06] ,[42.62,-4.69] ,[41.8,-5.3] ,[40.97,-5.9] ,[40.13,-6.48] ,[39.27,-7.05] ,[38.41,-7.6] ,[37.53,-8.14] ,[36.64,-8.67] ,[35.74,-9.18] ,[34.83,-9.68] ,[33.92,-10.16] ,[32.99,-10.63] ,[32.05,-11.08] ,[31.1,-11.52] ,[30.15,-11.94] ,[29.19,-12.36] ,[28.22,-12.75] ,[27.24,-13.13] ,[26.25,-13.5] ,[25.26,-13.85] ,[24.26,-14.19] ,[23.25,-14.52] ,[22.24,-14.82] ,[21.22,-15.12] ,[20.19,-15.4] ,[19.16,-15.67] ,[18.12,-15.92] ,[17.08,-16.16] ,[16.04,-16.38] ,[14.99,-16.59] ,[13.93,-16.78] ,[12.88,-16.96] ,[11.82,-17.13] ,[10.75,-17.28] ,[9.69,-17.42] ,[8.62,-17.54] ,[7.54,-17.65] ,[6.47,-17.74] ,[5.39,-17.82] ,[4.32,-17.88] ,[3.24,-17.94] ,[2.16,-17.97] ,[1.08,-17.99] ,[0,-18] ,[-1.08,-17.99] ,[-2.16,-17.97] ,[-3.24,-17.94] ,[-4.32,-17.88] ,[-5.39,-17.82] ,[-6.47,-17.74] ,[-7.54,-17.65] ,[-8.62,-17.54] ,[-9.69,-17.42] ,[-10.75,-17.28] ,[-11.82,-17.13] ,[-12.88,-16.96] ,[-13.93,-16.78] ,[-14.99,-16.59] ,[-16.04,-16.38] ,[-17.08,-16.16] ,[-18.12,-15.92] ,[-19.16,-15.67] ,[-20.19,-15.4] ,[-21.22,-15.12] ,[-22.24,-14.82] ,[-23.25,-14.52] ,[-24.26,-14.19] ,[-25.26,-13.85] ,[-26.25,-13.5] ,[-27.24,-13.13] ,[-28.22,-12.75] ,[-29.19,-12.36] ,[-30.15,-11.94] ,[-31.1,-11.52] ,[-32.05,-11.08] ,[-32.99,-10.63] ,[-33.92,-10.16] ,[-34.83,-9.68] ,[-35.74,-9.18] ,[-36.64,-8.67] ,[-37.53,-8.14] ,[-38.41,-7.6] ,[-39.27,-7.05] ,[-40.13,-6.48] ,[-40.97,-5.9] ,[-41.8,-5.3] ,[-42.62,-4.69] ,[-43.43,-4.06] ,[-44.23,-3.42] ,[-45.01,-2.76] ,[-45.78,-2.1] ,[-46.53,-1.41] ,[-47.27,-0.71]]);
}

module cable() {
    color("DarkGrey") translate([0,0,610]) rotate([-44.5,0,0]) rotate([0,90,0]) rotate_extrude(angle=89,$fn=128) translate([500,0,0]) circle(4);
}

module cablePair() {
   translate([4,350,0]) cable();
   translate([42,350,0]) cable();
}

module pylon() {
/*
   color("DarkGrey") union() {
      translate([-25,-50,-40]) cube([100,100,15]);
      translate([-15,-40,-25]) cube([80,80,10]);
   }
*/
   color("DarkGrey") translate([20,0,-32]) hull() {
      translate([2,0,12.5]) cube([90,40,5],center=true);
      translate([35,0,0]) cylinder(h=10,r=45,center=true,$fn=128);
      translate([-35,0,0]) cylinder(h=10,r=45,center=true,$fn=128);
   }
}

module crossbeams(x,y) {
   translate([x,y-219.5,(sin(((y+180)/16))*5)+85]) cube([3,3,12]);
   translate([x,y-209.5,(sin(((y+180)/16))*5)+85]) cube([3,3,12]);
   translate([x,y-220,(sin(((y+180)/16))*5)+85]) rotate([45,0,0]) cube([3,3,15]);
   translate([x,y-220,(sin(((y+180)/16))*5)+85]) rotate([-45,0,0]) cube([3,3,15]);
}

module cables() {
   $fn=128;
   color("Silver") difference() {
      union() {
         for (x=[-180:20:1230]) {
            translate([2.5,x-220,101]) cylinder(h=200,d=5);
            translate([41,x-220,100]) cylinder(h=200,d=5);
         }
         for (x=[-180:20:1230]) {
            crossbeams(1,x);
            crossbeams(41,x);
         }
      }
      translate([-5,350,610]) rotate([0,90,0]) cylinder(h=100,r=500,$fn=128);
      translate([-5,-350,610]) rotate([0,90,0]) cylinder(h=100,r=500,$fn=128);
      translate([-5,1050,610]) rotate([0,90,0]) cylinder(h=100,r=500,$fn=128);
   }
   

}

module span() {
   translate([0,415,0]) union() {
      color("Silver") tower();
      translate([0,700,0]) tower();
      

      pylon();
      translate([0,700,0]) pylon();

      cablePair();
      difference() {
         translate([0,700,0]) cablePair();
         translate([0,1020,0]) cube([500,500,500]);
      }

      difference() {
         translate([0,-700,0]) cablePair();
         translate([0,-920,0]) cube([500,500,500]);
      }

      cables();
   }
}

module anchor(width=0) {
   color("Grey") union() {
      difference() {
         translate([23,0,-40]) linear_extrude(160,scale=0.9) square([55,40+width],center=true);
         translate([23,0,119]) cube([26,60,60],center=true);
      }
      translate([25,0,-40]) linear_extrude(110,scale=0.9) square([100,60+width],center=true);
      translate([25,0,-40]) linear_extrude(70,scale=0.8) square([50,90+width],center=true);
   }
}

module roadbed() {
   difference() {
      translate([0,300,95]) scale([1.1,2.1,.75]) roadway();
      color("DimGrey") translate([5,300,100]) scale([.8,2.1,.75]) roadway();
   }
   
}

module road() {
   translate([0,940,0]) union() {
     roadbed();
     translate([0,0,-17]) roadbed();
   }
}

module bridge() {
   translate([0,0,40]) union() {
      translate([45,2930,0]) rotate([0,0,180]) span();
   //   translate([50,980,-1]) rotate([0,0,180]) span();
      span();
      translate([0,200,0]) road();
      translate([0,1465,0]) anchor(width=35);
      translate([0,0,0]) anchor(width=-30);
      translate([0,2945,0]) anchor(width=-20);
   //   translate([0,1450,0]) span();
   }
}

//tower();
//pylon();
bridge();

