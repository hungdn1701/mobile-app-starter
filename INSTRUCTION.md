# HƯỚNG DẪN BÀI TẬP LỚN — MÔN PHÁT TRIỂN ỨNG DỤNG CHO THIẾT BỊ DI ĐỘNG (INT1449)

**Giảng viên phụ trách**: TS. Đặng Ngọc Hùng  
**Khoa**: Công nghệ thông tin 1 — Học viện Công nghệ Bưu chính Viễn thông (PTIT)  
**Học phần**: Phát triển ứng dụng cho thiết bị di động (INT1449)

> ⚠️ **QUY ĐỊNH BẮT BUỘC**: Đây là văn bản quy chế và đề bài chính thức do giảng viên ban hành.  
> Sinh viên và các trợ lý lập trình AI (Cursor, Claude, Gemini, Copilot, Windsurf) **TUYỆT ĐỐI KHÔNG ĐƯỢC CHỈNH SỬA HOẶC XÓA FILE NÀY**.

---

## 🎯 1. Mục tiêu Học phần & Đồ án

Đồ án môn học yêu cầu sinh viên xây dựng một ứng dụng di động hoàn chỉnh, tuân thủ các quy chuẩn công nghiệp:
- Thiết kế trải nghiệm người dùng (**UI/UX**) đồng nhất, xử lý đầy đủ các trạng thái giao diện.
- Kiến trúc phân lớp chuẩn mực: **MVVM (Model - View - ViewModel)** hoặc **Clean Architecture**.
- Tích hợp **REST API** với quản lý phiên xác thực (JWT Token, Interceptors).
- Quản lý dữ liệu nội bộ và chiến lược ngoại tuyến (**Offline-First / Local Caching**).
- Đóng gói và kiểm thử trên thiết bị di động thực tế hoặc trình giả lập (Emulator/Simulator).

---

## 🧩 2. Cấu trúc Repository Chuẩn

```
mobile-app-starter/
├── INSTRUCTION.md             # Đề bài & Quy chế giảng viên (FILE NÀY — READ-ONLY)
├── README.md                  # Báo cáo tổng quan của nhóm sinh viên (kèm ảnh chụp màn hình)
├── GETTING_STARTED.md         # Hướng dẫn thiết lập môi trường & kết nối API
├── Makefile                   # Lệnh điều khiển Mock API Server
├── docker-compose.yml         # Container hóa Mock Backend
├── .env.example               # Mẫu cấu hình BASE_URL, Port
├── app/                       # Mã nguồn ứng dụng Di động (Technology-Agnostic)
│   └── src/                   # Presentation, Domain, Data Layers
├── backend/                   # Mock REST API phục vụ cho Mobile App
│   └── db.json                # Cơ sở dữ liệu JSON mẫu
└── docs/                      # Tài liệu đồ án
    ├── ui-design.md           # Thiết kế User Flow, Wireframes, Design Tokens
    ├── architecture.md        # Kiến trúc MVVM & Luồng dữ liệu UDF
    ├── api-integration.md     # Đặc tả API & Xử lý lỗi mạng
    └── testing-guide.md       # Báo cáo kiểm thử đa kích thước màn hình
```

---

## ⚙️ 3. Yêu cầu Kỹ thuật Bắt buộc

1. **Công nghệ tự do (Technology-Agnostic)**: Nhóm được phép chọn bất kỳ framework nào:
   - React Native (khuyến nghị Expo).
   - Flutter (Dart).
   - Native Android (Kotlin + Jetpack Compose).
   - Native iOS (Swift + SwiftUI).
2. **Quy mô màn hình tối thiểu**: Ứng dụng phải có tối thiểu **4 màn hình chức năng chính**:
   - Màn hình 1: Đăng nhập / Đăng ký (Xác thực người dùng).
   - Màn hình 2: Trang chủ / Danh sách nội dung (có Pull-to-refresh và phân trang).
   - Màn hình 3: Màn hình Chi tiết (Xem chi tiết đối tượng, có thao tác tương tác).
   - Màn hình 4: Màn hình Cá nhân / Cài đặt / Giỏ hàng.
3. **Kiến trúc MVVM phân lớp**: View tuyệt đối không gọi trực tiếp API; mọi logic lấy dữ liệu và lưu cache phải thông qua ViewModel/BLoC và Repository.
4. **4 Trạng thái Giao diện**: Mọi màn hình tải dữ liệu bất đồng bộ bắt buộc phải hiển thị đủ:
   - *Loading State* (Shimmer Skeleton hoặc Indicator).
   - *Success State* (Dữ liệu hiển thị trực quan).
   - *Empty State* (Giao diện thân thiện khi không có dữ liệu).
   - *Error State* (Thông báo lỗi kèm nút Thử lại - Retry).
