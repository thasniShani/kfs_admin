import 'package:flutter/material.dart';

class ServicesBodyWidget extends StatelessWidget {
  const ServicesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KFS'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .3,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/service.jpeg'),
                fit: BoxFit.cover,
              ),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
            ),
          ),
          manageList(
            
            icon: const Icon(
              
              Icons.local_gas_station,
              color: Colors.black,
            ),
            text: 'Fuel Service',
            
          ),
          manageList(
            icon: const Icon(
              Icons.battery_alert_outlined,
              color: Colors.black,
            ),
            text: 'Battery Service ',
          ),
          manageList(
            icon: const Icon(
              Icons.local_car_wash,
              color: Colors.black,
            ),
            text: 'Car Wash Service',
          ),
          manageList(
            icon: const Icon(
              Icons.oil_barrel,
              color: Colors.black,
            ),
            text: 'Engine Oil Service ',
          ),
          manageList(
            
            icon: const Icon(
              Icons.car_repair,
              color: Colors.black,
            ),
            text: 'Tyre Service',
          ),
        ],
      ),
    );
  }

  Widget manageList({Icon? icon, String? text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.black12),),
        selected: true,
        selectedTileColor: Colors.white,
        leading: icon,
        title: Text(
          text!,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: const Icon(
          Icons.arrow_right,
          color: Colors.black,
        ),
      ),
    );
  }
}
