// // Step 2: Create default admin user and store in Hive
// import 'package:hive/hive.dart';
//
// Future<void> createDefaultAdminUser() async {
//   var box = await Hive.openBox('adminUser');
//
//   if (box.isEmpty) {
//     await box.put('adminID', 'admin@gmail.com');
//     await box.put('adminPassword', 'admin123'); // Store hashed/salted passwords in real scenarios
//   }
//
//   await box.close();
// }
//
// // Step 4: Validate and authenticate admin user
// Future<void> loginAdminUser(String enteredID, String enteredPassword) async {
//   var box = await Hive.openBox('adminUser');
//   String? adminID = box.get('adminID');
//   String? adminPassword = box.get('adminPassword');
//
//   if (enteredID == adminID && enteredPassword == adminPassword) {
//     // Navigate to admin home UI
//     // Use Navigator to switch to the admin home UI screen
//   } else {
//     // Show an error message or handle incorrect credentials
//   }
//
//   await box.close();
// }
//
// // Step 5: Navigation to Admin Home UI (Use it after authentication)
// // Navigator.push(
// // context,
// // MaterialPageRoute(builder: (context) => AdminHomeScreen()),
// // );
