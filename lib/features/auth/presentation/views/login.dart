import 'package:flutter/material.dart';
import 'package:temp/features/auth/presentation/views/background.dart';
import 'package:temp/core/constants/widgets/text_generic.dart';
import 'package:temp/features/auth/presentation/views/widgets/segmented_control.dart';
import 'widgets/form_box.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Background(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: width * 0.95,
                  height: height * 0.1,
                  child:Padding(
                    padding: EdgeInsetsGeometry.only(top: 40.5), 
                    child: Image.asset('assets/logo.png',))
                ),
                SizedBox(
                  width: width * 0.95,
                  height: height * 0.1,
                  child: TextGeneric(
                    text: "¡Bienvenido!",
                    color: Colors.black,
                    fontSize: 45.0,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: width * 0.95,
                  height: height * 0.06,
                  child: TextGeneric(
                    text: "Inicia sesión o registrate para empezar a ahorrar en tus viajes",
                    color: Colors.black,
                    fontSize: 15.0,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Expanded(
                  child: FormBox(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.08, 
                        vertical: height * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        _isLoginSelected = true;
                                      });
                                    },
                                    child: SegmentedControl(isLoginSelected: !_isLoginSelected, text: "Iniciar Sesión")
                                  ),
                                ),
                                Expanded(child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _isLoginSelected = false;
                                    });
                                  },
                                  child: SegmentedControl(
                                    isLoginSelected: _isLoginSelected,
                                    text: "Registrarse"
                                  ),
                                )
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}