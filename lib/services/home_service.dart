import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/home/domain/i_home_repository.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';

class HomeRepository implements IHomeRepository {
  @override
  Future<List<Tournament>> getTournaments() async {
    var collection = FirebaseFirestore.instance.collection('tournaments');
    var snapshot = await collection.get();

    return snapshot.docs
        .map((doc) => Tournament.fromJson(doc.data()))
        .toList();
  }
}
