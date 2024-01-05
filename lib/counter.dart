import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getcounter/controller.dart';

class GetCounter extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  GetCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'Get Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: height*0.08,
                child: Material(
                  shape: const CircleBorder(),
                  color: Colors.teal,
                  child: InkWell(
                    borderRadius:BorderRadius.circular(35) ,
                      onTap: () {
                        controller.incrementCounter();
                      },
                      child: Container(
                        width: width * 0.17,
                        height: height,

                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ),
              ),
              Obx(
                    () => Text(
                  '${controller.count.value}',
                  style: TextStyle(fontSize: height * 0.03),
                ),
              ),

              Material(
                color:Colors.teal,
                shape: CircleBorder(),
                child: InkWell(
                  borderRadius: BorderRadius.circular(35),
                    onTap: () {
                      controller.decrementCounter();
                    },
                    child: Container(
                      width: width * 0.17,
                      height: height * 0.09,
                      child: const Icon(
                        Icons.minimize,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