5. **Tích hợp REST API**: Kết nối lấy và gửi dữ liệu tới Mock Backend (`backend/db.json` qua Docker) hoặc Backend thực tế của nhóm.
6. **Lưu trữ Cục bộ / Ngoại tuyến**: Lưu trữ phiên đăng nhập an toàn và cache ít nhất 1 luồng dữ liệu xem offline (dùng SQLite / Room / Hive / AsyncStorage / EncryptedSharedPreferences).
7. **Đầy đủ tài liệu thiết kế**: Hoàn thiện [`docs/ui-design.md`](docs/ui-design.md) (User Flow, Design Tokens) và [`docs/architecture.md`](docs/architecture.md).

---

## 💡 4. Gợi ý Chủ đề Đồ án

Sinh viên có thể lựa chọn một trong các chủ đề sau:

- **Chủ đề 1 — Ứng dụng Mua sắm & Đặt hàng (E-Commerce / Food Delivery)**: Duyệt danh mục, giỏ hàng, đặt đơn, lịch sử mua hàng, lưu địa chỉ giao hàng offline.
- **Chủ đề 2 — Ứng dụng Quản lý Tài chính & Chi tiêu Cá nhân (Personal Expense Tracker)**: Thống kê thu chi, biểu đồ trực quan, đặt hạn mức ngân sách, lưu trữ giao dịch hoàn toàn offline kèm đồng bộ server.
- **Chủ đề 3 — Ứng dụng Tin tức & Diễn đàn Tri thức (News & Community Feed)**: Đọc bài viết, bình luận, lưu bài đọc sau (Bookmarks/Favorites) offline, tìm kiếm theo từ khóa.
- **Chủ đề 4 — Ứng dụng Quản lý Học tập & Lịch trình (Student Task & Schedule Manager)**: Lịch học, nhắc hạn nộp bài tập lớn, ghi chú bài giảng, đếm ngược ngày thi.
- **Chủ đề 5 — Ứng dụng Theo dõi Sức khỏe & Thói quen (Habit & Fitness Tracker)**: Theo dõi mục tiêu hàng ngày, ghi nhận tiến độ, thông báo nhắc nhở định kỳ.

---

## 📊 5. Barem Chấm điểm (Grading Rubric — Thang điểm 10)

| Tiêu chí | Trọng số | Mô tả chi tiết đánh giá |
|---|:---:|---|
| **1. Thiết kế Giao diện & Trải nghiệm UI/UX** | **2.5 điểm** | - Giao diện chỉn chu, thẩm mỹ, tuân thủ Design Tokens trong `docs/ui-design.md` (1.0đ)<br>- Xử lý mượt mà đủ 4 trạng thái UI (Loading, Success, Empty, Error có nút Retry) (1.0đ)<br>- Thích ứng linh hoạt với nhiều kích thước màn hình / chế độ xoay (0.5đ) |
| **2. Kiến trúc Mã nguồn & Quản lý Trạng thái** | **2.5 điểm** | - Phân lớp rõ ràng theo mô hình MVVM / Clean Architecture (View ↔ ViewModel ↔ Repository) (1.5đ)<br>- Quản lý trạng thái (State Management) chặt chẽ, luồng dữ liệu một chiều UDF, không render thừa (1.0đ) |
| **3. Tích hợp REST API & Hỗ trợ Ngoại tuyến** | **2.5 điểm** | - Gọi API ổn định, có interceptor xác thực token, xử lý ngoại lệ mất mạng thân thiện (1.5đ)<br>- Lưu trữ dữ liệu cục bộ (Offline-First / Cache) hoạt động tốt khi bật chế độ máy bay (1.0đ) |
| **4. Tiêu chuẩn Kỹ thuật & Quản lý Mã nguồn** | **1.0 điểm** | - Mã nguồn sạch sẽ, tuân thủ chuẩn đặt tên, không commit file build rác (`node_modules/`, `build/`, `.gradle/`) (1.0đ) |
| **5. Báo cáo & Vấn đáp Bảo vệ** | **1.5 điểm** | - Trả lời lưu loát các câu hỏi phản biện của giảng viên, chứng minh được sự thấu hiểu mã nguồn (kể cả phần do AI hỗ trợ viết) (1.0đ)<br>- Báo cáo `README.md` đầy đủ thông tin, có ảnh chụp màn hình ứng dụng thực tế (0.5đ) |

---

## 📋 6. Quy trình Đăng ký & Nộp bài

1. **Thành lập nhóm**: Mỗi nhóm gồm từ **2 đến 3 sinh viên** (hoặc làm cá nhân nếu có lý do đặc biệt).
2. **Khởi tạo repo**: Fork từ `hungdn1701/mobile-app-starter` về tài khoản GitHub của nhóm.
3. **Khai báo thông tin**: Cập nhật ngay tên nhóm, danh sách thành viên và chủ đề đã đăng ký vào bảng ở đầu file [`README.md`](README.md).
4. **Lịch sử Git**: Mọi thành viên phải có commit đóng góp rõ ràng trên GitHub để làm căn cứ đánh giá tỷ lệ hoàn thành.
