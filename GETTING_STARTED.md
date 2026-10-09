# Hướng dẫn Bắt đầu (Mobile Starter Guide)

> 📌 **Lưu ý**: File này hướng dẫn cách thiết lập môi trường, chọn mobile framework và kết nối với Mock API. Khi hoàn thành đồ án, báo cáo chính thức của nhóm nằm tại [`README.md`](README.md).

---

## 1. Yêu cầu Tiên quyết (Prerequisites)

- [Git](https://git-scm.com/downloads)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (dùng để chạy Mock API Server cho app)
- Môi trường phát triển Di động theo lựa chọn của bạn:
  - **React Native (Expo)**: [Node.js LTS](https://nodejs.org/), ứng dụng Expo Go trên điện thoại hoặc Android/iOS emulator.
  - **Flutter**: [Flutter SDK](https://docs.flutter.dev/get-started/install), Android Studio / Xcode.
  - **Native Android**: [Android Studio](https://developer.android.com/studio) với JDK 17+ và Android SDK.

---

## 2. Quy trình Khởi động Nhanh (Quick Start)

### Bước 1: Fork Repository
1. Truy cập repo gốc: [https://github.com/hungdn1701/mobile-app-starter](https://github.com/hungdn1701/mobile-app-starter)
2. Bấm nút **Fork** về tài khoản cá nhân/nhóm của bạn.

### Bước 2: Clone về máy
```bash
git clone https://github.com/<YOUR-USERNAME>/mobile-app-starter.git
cd mobile-app-starter
```

### Bước 3: Khởi tạo biến môi trường & Mock Backend
```bash
make init
# Hoặc copy thủ công: cp .env.example .env

# Chạy Mock Backend
make api-up
```
Kiểm tra Mock API trên trình duyệt: [http://localhost:3000](http://localhost:3000) (bạn sẽ thấy các endpoint `/users`, `/products`, `/posts`, `/orders` đã sẵn sàng).

---

## 3. Khởi tạo Ứng dụng Di động trong thư mục `app/`

Template này là **Technology-Agnostic** (không áp đặt framework). Sinh viên chọn 1 trong các framework sau và khởi tạo trực tiếp vào thư mục `app/`:

### ⚛️ Lựa chọn 1: React Native (Expo) — Đề xuất cho đa nền tảng nhanh
```bash
cd app
npx create-expo-app@latest . --template blank-typescript
npx expo start
```
*Gợi ý thư viện đi kèm*: `@react-navigation/native`, `axios`, `zustand` hoặc `@tanstack/react-query`, `async-storage`.

---

### 🐦 Lựa chọn 2: Flutter (Dart) — Giao diện mượt mà & linh hoạt
```bash
cd app
flutter create . --org com.ptit.student
flutter run
```
*Gợi ý thư viện đi kèm*: `dio`, `flutter_bloc` hoặc `provider`, `shared_preferences`, `sqflite`.

---

### 🤖 Lựa chọn 3: Native Android (Kotlin + Jetpack Compose)
1. Mở **Android Studio**.
2. Chọn **New Project** -> **Empty Activity (Compose)**.
3. Đặt Save location chính là thư mục: `<đường-dẫn-repo>/app`.
*Gợi ý thư viện đi kèm*: `Retrofit2`, `Kotlin Coroutines & Flow`, `Room Database`, `Hilt`.

---

## 4. Cấu hình Kết nối Mạng từ Thiết bị tới Mock Backend

> ⚠️ **Quy tắc quan trọng**: Khi ứng dụng di động chạy trong Emulator hoặc Thiết bị thật, `localhost` đại diện cho chính chiếc điện thoại đó, KHÔNG PHẢI máy tính chạy backend của bạn!

Hãy cấu hình `BASE_URL` trong file cấu hình app dựa trên môi trường chạy:

| Môi trường chạy App | Địa chỉ kết nối tới Mock Backend | Ghi chú |
|---|---|---|
| **Android Emulator** (Android Studio) | `http://10.0.2.2:3000` | `10.0.2.2` là alias đặc biệt trỏ về máy host |
| **iOS Simulator** (Mac) | `http://localhost:3000` | iOS Simulator chia sẻ network namespace với Mac |
| **Điện thoại thật** (cùng mạng Wi-Fi) | `http://<IP-LAN-MÁY-TÍNH>:3000` | Ví dụ `http://192.168.1.15:3000` |
| **Máy thật qua cáp USB** (Android) | Chạy: `adb reverse tcp:3000 tcp:3000` | Sau đó có thể dùng `http://localhost:3000` |

---

## 5. Dịch vụ Mock Backend (`backend/`)

Mock backend sử dụng `json-server` gọn nhẹ, cho phép thực hiện đầy đủ các phương thức HTTP:
- `GET /products` — Lấy danh sách sản phẩm
- `GET /products?_page=1&_limit=10` — Phân trang tự động
- `GET /products?q=keyword` — Tìm kiếm toàn văn
- `POST /orders` — Thêm đơn hàng mới (tự sinh ID)
- `PUT /users/1` / `PATCH /users/1` — Cập nhật thông tin
- `DELETE /posts/1` — Xóa bài viết

Bạn có thể chỉnh sửa hoặc thêm dữ liệu mẫu trực tiếp trong file [`backend/db.json`](backend/db.json).

---

## 6. Các Lệnh Tiện ích (Makefile)

| Lệnh | Ý nghĩa |
|---|---|
| `make init` | Khởi tạo file `.env` |
| `make api-up` | Khởi động Mock API server dưới nền |
| `make api-down` | Dừng Mock API server |
| `make api-logs` | Xem log truy vấn từ mobile app gửi tới Mock API |
| `make api-reset`| Khôi phục dữ liệu ban đầu cho `db.json` |

---

## 7. Danh mục Kiểm tra Nộp bài (Submission Checklist)

- [ ] Cập nhật họ tên, MSSV, vai trò thành viên trong [`README.md`](README.md).
- [ ] Chèn ảnh chụp màn hình ứng dụng vào mục Screenshots trong `README.md`.
- [ ] Hoàn thành tài liệu thiết kế giao diện [`docs/ui-design.md`](docs/ui-design.md) (User Flow, Design Tokens).
- [ ] Hoàn thành tài liệu kiến trúc [`docs/architecture.md`](docs/architecture.md) (MVVM & Clean Architecture).
- [ ] Ứng dụng xử lý đầy đủ các trạng thái mạng (Loading spinner, Error banner, Empty data).
- [ ] Không hardcode URL API cố định trong mã nguồn (đọc từ file cấu hình / env).
- [ ] Mã nguồn sạch, không commit các file build tạm thời (`node_modules/`, `build/`, `.gradle/`, `.dart_tool/`).
