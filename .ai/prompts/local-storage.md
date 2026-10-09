---
title: "Setup Offline Storage and Local Database"
tool: "any"
category: "architecture"
difficulty: "intermediate"
---

# Setup Offline Storage & Local Database

## Context
Ứng dụng di động cần hoạt động ngoại tuyến (Offline-First) và lưu trữ cục bộ các dữ liệu quan trọng (User Profile, Danh sách yêu thích, Lịch sử xem).

## Thông tin đầu vào
- Framework: `[React Native / Flutter / Kotlin / Swift]`
- Công nghệ lưu trữ: `[SQLite (Room/sqflite/expo-sqlite) / Key-Value Store (MMKV/SharedPreferences/DataStore)]`
- Dữ liệu cần lưu: `[Cấu trúc bảng / Entity hoặc Key-Value]`

## Yêu cầu thực hiện
1. Khởi tạo Database / Storage Provider trong tầng Data Layer.
2. Tạo Entity và DAO (Data Access Object) cho bảng dữ liệu.
3. Viết các hàm CRUD (Create, Read, Update, Delete) bất đồng bộ (Async / Coroutine / Promise).
4. Tích hợp cơ chế đồng bộ (Sync Policy): Đọc từ Local DB trước để hiển thị tức thì, sau đó gọi ngầm API và cập nhật lại Local DB khi có kết nối mạng.

## Kết quả mong đợi
- [ ] Dữ liệu vẫn hiển thị bình thường khi thiết bị bật chế độ máy bay
- [ ] Thao tác ghi dữ liệu không làm đơ giao diện chính (chạy trên background thread)
