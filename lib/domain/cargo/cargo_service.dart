import 'models/cargo/cargo.dart';

abstract class CargoService {
  
  Future addCargo({required Cargo cargo});
}
