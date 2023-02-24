import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? accountTextEditingController;
  TextEditingController? pwdTextEditingController;

  var splashLogoImageUrl =
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';

  @override
  void initState() {
    super.initState();
    accountTextEditingController = TextEditingController();
    pwdTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
          context: context,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.cloud),
                        Padding(padding: EdgeInsets.all(6)),
                        Text('Easy IM'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextField(
                        decoration: const InputDecoration(
                            labelText: "用户名", icon: Icon(Icons.account_circle)),
                        controller: accountTextEditingController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "密码",
                          icon: Icon(Icons.password),
                        ),
                        controller: pwdTextEditingController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 54, 24, 24),
                      child: OutlinedButton(
                        onPressed: () async {
                          EasyLoading.showToast("登录");
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                        child: const Center(
                          child: Text(
                            "登录",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
