import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:avatar_glow/avatar_glow.dart';

String lorem = "Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, Igor nie jest zajebisty, ";
class ReadSite extends HookWidget {
  const ReadSite({
    super.key, 
    }); 
  @override
  Widget build(BuildContext context) {
    final expanded=useState(false);
    final animate = useState(false);
    final isListenig = useState(false);
    return Scaffold(
     backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
     appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
     ),
     body:
        Stack(
         alignment: Alignment.topCenter,
          children:[
            const SizedBox(height: double.infinity),
          Container(
            width: double.infinity,
            height: 230,
            decoration: const BoxDecoration(
              color: Color(0xFFFDA747),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(650, 300),
                bottomRight: Radius.elliptical(650, 300),
              ),
            )
          ),
          Positioned(
            top:84,
            child: LinearPercentIndicator(
              width: 352,
              animation: true,
              animationDuration: 2000,
              lineHeight: 20.0,
              barRadius: const Radius.circular(20.0),
              backgroundColor: Colors.white,
              progressColor: Colors.white,
            )),
          Positioned(
            top:85,
            child: LinearPercentIndicator(
              width: 350,
              animation: true,
              animationDuration: 1500,
              lineHeight: 18.0,
              percent: 0.58,
              barRadius: const Radius.circular(20.0),
              backgroundColor: Colors.white,
              progressColor: const Color(0xFFFDA747),
            )),
            const Positioned(
              top: 120,
              child:  Text('58% read',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),

         Positioned(
          top: 680,
           child: GestureDetector(
               onTap: (){
                 animate.value = !animate.value;
                 isListenig.value = !isListenig.value;
         
               },
                 
                 child:  AvatarGlow(
                 glowColor: Color(0xFFFDA747),
                 endRadius: 60.0,
                 duration: Duration(milliseconds: 1200),
                 repeat: true,
                 showTwoGlows: true,
                 repeatPauseDuration: Duration(milliseconds: 70),
                 animate: animate.value,
                 child: Material(     
            elevation: 8.0,
            shape: const CircleBorder(),
            child: CircleAvatar(
            backgroundColor: Colors.white,
           radius: 30.0,
            child: Icon(
              isListenig.value ? Icons.mic_outlined: Icons.mic_off,
              color: Color(0xFFFDA747),
            size: 35,
            ),
                ),
                ),
               ),
            ),
         ),
        


          Positioned( top:expanded.value ? null:180,
              child: Container(
                 // constraints:BoxConstraints(maxWidth:expanded.value ? 400:300,
                 // maxHeight: expanded.value ? double.maxFinite:430.0),
                  width: expanded.value ? double.maxFinite:300.0,
                  height: expanded.value ? double.maxFinite:430.0,
                  padding:expanded.value ?const EdgeInsets.only(left:22, right:22, top: 35, bottom: 45):const EdgeInsets.only(left:16, right:16, top: 8, bottom: 30),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                  offset: Offset(2, 2),
                    ),
                   ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                      child:
                         Text(
                      lorem,
                      textAlign: TextAlign.left,
                      
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3,
                        height: 1.4,
                      ),
                       ),
                    ),
              )
         ),

         Positioned( bottom: expanded.value ? 5:255,
              child: GestureDetector(
      onTap: (){
        expanded.value = !expanded.value;
      },
      child: Container(
          height: expanded.value ? 38:27,
          width: expanded.value ? 1000:300,
          color: Colors.transparent,
      )
              )
         ),

                Positioned(
                  bottom: expanded.value ? 45:255,
                  child: GestureDetector(
                    onTap: () {
                      expanded.value = !expanded.value;
                    },
                    child: AnimatedRotation(
                      turns: expanded.value ? 0.5:0,
                      alignment: Alignment.bottomCenter,
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 400),
                      child: const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                      Icons.chevron_right_rounded,
                      size: 40,
                      weight: 200,
                    ),
                      ),
                    ),
                  ),
                ),
      ],
     )
    );
  }
}
