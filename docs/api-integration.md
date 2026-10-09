# Hướng dẫn Tích hợp REST API (API Integration Guide)

> 📌 **Tài liệu đồ án môn học**: Phát triển ứng dụng cho thiết bị di động (INT1449)

---

## 1. Thiết lập HTTP Client & Interceptors

Không nên gọi `fetch()` hoặc `http.get()` rải rác trong từng màn hình. Dự án cần thiết lập một Client tập trung:

### 1.1. Cấu hình Base URL & Timeout
Đọc `BASE_URL` từ file cấu hình/biến môi trường:
```javascript
// Ví dụ React Native với Axios
import axios from 'axios';
import { API_BASE_URL } from './config';

export const apiClient = axios.create({
  baseURL: API_BASE_URL,
  timeout: 10000, // 10 giây timeout
  headers: {
    'Content-Type': 'application/json',
  },
});
```

### 1.2. Request & Response Interceptors
- **Request Interceptor**: Tự động đính kèm Token xác thực (`Authorization: Bearer <token>`) vào Header của mọi request.
- **Response Interceptor**: Bắt tập trung lỗi HTTP 401 (Hết hạn phiên) để điều hướng người dùng về màn hình Đăng nhập.

---

## 2. Danh mục Endpoints từ Mock Backend (`backend/db.json`)

Dịch vụ Mock API cung cấp sẵn các tài nguyên sau:

| Phương thức | Đường dẫn Endpoint | Mục đích nghiệp vụ | Tham số / Body |
|:---:|---|---|---|
| `GET` | `/users` | Lấy danh sách tài khoản | `?email=...` (lọc) |
| `GET` | `/users/:id` | Xem chi tiết 1 người dùng | - |
| `GET` | `/products` | Lấy danh mục sản phẩm | `?_page=1&_limit=10&_sort=price` |
| `GET` | `/products/:id` | Xem chi tiết sản phẩm | - |
| `POST` | `/orders` | Tạo đơn hàng mới | `{"userId": 1, "items": [...], "total": 250}` |
| `GET` | `/posts` | Lấy danh sách bài viết / feed | `?_embed=comments` |
| `POST` | `/posts` | Đăng bài viết mới | `{"title": "...", "content": "..."}` |
| `DELETE`| `/posts/:id` | Xóa bài viết | - |

---

## 3. Quản lý Trạng thái Mạng & Ngoại lệ

### 3.1. Phân loại lỗi mạng
- **Không có kết nối Internet**: Thiết bị đang ở chế độ máy bay hoặc mất sóng.
- **Timeout Exception**: Máy chủ không phản hồi sau thời gian quy định (thường 10s).
- **Lỗi nghiệp vụ HTTP (4xx / 5xx)**:
  - `400 Bad Request`: Dữ liệu gửi lên sai định dạng.
  - `401 Unauthorized`: Sai mật khẩu hoặc token hết hạn.
  - `404 Not Found`: Không tìm thấy bản ghi.
  - `500 Internal Server Error`: Lỗi máy chủ.

### 3.2. Hiển thị thông báo thân thiện (User-Friendly Messages)
Không bao giờ hiển thị nguyên văn chuỗi lỗi kỹ thuật như `SocketTimeoutException: failed to connect to /10.0.2.2` lên màn hình người dùng. Hãy ánh xạ sang thông báo thân thiện:
> *"Không thể kết nối đến máy chủ. Vui lòng kiểm tra đường truyền và thử lại."*
