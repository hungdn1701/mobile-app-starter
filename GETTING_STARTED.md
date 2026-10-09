# 🚀 Getting Started / Hướng dẫn khởi chạy

Hướng dẫn này giúp bạn thiết lập và chạy dự án Mobile App Starter một cách nhanh chóng.

## 📋 Prerequisites (Yêu cầu hệ thống)

Trước khi bắt đầu, hãy đảm bảo bạn đã cài đặt:
- **Git** để quản lý mã nguồn.
- **Docker & Docker Compose** để chạy Mock API (Backend).
- **Môi trường phát triển di động** (Android Studio / Xcode) tuỳ theo framework bạn chọn (Flutter, React Native, Kotlin, Swift).
- **AI Coding Tool** (Cursor, Windsurf, GitHub Copilot) - Khuyến khích sử dụng, xem [Vibe Coding Guide](.ai/vibe-coding-guide.md).

## ⚡ Quick Start

1. **Fork & Clone**
   ```bash
   git clone https://github.com/YOUR-USERNAME/YOUR-REPO.git
   cd YOUR-REPO
   ```

2. **Khởi tạo dự án**
   ```bash
   make init
   # Hoặc bash scripts/init.sh
   ```

3. **Khởi chạy Mock Backend**
   ```bash
   make api-up
   # API sẽ chạy tại http://localhost:3000
   ```

4. **Khởi tạo Mobile Framework**
   Di chuyển vào thư mục `app/` và khởi tạo framework bạn chọn.
   Ví dụ với Expo (React Native):
   ```bash
   cd app
   npx create-expo-app@latest .
   ```
   Ví dụ với Flutter:
   ```bash
   flutter create .
   ```

## 📂 Project Structure (Cấu trúc thư mục)

- `/app/`: Mã nguồn ứng dụng di động (Frontend).
- `/backend/`: Mock API sử dụng JSON Server.
- `/docs/`: Tài liệu thiết kế, kiến trúc, API.
- `/.ai/`: Cấu hình và prompt cho AI assistants.

## 🔄 Development Workflow

1. Chạy Backend bằng `make api-up`.
2. Phát triển giao diện và logic trong thư mục `/app/`.
3. Kiểm tra các API mẫu tại `http://localhost:3000`.
4. Tham khảo các tài liệu trong `/docs/` để định hướng phát triển.

## ✅ Submission Checklist (Trước khi nộp bài)

- [ ] Cập nhật đầy đủ thông tin nhóm vào `README.md`.
- [ ] Chụp màn hình ứng dụng và thêm vào `README.md`.
- [ ] Code sạch sẽ, cấu trúc rõ ràng (MVVM/Clean).
- [ ] Chạy ổn định không có lỗi crash.
- [ ] Kiểm tra lại `.gitignore` để không push các file không cần thiết lên Github.
