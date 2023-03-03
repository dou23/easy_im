# easy_im

一个自研IM项目

## Getting Started
****  0.项目后端地址 https://github.com/iotames/easyim
****  1.下载源码 git clone https://github.com/dou23/easy_im
****  2.git submodule update --init --recursive
****  3.flutter pub get
****  4.project flutter pub run build_runner build

protobuf生成命令
生成protobuf前先看static/external/easyim/
flutter pub global activate protoc_plugin
protoc --proto_path=static/external/easyim/protobuf/ --dart_out=lib/chatlib/pb/ static/external/easyim/protobuf/msg.proto