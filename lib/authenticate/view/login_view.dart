import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfm_control/3.admin/Students/view/widgets/custom_textfield.dart';
import 'package:tfm_control/authenticate/manager/login_cubit.dart';
import 'package:tfm_control/utils/styles/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedRole = '';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final LoginCubit cubit = LoginCubit.get(context);
          return Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/Blue and Yellow University Etiquette Professional Presentation (2).png"),
                )),
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white.withOpacity(0.9)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/logo2.png",
                          height: 120,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(labeltext: "Email"),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(labeltext: "Password"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  fillColor: const MaterialStatePropertyAll(ColorsAsset.kMedium),
                                  value: 'admin',
                                  groupValue: selectedRole,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedRole = value.toString();
                                    });
                                  },
                                ),
                                const Text('Admin'),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: const MaterialStatePropertyAll(ColorsAsset.kMedium),
                                  value: 'doctor',
                                  groupValue: selectedRole,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedRole = value.toString();
                                    });
                                  },
                                ),
                                const Text('Doctor'),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: const MaterialStatePropertyAll(ColorsAsset.kMedium),
                                  value: 'student',
                                  groupValue: selectedRole,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedRole = value.toString();
                                    });
                                  },
                                ),
                                const Text('Student'),
                              ],
                            ),
                            const Spacer(),
                            const Text("Forgot Password?"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            cubit.login();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsAsset.kPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Border radius
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
