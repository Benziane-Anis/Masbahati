import 'package:flutter/material.dart';

class Mesbaha extends StatefulWidget {
  const Mesbaha({super.key});

  @override
  State<Mesbaha> createState() => _MesbahaState();
}

class _MesbahaState extends State<Mesbaha> {
  double _angle = 0;
  int numbetoftasbeha = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/MesbahaApp.png',height: 80,),
        centerTitle: true,
        backgroundColor: Colors.black26,
        elevation: 32,
      ),
      body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient:  LinearGradient(
                end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [Colors.black,Colors.grey]),
            ),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Mesbaha.png'),
                    radius: 100,
                  ),
                  const SizedBox(height: 30,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap:() {
                          _angle = _angle + 1;
                          numbetoftasbeha++;
                          setState(() {});
                        },
                        child: Transform.rotate(angle: _angle,child: Image.asset('assets/images/sabha1.png')),

                      ),
                      Column(
                        children: [
                          const Text(
                            "عدد التسبيحات",
                            style:
                            TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Text(
                            "$numbetoftasbeha",
                            style: const TextStyle(fontSize: 32,color: Colors.white,),
                          ),
                          const SizedBox(height: 30,),

                          MaterialButton(onPressed: () {
                            numbetoftasbeha = 0;
                            setState(() {
                            });
                          },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          color: Colors.white,child: const Text('Reset',style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                        ],
                      )

                    ],
                  ),
                  const Text("اضغط على المسبحة لبدء التسبيح",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white)),
                ],
              ),
            ),

      )),
    );
  }
}
