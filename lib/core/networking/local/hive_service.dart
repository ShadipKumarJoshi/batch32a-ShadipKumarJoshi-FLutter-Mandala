import 'package:final_assignment/app/constants/hive_table_constant.dart';
import 'package:final_assignment/features/auth/data/model/auth_hive_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

final hiveServiceProvider = Provider((ref) => HiveService());

class HiveService {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    // Register Adapters
    // Hive.registerAdapter(ProductHiveModelAdapter());
    // Hive.registerAdapter(DesignHiveModelAdapter());
    Hive.registerAdapter(AuthHiveModelAdapter());
  }

  // // ======================== Product Queries ========================
  // Future<void> addProduct(ProductHiveModel product) async {
  //   var box = await Hive.openBox<ProductHiveModel>(HiveTableConstant.productBox);
  //   await box.put(product.productId, product);
  // }

  // Future<List<ProductHiveModel>> getAllProducts() async {
  //   var box = await Hive.openBox<ProductHiveModel>(HiveTableConstant.productBox);
  //   var products = box.values.toList();
  //   return products;
  // }

  // // ======================== Design Queries ========================
  // Future<void> addDesign(DesignHiveModel design) async {
  //   var box = await Hive.openBox<DesignHiveModel>(HiveTableConstant.designBox);
  //   await box.put(design.designId, design);
  // }

  // Future<List<DesignHiveModel>> getAllDesigns() async {
  //   var box = await Hive.openBox<DesignHiveModel>(HiveTableConstant.designBox);
  //   var designs = box.values.toList();
  //   box.close();
  //   return designs;
  // }

  Future<void> addUser(AuthHiveModel user) async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.userBox);
    await box.put(user.userId, user);
  }

  Future<List<AuthHiveModel>> getAllUsers() async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.userBox);
    var users = box.values.toList();
    box.close();
    return users;
  }

  //Login
  Future<AuthHiveModel?> login(String email, String password) async {
    var box = await Hive.openBox<AuthHiveModel>(HiveTableConstant.userBox);
    var user = box.values.firstWhere(
        (element) => element.email == email && element.password == password);
    box.close();
    return user;
  }
}
