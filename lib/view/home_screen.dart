import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifecycle_stf/view/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,required this.toggleTheme, required this.changeId, required this.id});
  final VoidCallback toggleTheme;
  final VoidCallback changeId;
  final int id;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Color _primaryColor;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _primaryColor = Theme.of(context).colorScheme.primary;
    print("didChangeDependencies: primaryColor = $_primaryColor");
  }
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didupdatewidget:đổi từ ${oldWidget.id} thành ${widget.id}");
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate: chuyen sang login');
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test app'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child:    Column(
          children: [
            ElevatedButton(
              onPressed: widget.toggleTheme,
              child: const Text("Đổi Theme"),
            ),
            Text(widget.id.toString()),
        ElevatedButton(
        onPressed: widget.changeId,
        child: const Text("Đổi ID"),
      ),
            ElevatedButton(
              onPressed:()=>  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              ),
              child: const Text("sang Login"),
            ),
          ],
        ),
      ),
    );
  }
}
