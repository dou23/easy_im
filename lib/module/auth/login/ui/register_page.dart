import 'package:easy_im/config/storage_manager.dart';
import 'package:easy_im/module/auth/login/provider/register_provider.dart';
import 'package:easy_im/router/easy_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/constant_pool.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  late TextEditingController accountTextEditingController;
  late TextEditingController idTextEditingController;
  late TextEditingController pwdTextEditingController;

  var splashLogoImageUrl =
      'https://tse3-mm.cn.bing.net/th/id/OIP-C.X_glztWjAMcBwKpp72sKpgHaHa?w=183&h=184&c=7&r=0&o=5&pid=1.7';

  @override
  void initState() {
    accountTextEditingController = TextEditingController();
    idTextEditingController = TextEditingController();
    pwdTextEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    accountTextEditingController.dispose();
    idTextEditingController.dispose();
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
                            labelText: "昵称", icon: Icon(Icons.person)),
                        controller: accountTextEditingController,
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
                        controller: idTextEditingController,
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
                          EasyLoading.show(status: "注册中");
                          if (accountTextEditingController.value.text.isEmpty) {
                            EasyLoading.showToast("用户昵称不能为空");
                            EasyLoading.dismiss();
                            return;
                          }
                          if (idTextEditingController.value.text.isEmpty) {
                            EasyLoading.showToast("用户Id不能为空");
                            EasyLoading.dismiss();
                            return;
                          }
                          if (pwdTextEditingController.value.text.isEmpty) {
                            EasyLoading.showToast("密码不能为空");
                            EasyLoading.dismiss();
                            return;
                          }
                          var response = ref
                              .watch(userRegisterProvider(UserRegisterParams(
                                  accountTextEditingController.value.text,
                                  idTextEditingController.value.text,
                                  pwdTextEditingController.value.text)))
                              .value;
                          if (response?.success ?? false) {
                            storage.write(key: StringPool.User, value: response?.data?.toJson().toString());
                            context.pop(RouterPath.LOGIN);
                            context.go(RouterPath.MAIN);
                          }
                          EasyLoading.dismiss();
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
