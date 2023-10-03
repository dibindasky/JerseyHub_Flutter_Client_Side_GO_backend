class ApiEndPoints {
  static String baseUrl = 'http://192.168.195.227:3000/users';
 // static String baseUrl = 'http://192.168.1.5:3000/users';
  //  static String baseUrl = 'http://192.168.52.139:3000/users';

  static String removeFromCart = '/cart/remove';
  static String updateQuantityPlus = '/cart/updateQuantity/plus';
  static String updateQuantityMinus = '/cart/updateQuantity/minus';
  static String checkOut = '/check-out';
  static String checkOutOrder = '/check-out/order';
  static String forgotPassword = '/forgot-password';
  static String addToCart = '/home/add-to-cart';
  static String getProducts = '/home/products';
  static String login = '/login';
  static String loginOtp = '/otplogin';
  static String userDetail = '/profile/details';
  static String productDetail = '/products/details';
  static String userAddress = '/profile/address';
  static String addAddress = '/profile/address/add';
  static String editEmail = '/profile/edit/email';
  static String editName = '/profile/edit/name';
  static String editPhone = '/profile/edit/phone';
  static String getReferalLink = '/profile/get-link';
  static String getOrders = '/profile/orders';
  static String cancelOrder = '/profile/orders/return';
  static String changePassword = '/profile/security/change-password';
  static String search = '/search';
  static String signUp = '/signup';
  static String verifyOtp = '/verifyotp';
}
