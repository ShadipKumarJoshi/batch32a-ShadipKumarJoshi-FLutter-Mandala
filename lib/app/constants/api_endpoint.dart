class ApiEndpoints {

// private constructor to prevents the instantiation of the ApiEndpoints class, enforcing it to be used only as a static utility class.
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  // static const String baseUrl = "http://10.0.2.2:8000/api/v1/";
  static const String baseUrl = "http://192.168.137.1:8000/api/";

  // ====================== user Routes ======================
  static const String login = "user/loginUser";
  static const String register = "user/createUser";
  static const String getUser = "user/getUser/";
  static const String updateUser = "user/updateUser/";
  static const String deleteUser = "user/deleteUser/";
  static const String imageUrl = "http://10.0.2.2:8000/uploads/";
  // static const String uploadImage = "user/uploadImage";
  static const String currentUser = "user/getMe";

  // ====================== Product Routes ======================
  static const String createProduct = "product/createProduct";
  static const String getAllProduct = "product/getAllProducts";
  static const String getSingleProduct = "product/getSingleProduct/";
  static const String updateProduct = "product/updateProduct/";
  static const String deleteProduct = "product/deleteProduct/";

  // ====================== Design Routes ======================
  static const String createDesign = "design/createDesign";
  static const String deleteDesign = "design/deleteDesign";
  static const String getAllDesigns = "design/getAllDesigns";
  static const String getUserDesigns = "design/getUserDesigns";
  static const String getSingleDesign = "design/getSingleDesign";
  static const String updateDesign = "design/updateDesign/";

// sets the default number of items to be retrieved per page in paginated API requests.
  static const limitPage = 10;
}
