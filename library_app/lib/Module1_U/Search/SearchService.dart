import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  searchByName(String searchField) {
    List x = List<String>();
    FirebaseFirestore.instance.collection('CE').snapshots().listen((event) {
      event.docs.forEach((element) {
        FirebaseFirestore.instance
            .collection('CE')
            .doc(element.id)
            .collection('SUBJECTS')
            .snapshots()
            .listen((event1) {
          event1.docs.forEach((element1) {
            FirebaseFirestore.instance
                .collection('CE')
                .doc(element.id)
                .collection('SUBJECTS')
                .doc(element1.id)
                .collection('BOOKS')
                .snapshots()
                .listen((event2) {
              event2.docs.forEach((element2) {
                if (element2.get("seachKey") == searchField) {
                  x.add(element2.get('NAME'));
                }
              });
            });
          });
        });
      });
    });
    return x;
    /* return FirebaseFirestore.instance
        .collection('CE')
        .doc('NAME')
        .collection('SUBJECT')
        .doc("NAME")
        .collection('BOOKS')
        .where('searchKey',
            isEqualTo: searchField.substring(0, 1).toUpperCase())
        .get();*/
  }
}
//.doc('NAME').collection('SUBJECT').doc("NAME").collection('BOOKS')
