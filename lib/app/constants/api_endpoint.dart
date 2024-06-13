class ApiEndpoints {
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  static const String baseUrl = "http://10.0.2.2:3000/api/v1/";
  //static const String baseUrl = "http://192.168.4.4:3000/api/v1/";

  // ====================== Auth Routes ======================
  static const String login = "auth/login";
  static const String register = "auth/register";
  static const String updateUser = "auth/updateUser/";
  static const String deleteUser = "auth/deleteUser/";
  static const String imageUrl = "http://10.0.2.2:3000/uploads/";
  static const String uploadImage = "auth/uploadImage";

  // ====================== Product Routes ======================
  static const String createProduct = "product/createProduct";
  static const String getAllProduct = "product/getAllProducts";

  // ====================== Design Routes ======================
  static const String createDesign = "design/createDesign";
  static const String deleteDesign = "design/";
  static const String getAllDesign = "design/getAllDesign";
}
