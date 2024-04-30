import 'package:ff_moneyblaster/feautres/home/domain/tournament.dart';

abstract class IHomeRepository {
 

  Future<List<Tournament>> getTournaments();

  
}
