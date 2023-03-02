import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_im/module/auth/login/provider/login_provider.dart';
import 'package:easy_im/router/easy_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/constant_pool.dart';
import '../../../../config/storage_manager.dart';
import '../provider/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController accountTextEditingController;
  late TextEditingController pwdTextEditingController;

  var splashLogoImageUrl =
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';

  @override
  void initState() {
    super.initState();
    accountTextEditingController = TextEditingController();
    pwdTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    accountTextEditingController.dispose();
    pwdTextEditingController.dispose();
    super.dispose();
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
                            labelText: "账号", icon: Icon(Icons.account_circle)),
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
                          EasyLoading.showInfo("登录中...");
                          if (accountTextEditingController.value.text.isEmpty) {
                            EasyLoading.showToast("用户账号不能为空");
                            EasyLoading.dismiss();
                            return;
                          }
                          if (pwdTextEditingController.value.text.isEmpty) {
                            EasyLoading.showToast("密码不能为空");
                            EasyLoading.dismiss();
                            return;
                          }
                          var response = await ref
                              .watch(authProvider.notifier)
                              .state
                              .userLogin(
                                  accountTextEditingController.value.text,
                                  pwdTextEditingController.value.text);
                          if (response.success ?? false) {
                            storage.write(
                                key: StringPool.User,
                                value: response.data?.toJson().toString());
                            context.go(RouterPath.MAIN);
                          }
                          if (response.msg?.isEmpty ?? false) {
                            EasyLoading.showToast(response.msg ?? "");
                          }
                          EasyLoading.dismiss();
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () async {
                            context.push(RouterPath.REGISTER);
                          },
                          child: const Text(
                            "没有账号？去注册",
                            style: TextStyle(fontSize: 16, color: Colors.blue),
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
