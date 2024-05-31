// import 'package:flutter/cupertino.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
//
// class CustomCreditCard extends StatefulWidget {
//   const CustomCreditCard({super.key,  required this.formKey, required this.autoValidateMode});
//   final GlobalKey<FormState> formKey;
//   final AutovalidateMode autoValidateMode;
//   @override
//   State<CustomCreditCard> createState() => _CustomCreditCardState();
// }
//
// class _CustomCreditCardState extends State<CustomCreditCard> {
//   String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
//
//   bool showBackView = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CreditCardWidget(
//           backgroundImage: 'assets/images/visa_background.jfif',
//           isHolderNameVisible: true,
//             cardNumber: cardNumber,
//             expiryDate: expiryDate,
//             cardHolderName: cardHolderName,
//             cvvCode: cvvCode,
//             showBackView: showBackView,
//             onCreditCardWidgetChange: (value) {}),
//         CreditCardForm(
//           autovalidateMode: widget.autoValidateMode,
//           cardNumber: cardNumber,
//           expiryDate: expiryDate,
//           cardHolderName: cardHolderName,
//           cvvCode: cvvCode,
//           onCreditCardModelChange: (creditCardModel){
//             expiryDate=creditCardModel.expiryDate;
//             cardHolderName=creditCardModel.cardHolderName;
//             cardNumber=creditCardModel.cardNumber;
//             cvvCode=creditCardModel.cvvCode;
//             showBackView=creditCardModel.isCvvFocused;
//             setState(() {
//
//             });
//           },
//           formKey: widget.formKey,
//         ),
//       ],
//     );
//   }
// }
