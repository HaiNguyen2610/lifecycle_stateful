# 🔁 lifecycle_stateful

Demo dự án Flutter thể hiện vòng đời của StatefulWidget
mô tả:
- Thay đổi Theme (sử dụng InheritedWidget)
- Truyền props (`id`) từ cha xuống con
- Điều khiển hiển thị tên và mật khẩu
- Dọn dẹp controller khi thoát màn hình

---


| 🧩 Hàm vòng đời             | 🕒 Khi nào được gọi                                                             | 💡 Áp dụng trong project thực tế                                  |
|-----------------------------|--------------------------------------------------------------------------------|--------------------------------------------------------------------|
| `initState()`              | Khi widget được khởi tạo lần đầu                                               | Khởi tạo `TextEditingController` trong `LoginScreen`              |
| `didChangeDependencies()` | Sau `initState()` hoặc khi `InheritedWidget` (ví dụ Theme) thay đổi            | Lấy theme (`Theme.of(context)`) để áp dụng màu cho widget         |
| `build()`                  | Mỗi lần gọi `setState()` hoặc khi props thay đổi                               | Khi bấm nút đổi ID ở `HomeScreen` thì `build()` được gọi lại      |
| `didUpdateWidget()`       | Khi widget cha rebuild và truyền prop mới xuống                                | Khi bấm "Đổi ID" → prop `id` đổi → `didUpdateWidget()` hoạt động |
| `dispose()`               | Khi widget bị remove khỏi widget tree (bị huỷ), thường dùng để dọn tài nguyên | Khi bấm back từ `LoginScreen` về `HomeScreen`                     |
