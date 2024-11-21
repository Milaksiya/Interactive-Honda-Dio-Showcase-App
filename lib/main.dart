import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //logo
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Honda-logo.svg/2560px-Honda-logo.svg.png"),
              const SizedBox(
                height: 10,
              ),
              //bike
              Image.network(
                  "https://e7.pngegg.com/pngimages/808/12/png-clipart-scooter-car-honda-motor-company-honda-dio-motorcycle-scooter-scooter-headlamp-thumbnail.png"),

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Honda Dio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const Text(
                "Specification",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  buildContainer(
                      "https://w7.pngwing.com/pngs/378/289/png-transparent-yamaha-rd135-motorcycle-engine-car-yamaha-motor-company-motorcycle-bicycle-car-motorcycle.png",
                      "120cc"),
                  buildContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb77wnbbrXYcNVL4r2ClqTH6npy98aU_USpg&s",
                      "25ps"),
                  buildContainer(
                      "https://www.shutterstock.com/image-photo/analog-vehicle-dashboard-260nw-1291159390.jpg",
                      "15.2 Km"),
                  buildContainer(
                      "https://rukminim2.flixcart.com/image/850/1000/kkh6zrk0/vehicle-brake-disc/s/b/n/access-disc-plate-p-a-original-imafztnhevgcf5cj.jpeg?q=90&crop=false",
                      "Disk"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.honda-mideast.com/en/-/media/honda/motorcycle/scooters/dio/inner-banner-res.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Container buildContainer(img, value) {
    return Container(
      height: 80,
      width: 80,
      child: Column(
        children: [
          Image.network(
            img,
            height: 50,
          ),
          Text(
            value,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      decoration: BoxDecoration(
        //color: Colors.black,
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
