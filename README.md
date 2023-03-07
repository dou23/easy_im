# 项目简介
一个自研IM项目  
技术栈简介:  
状态管理：RiverPod(https://github.com/rrousselGit/riverpod)  
路由：go_router(https://github.com/flutter/packages/tree/main/packages/go_router)  

## 编译运行
****  0.项目后端地址 https://github.com/iotames/easyim  
****  1.下载源码 git clone https://github.com/dou23/easy_im  
****  2.flutter pub get  
****  3.项目根目录下创建.env文件，然后设置 `EASY_IM_HOST=http://127.0.0.1:8888`  
****  4.flutter pub run build_runner build  

protobuf生成命令  
生成protobuf前先看static/external/easyim/protobuf_sh  
flutter pub global activate protoc_plugin  
protoc --proto_path=static/external/easyim/protobuf/ --dart_out=lib/chatlib/pb/ static/external/easyim/protobuf/msg.proto  