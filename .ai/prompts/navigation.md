---
title: "Setup App Navigation and Deep Linking"
tool: "any"
category: "scaffolding"
difficulty: "beginner"
---

# Setup App Navigation

## Context
Bạn cần thiết lập kiến trúc điều hướng (Navigation Architecture) cho ứng dụng di động, kết hợp Bottom Tab Bar và Stack Navigation.

## Thông tin đầu vào
- Thư viện điều hướng: `[React Navigation / go_router / Jetpack Navigation Compose]`
- Cấu trúc luồng:
  - Auth Flow: Splash -> Login -> Register
  - Main Flow (Bottom Tabs): Home, Search, Orders, Profile
  - Modal / Detail Screens: ProductDetail (từ Home/Search), Checkout (từ Orders)

## Yêu cầu thực hiện
1. Khai báo Route Names và tham số truyền giữa các màn hình (Type-Safe Navigation Arguments).
2. Xây dựng Root Navigator có khả năng chuyển đổi giữa Auth Flow và Main Flow dựa trên trạng thái đăng nhập (`isAuthenticated`).
3. Cấu hình Bottom Tab Navigator với Icon và Label phù hợp theo Design Tokens.
4. Xử lý nút Back phần cứng (Android Hardware Back button).

## Kết quả mong đợi
- [ ] Chuyển tab mượt mà, giữ nguyên trạng thái scroll của từng tab
- [ ] Không thể bấm Back quay lại màn hình Login sau khi đã đăng nhập thành công
