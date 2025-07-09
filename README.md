# lifecycle_stateful
Demo lifecycle StatefulWidget

    | Hàm | Khi nào được gọi| áp dụng trong project|
initState() | Khi widget được khởi tạo lần đầu | khởi tạo controller trong login_screen
didChangeDependencies() | Sau `initState()`, hoặc khi `InheritedWidget` thay đổi | thay đổi theme(InheritedWidget) của app
build()|Mỗi lần `setState()` hoặc thay props | vd: khi thay đổi id (prop) ở trong home_screen khi bấm thay đổi id|
didUpdateWidget() | Khi widget cha rebuild và props thay đổi | Khi bấm nút đổi id ở HomeScreen (prop thay đổi) thì didUpdateWidget được hoạt động
dispose()| dừng state, dọn dẹp tài nguyên(controller,..) | sử dụng Navigator.pop(context) để back từ  LoginScreen về HomeScreen thì dispose được sử dụng để giải phóng các controler và dừng state của LoginScreen