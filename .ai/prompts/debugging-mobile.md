---
title: "Debug Common Mobile Development Issues"
tool: "any"
category: "debugging"
difficulty: "intermediate"
---

# Debug Mobile Issues

## Context
Bạn gặp sự cố render, lỗi mạng, crash hoặc rò rỉ bộ nhớ trong ứng dụng di động INT1449.

## Mô tả sự cố
- Loại lỗi: `[Network Error / UI Re-render Loop / Memory Leak / Unhandled Promise / Native Crash]`
- Thông báo lỗi chi tiết / Logcat / Terminal Output:
```
[Dán log hoặc stack trace tại đây]
```
- Môi trường: `[Android Emulator / iOS Simulator / Thiết bị thật / Expo Go]`

## Các nguyên nhân phổ biến cần kiểm tra
1. **Lỗi kết nối `Network request failed` hoặc `Connection refused`**:
   - Nếu chạy Android Emulator: bạn đã dùng `10.0.2.2` thay vì `localhost` chưa?
   - Mock Backend trong Docker (`make api-up`) đã bật và truy cập được qua trình duyệt chưa?
   - Đã cấu hình cho phép kết nối Cleartext HTTP trên Android chưa (`android:usesCleartextTraffic="true"` trong AndroidManifest)?
2. **Lỗi vòng lặp render vô hạn (Infinite Re-render)**:
   - Có gọi hàm cập nhật State trực tiếp trong thân Component / hàm `build()` mà không qua `useEffect()` hoặc event handler không?
3. **Lỗi Null Pointer / Undefined Property**:
   - Dữ liệu API trả về có thuộc tính nào bị `null` mà chưa được xử lý fallback không?

## Yêu cầu chẩn đoán & khắc phục
- Đưa ra giải thích trực quan về nguyên nhân gây lỗi.
- Cung cấp đoạn mã sửa đổi chính xác.
