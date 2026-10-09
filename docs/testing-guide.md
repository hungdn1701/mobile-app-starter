# 🧪 Testing Guide

## 📌 Các cấp độ kiểm thử
Để đảm bảo chất lượng ứng dụng, cần thực hiện kiểm thử ở nhiều cấp độ khác nhau.

### 1. Unit Tests
Kiểm thử các hàm logic đơn lẻ, các lớp ViewModel, Repository. Không bao gồm giao diện.
- **Mục tiêu:** Đảm bảo logic xử lý dữ liệu chính xác, tính toán đúng.
- **Công cụ đề xuất:** JUnit (Kotlin), XCTest (Swift), Jest (React Native), `flutter test` (Flutter).

### 2. Widget/UI Tests
Kiểm thử các thành phần giao diện đơn lẻ.
- **Mục tiêu:** Đảm bảo UI hiển thị đúng, các nút bấm hoạt động và phản hồi chính xác.
- **Công cụ đề xuất:** Espresso (Android), XCUITest (iOS), React Native Testing Library, Flutter Widget Tests.

### 3. Integration Tests / E2E Tests
Kiểm thử toàn bộ luồng ứng dụng, từ UI gọi đến API (hoặc Mock API) và phản hồi.
- **Mục tiêu:** Đảm bảo các thành phần kết nối với nhau một cách trơn tru.
- **Công cụ đề xuất:** Appium, Detox (React Native), Flutter Integration Tests.

## 🎭 Mock Data Strategies
- Không nên gọi API thực tế trong Unit Tests. Hãy sử dụng thư viện Mock (ví dụ: Mockito) để giả lập phản hồi của API.
- Đối với E2E Test, sử dụng Mock Backend đính kèm dự án (`make api-up`) để cung cấp môi trường data nhất quán.
