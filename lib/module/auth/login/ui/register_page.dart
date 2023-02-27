import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController? usernameTextEditingController;
  TextEditingController? accountTextEditingController;
  TextEditingController? pwdTextEditingController;

  var splashLogoImageUrl =
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';

  @override
  void initState() {
    super.initState();
    usernameTextEditingController = TextEditingController();
    accountTextEditingController = TextEditingController();
    pwdTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameTextEditingController?.dispose();
    usernameTextEditingController = null;
    accountTextEditingController?.dispose();
    accountTextEditingController = null;
    pwdTextEditingController?.dispose();
    pwdTextEditingController = null;
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
                            labelText: "昵称", icon: Icon(Icons.person)),
                        controller: usernameTextEditingController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "账号",
                          icon: Icon(Icons.account_box),
                        ),
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
                          EasyLoading.showToast("注册");
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                        child: const Center(
                          child: Text(
                            "注册",
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
