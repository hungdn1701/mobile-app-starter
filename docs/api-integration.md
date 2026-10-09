# 🔌 API Integration

## 📌 Tổng quan
Tài liệu hướng dẫn cách ứng dụng di động kết nối và giao tiếp với Backend Mock API (hoặc API thật).

## 🛠️ HTTP Client
Khuyến khích sử dụng các thư viện HTTP Client tiêu chuẩn tuỳ framework:
- **React Native:** `axios` hoặc `fetch`
- **Flutter:** `http` hoặc `dio`
- **Kotlin:** `Retrofit`
- **Swift:** `Alamofire` hoặc `URLSession`

**Cấu hình Base URL:** Nên đọc từ biến môi trường (Environment Variables) để dễ dàng chuyển đổi giữa Development và Production.

## 🔐 Authentication
(Mô tả cách xử lý xác thực. Ví dụ: Lưu trữ JWT Token trong Secure Storage và gắn vào header `Authorization: Bearer <token>` trong mọi request).

## ⚠️ Error Handling
Xử lý lỗi một cách thống nhất tại lớp Network:
- **401 Unauthorized:** Xoá token hiện tại và điều hướng về màn hình Đăng nhập.
- **404 Not Found:** Hiển thị thông báo dữ liệu không tồn tại.
- **500 Internal Server Error:** Hiển thị thông báo lỗi hệ thống chung.
- **Timeout / No Internet:** Hiển thị màn hình Offline hoặc thông báo kiểm tra lại kết nối.

## 📡 Các Endpoints mẫu (từ Backend Mock)

- **Lấy danh sách Users:** `GET /users`
- **Lấy thông tin User (id=1):** `GET /users/1`
- **Lấy danh sách Posts:** `GET /posts`
- **Tạo Post mới:** `POST /posts` (body: `{ "title": "...", "content": "..." }`)

Tham khảo thêm cách cấu hình mock API tại thư mục `/backend`.
