---
title: "Create API Client and Repository Layer"
tool: "any"
category: "scaffolding"
difficulty: "beginner"
---

# Create API Client & Repository Layer

## Context
Bạn cần tích hợp một endpoint REST API từ Mock Backend (`backend/db.json`) vào ứng dụng di động thông qua lớp Repository (Clean Architecture).

## Thông tin đầu vào
- Tài nguyên cần gọi: `[/products /users /posts /orders]`
- Phương thức HTTP: `[GET / POST / PUT / DELETE]`
- Dữ liệu gửi đi (Request payload): `[JSON schema / Body parameters]`
- Dữ liệu trả về (Response schema): `[Model / DTO]`

## Yêu cầu thực hiện
1. Định nghĩa kiểu dữ liệu (DTO / Data Model / Entity).
2. Viết hàm gọi API trong Service Layer sử dụng HTTP Client đã cấu hình (Axios / Dio / Retrofit).
3. Tạo Repository Interface và Implementation tương ứng.
4. Xử lý bắt lỗi ngoại lệ HTTP (Timeout, 401, 404, 500) và bọc kết quả trong cấu trúc Result (`Result.Success` hoặc `Result.Failure`).
5. (Tùy chọn) Tích hợp lưu trữ bộ nhớ đệm (Cache) nếu cần hỗ trợ ngoại tuyến.

## Kết quả mong đợi
- [ ] Model được ánh xạ chính xác với JSON của Mock Backend
- [ ] Không rò rỉ mã lỗi HTTP thô lên tầng Presentation
- [ ] Có cơ chế timeout và xử lý ngắt mạng
