import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  BookingDetails({super.key});
  CollectionReference kfsRef =
      FirebaseFirestore.instance.collection('orderDetails');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream:
            kfsRef.where('id', isEqualTo: _auth.currentUser!.uid).snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            final orders = snapshot.data!.docs;

            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(orders[index]['id'].toString()),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(orders[index]['name'].toString()),
                      Text(orders[index]['status'].toString()),
                    ],
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Details'),
                  ),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
