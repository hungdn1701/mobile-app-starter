# Hướng dẫn Kiểm thử Ứng dụng Di động (Mobile Testing Guide)

> 📌 **Tài liệu đồ án môn học**: Phát triển ứng dụng cho thiết bị di động (INT1449)

---

## 1. Kim tự tháp Kiểm thử trong Di động (Mobile Test Pyramid)

```
        / \
       /   \        E2E Tests (Kiểm thử toàn diện trên thiết bị thật / Maestro)
      / UI  \       Widget / Component Tests (Kiểm thử giao diện & render)
     /------- \
    /   Unit   \    Unit Tests (Kiểm thử ViewModel, UseCase, Repository, Utils)
   /------------\
```

---

## 2. Kiểm thử Đơn vị (Unit Testing)

Tập trung kiểm thử logic nghiệp vụ không phụ thuộc vào thiết bị phần cứng:

### Các trường hợp cần viết Unit Test:
1. **Model Validation**: Kiểm tra tính hợp lệ của email, số điện thoại, độ dài mật khẩu.
2. **ViewModel / State Reducer**: Khi nhận sự kiện X, ViewModel có phát ra State Y tương ứng hay không.
3. **Repository Mocking**: Giả lập API trả về thành công hoặc lỗi để kiểm tra cách xử lý ngoại lệ.

```kotlin
// Ví dụ Kotlin / MockK cho ViewModel Test
@Test
fun `khi fetchUser thanh cong thi UIState phai chuyen sang Success`() = runTest {
    coEvery { userRepository.getUser(1) } returns User(1, "Hung Dang")
    viewModel.loadUser(1)
    assertEquals(UIState.Success, viewModel.state.value)
}
```

---

## 3. Kiểm thử Giao diện & Đa kích thước màn hình (UI & Responsive Testing)

1. **Kiểm thử trên nhiều tỷ lệ màn hình**:
   - Màn hình nhỏ (ví dụ iPhone SE / máy Android 4.7 inch).
   - Màn hình tiêu chuẩn (iPhone 15 / Galaxy S24).
   - Màn hình lớn (Tablet, màn hình gập).
2. **Kiểm thử xoay màn hình (Orientation Change)**:
   - Dữ liệu người dùng đang nhập không được bị mất khi xoay từ dọc sang ngang.
3. **Kiểm thử Dark Mode**:
   - Toàn bộ văn bản phải đọc được rõ ràng khi chuyển sang chế độ nền tối, không bị chìm màu.
