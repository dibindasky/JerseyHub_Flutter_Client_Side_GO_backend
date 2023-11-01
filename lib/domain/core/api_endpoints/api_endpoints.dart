class ApiEndPoints {
  // static String baseUrl = 'http://192.168.47.227:3000/users';
  static String baseUrl = 'http://10.0.2.2:3000/users';
  //  static String baseUrl = 'http://192.168.52.139:3000/users';

  static String removeFromCart = '/cart/remove';
  static String updateQuantityPlus = '/cart/updateQuantity/plus';
  static String updateQuantityMinus = '/cart/updateQuantity/minus';
  static String checkOut = '/check-out';
  static String checkOutOrder = '/check-out/order';
  static String forgotPassword = '/forgot-password';
  static String addToCart = '/home/add-to-cart';
  static String cart = '/cart';
  static String getProducts = '/home/products';
  static String login = '/login';
  static String loginOtp = '/otplogin';
  static String getWishList = '/wishlist';
  static String addToWishList = '/home/wishlist/add';
  static String removeFromWishList = '/wishlist/remove';
  static String userDetail = '/profile/details';
  static String productDetail = '/products/details';
  static String userAddress = '/profile/address';
  static String editEmail = '/profile/edit/email';
  static String editName = '/profile/edit/name';
  static String editPhone = '/profile/edit/phone';
  static String getReferalLink = '/profile/get-link';
  static String getOrders = '/profile/orders';
  static String orderDetails = '/profile/orders/{id}';//use order_id in the end of the url
  static String cancelOrder = '/profile/orders/return';
  static String changePassword = '/profile/security/change-password';
  static String search = '/search/';
  static String signUp = '/signup';
  static String verifyOtp = '/verifyotp';
  static String coupon = '/coupon';
}
