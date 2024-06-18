class ApiEndpoints {
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  static const String baseUrl = "http://10.0.2.2:8000/api/v1/";
  //static const String baseUrl = "http://192.168.4.4:8000/api/v1/";

  // ====================== Auth Routes ======================
  static const String login = "auth/loginUser";
  static const String register = "auth/createUser";
  static const String getUser = "auth/getUser/";
  static const String updateUser = "auth/updateUser/";
  static const String deleteUser = "auth/deleteUser/";
  static const String imageUrl = "http://10.0.2.2:8000/uploads/";
  // static const String uploadImage = "auth/uploadImage";
  static const String currentUser = "auth/getMe";

  // ====================== Product Routes ======================
  static const String createProduct = "product/createProduct";
  static const String getAllProduct = "product/getAllProducts";
  static const String getSingleProduct = "product/getSingleProduct/";
  static const String updateProduct = "product/updateProduct/";
  static const String deleteProduct = "product/deleteProduct/";

  // ====================== Design Routes ======================
  static const String createDesign = "design/createDesign";
  static const String deleteDesign = "design/deleteDesign";
  static const String getUserDesigns = "design/getUserDesigns";
  static const String getSingleDesign = "design/getSingleDesign";
  static const String updateDesign = "design/updateDesign/";
}
