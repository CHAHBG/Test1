import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
import '../controllers/auth_service.dart';
import '../core/utils/image_constant.dart';
import '../widgets/custom_image_view.dart';
import 'logged_screen/logged_screen.dart';

class NumberLoginScreen extends StatefulWidget {
  const NumberLoginScreen({Key? key}) : super(key: key);

  @override
  _NumberLoginScreenState createState() => _NumberLoginScreenState();
}

class _NumberLoginScreenState extends State<NumberLoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final Telephony telephony = Telephony.instance;

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  void listenToIncomingSMS(BuildContext context) {
    print("Listening to sms.");
    telephony.listenIncomingSms(
        onNewMessage: (SmsMessage message) {
          print("sms reçu : ${message.body}");
          if (message.body!.contains("phone-auth-15bdb")) {
            String otpCode = message.body!.substring(0, 6);
            setState(() {
              _otpController.text = otpCode;
              Future.delayed(Duration(seconds: 1), () {
                handleSubmit(context);
              });
            });
          }
        },
        listenInBackground: false);
  }

  void handleSubmit(BuildContext context) {
    if (_formKey1.currentState!.validate()) {
      AuthService.loginWithOtp(otp: _otpController.text).then((value) {
        if (value == "Succès") {
          Navigator.pop(context);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoggedScreen()));
        } else {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              value,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ));
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3, // Take 3/5 of the available space
                child: CustomImageView(
                  imagePath: ImageConstant.TerNumbLogin,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Expanded(
                  flex: 2, // Take 2/5 of the available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenue 👋",
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      Text("Entrez votre numéro de téléphone pour continuer."),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixText: "+221 ",
                            labelText: "Entrez votre numéro de téléphone",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                          ),
                          validator: (value) {
                            if (value!.length != 9) return "Numéro de téléphone incorrect";
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              AuthService.sentOtp(
                                phone: _phoneController.text,
                                errorStep: () => ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Error in sending OTP",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                nextStep: () {
                                  listenToIncomingSMS(context);
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text("Vérification du code OTP"),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Entrez le code OTP à 6 chiffres"),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Form(
                                            key: _formKey1,
                                            child: TextFormField(
                                              keyboardType: TextInputType.number,
                                              controller: _otpController,
                                              decoration: InputDecoration(
                                                labelText: "Entrez le code OTP à",
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(32),
                                                ),
                                              ),
                                              validator: (value) {
                                                if (value!.length != 6) return "Code OPT incorrect";
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () => handleSubmit(context),
                                          child: Text("Envoyer"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }
                          },
                          child: Text("Envoyer code OTP"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0x6ED77610),
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}