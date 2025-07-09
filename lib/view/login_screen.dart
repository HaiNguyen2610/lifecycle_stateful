import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _nameController;
  late TextEditingController _passController;
   String name='';
   String pass='';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController= TextEditingController();
    _passController =TextEditingController();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate:');
    super.deactivate();
  }
  void showText() {
    setState(() {
      name = _nameController.text;
      pass = _passController.text;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passController.dispose();
    print('Controller duoc giai phong');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'name'
              ),
            ),
            SizedBox(height: 30,),
            TextField(
              controller: _passController,
              decoration: InputDecoration(
                  labelText: 'pass'
              ),
            ),
            Text(name),
            Text(pass),
            ElevatedButton(
              onPressed: showText,
              child: const Text('Hiển thị thông tin'),
            ),
            ElevatedButton(
              onPressed:()=> Navigator.pop(context),
              child: const Text('trowr veef home'),
            ),
          ],
        ),
      ),
    );
  }
}
