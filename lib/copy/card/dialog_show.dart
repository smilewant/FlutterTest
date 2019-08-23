import 'package:flutter/material.dart';

class DialogShow extends StatefulWidget {
  @override
  _DialogShowState createState() => _DialogShowState();
}

class _DialogShowState extends State<DialogShow> {
  @override
  Widget build(BuildContext context) {
    var title = Container(
      alignment: AlignmentDirectional.center,
      child: Text(
        "Dialog Unit",
        style: TextStyle(fontSize: 30),
      ),
    );

    Map<String, Function> buttons = {
      "对话框SimpleDialog": _showSimpleDialog,
      "对话框AlertDialog": _showAlertDialog,
//      "对话框CupertinoAlertDialog": _showCupertinoAlertDialog,
//      "对话框显示自己": _showWidgetDialog,
//      "对话框显示StatefulWidget": _showStatefulWidgetDialog,
//      "Scaffold": _showScaffold,
//      "BottomSheet": _showBottomSheet,
//      "DatePicker": _showDatePicker,
//      "TimePicker": _showTimePicker,
//      "CupertinoPicker": _showCupertinoPicker,
//      "CupertinoDatePicker": _showCupertinoDatePicker,
//      "CupertinoTimerPicker": _showCupertinoTimerPicker,
    };

    var btns=  buttons.keys.toList().map((str){//构建按钮组件列表
      return RaisedButton(
        onPressed: () {
          buttons[str](context);
        },
        child: Text(str),
      );
    }).toList();

    var result =Column(children: <Widget>[title,Column(
      children: btns,
    )],) ;
    return result;
  }

  _showSimpleDialog(BuildContext context) {
    var strs=['云深不知处内亥时息,卯时起',
    "云深不知处内不可挑食留剩,不可境内杀生",
    "云深不知处内不可私自斗殴,不可淫乱",
    "云深不知处禁止魏无羡入内,不可吹笛"];

    var title = Row(//标题
      children: <Widget>[
        Image.asset("images/icon_lwj.png", width: 30,height: 30,),
        SizedBox(width: 10,),
        new Text("蓝氏家规")],
    );
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: title,
            children: strs.map((str){
              return SimpleDialogOption(
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                  Icon(Icons.turned_in_not,color: Colors.blue,),Expanded(child: Text(str))],) ,
                onPressed: () {
//                  Navigator.of(context).pop(str);
                  print(str);
                },
              );
            }).toList(),
          );
        });
  }


  _showAlertDialog(BuildContext context) {
    var title = Row(//标题
      children: <Widget>[
        Image.asset("images/icon_wwx.png", width: 30,height: 30,),
        SizedBox(width: 10,),
        new Text("表白")],
    );
    var content = Row(//内容
      children: <Widget>[
        Text("我💖你，你是我的"),
        Image.asset("images/icon_ylm.png",width: 30, height: 30, )],
    );

    showDialog(
        context: context,
        builder: (context) => //构造器
        AlertDialog(title: title, content: content, actions: <Widget>[
          FlatButton(
            child: Text("不要闹"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text("走开"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ]));
  }


}