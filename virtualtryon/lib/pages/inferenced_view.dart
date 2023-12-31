import 'package:flutter/material.dart';
import 'dart:io';


// A widget that displays the picture taken by the user.
class InferencePictureScreen extends StatelessWidget {
  final String imagePath;

  final double height, width;
  const InferencePictureScreen(
      {super.key,
      required this.imagePath,
      required this.height,
      required this.width});

  // for (var item in rec) {}
  @override
  Widget build(BuildContext context) {
    File imgfile = File(imagePath);
    Image img = Image.file(imgfile);
    return Scaffold(
      appBar: AppBar(title: const Text('Inference Results')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Container(
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              image: AssetImage('assets/images/homepage.jpg'),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                // Image.file(File(imagePath)),
                img,
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                // color: Color.fromARGB(50, 125, 236, 227),

                color: Colors.transparent,
                elevation: 0.0,
                height: 70,

                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Route _createRoute(monuments) {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) =>
//         ListViews(monuments: monuments),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.easeIn;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

//paints rectangle over image
// class RectanglePainter extends CustomPainter {
//   double x, y, w, h;
//   int delta;
//   File image;
//   String name;
//   RectanglePainter(
//       {required this.x,
//       required this.y,
//       required this.w,
//       required this.h,
//       required this.delta,
//       required this.name,
//       required this.image});

//   @override
//   void paint(
//     Canvas canvas,
//     Size size,
//   ) {
//     Paint paint = Paint()
//       ..style = PaintingStyle.stroke
//       // ..color = Color.fromARGB(255, 13, 174 + delta, 174 - delta)
//       ..color = Color.fromARGB(255, 20, 60 + delta, 70 + delta)
//       ..strokeWidth = 2;

//     debugPrint("x: $x\ty: $y\tw: $w\th: $h");

//     //testspan to be printed with style
//     final textSpan = TextSpan(
//       text: name,
//       style: TextStyle(
//           fontSize: 11, color: Color.fromARGB(255, 20, 60 + delta, 70 + delta)),
//     );

//     //paints text on the window
//     final textPainter = TextPainter(
//       text: textSpan,
//       textDirection: TextDirection.ltr,
//     );
//     textPainter.layout(
//       minWidth: 0,
//       maxWidth: size.width,
//     );
//     final Offset offSet;
//     if (y > 15) {
//       offSet = Offset(x + 5, y - 14);
//     } else {
//       offSet = Offset(x + 5, h + 1);
//     }
//     textPainter.paint(canvas, offSet);
//     canvas.drawLine(Offset(x, y), Offset(w, y), paint);
//     canvas.drawLine(Offset(x, y), Offset(x, h), paint);
//     canvas.drawLine(Offset(w, y), Offset(w, h), paint);
//     canvas.drawLine(Offset(x, h), Offset(w, h), paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }