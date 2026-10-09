---
title: "Scaffold a New Mobile Screen with ViewModel"
tool: "any"
category: "scaffolding"
difficulty: "beginner"
---

# Scaffold New Mobile Screen (MVVM Pattern)

## Context
Bạn đang xây dựng một màn hình mới cho đồ án Di động (INT1449). Màn hình phải tuân theo mô hình MVVM, tách biệt hoàn toàn giữa giao diện hiển thị (View/Widget) và logic nghiệp vụ/quản lý trạng thái (ViewModel/BLoC).

## Thông tin đầu vào
- Tên màn hình: `[ví dụ: ProductDetailScreen / CartScreen / UserProfileScreen]`
- Framework sử dụng: `[React Native (TypeScript) / Flutter (Dart) / Jetpack Compose (Kotlin) / SwiftUI]`
- Giải pháp State Management: `[Zustand / TanStack Query / BLoC / Provider / StateFlow]`
- Các phần tử giao diện chính: `[Header, Carousel ảnh, Danh sách chi tiết, Nút hành động cố định ở đáy]`

## Yêu cầu thực hiện
1. Tạo file View giao diện hiển thị trong thư mục tương ứng của `app/src/`.
2. Tạo file ViewModel / State Holder quản lý dữ liệu cho màn hình này:
   - Khai báo kiểu dữ liệu trạng thái (`UIState: Loading, Success, Error, Empty`).
   - Xử lý các sự kiện từ người dùng (Event: onRefresh, onActionPressed).
3. Đảm bảo giao diện phản hồi đủ 4 trạng thái UI (Loading skeleton, Dữ liệu đầy đủ, Danh sách rỗng, Lỗi kèm nút thử lại).
4. Áp dụng quy chuẩn màu sắc và typography theo `docs/ui-design.md`.

## Kết quả mong đợi (Checklist)
- [ ] View không gọi trực tiếp API; mọi thao tác đều qua ViewModel
- [ ] Hiển thị mượt mà trên nhiều kích thước màn hình
- [ ] Xử lý an toàn khi thiết bị xoay hoặc mất mạng
