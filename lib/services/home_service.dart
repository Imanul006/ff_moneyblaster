import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ff_moneyblaster/feautres/home/domain/i_home_repository.dart';
import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeRepository implements IHomeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<List<Tournament>> getTournaments() async {
    var collection = FirebaseFirestore.instance.collection('tournaments');
    var snapshot = await collection.get();

    return snapshot.docs.map((doc) => Tournament.fromJson(doc.data())).toList();
  }

  @override
  Future<Tournament> registerForTournament(
      {required String tournamentId}) async {
    final id = _auth.currentUser!.uid;
    var tournamentRef =
        FirebaseFirestore.instance.collection('tournaments').doc(tournamentId);
    await tournamentRef.update({
      'registeredPlayersId': FieldValue.arrayUnion([id])
    });

    // Fetch the updated tournament data
    var snapshot = await tournamentRef.get();
    var tournamentData = snapshot.data();

    // Convert the tournament data to a Tournament object
    return Tournament.fromJson(tournamentData!);
  }
}
