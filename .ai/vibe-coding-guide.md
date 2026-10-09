# 🌊 Vibe Coding Guide for Mobile App Starter

Chào mừng bạn đến với hướng dẫn **Vibe Coding**! Đây là cách để bạn tận dụng tối đa sức mạnh của AI assistants (như GitHub Copilot, Cursor, Windsurf) trong quá trình phát triển ứng dụng di động.

## 🧠 Vibe Coding là gì?
Thay vì viết từng dòng code theo cách thủ công truyền thống, bạn đóng vai trò là "Kiến trúc sư" và "Người hướng dẫn", sử dụng AI để sinh code nhanh chóng thông qua các câu lệnh (prompts) rõ ràng và cấu trúc dự án chuẩn mực.

## 🎯 Nguyên tắc cốt lõi

1. **Context is King (Ngữ cảnh là số 1):** AI cần biết toàn cảnh dự án. Luôn duy trì file `.ai/AGENTS.md` cập nhật.
2. **Step-by-Step (Từng bước một):** Đừng yêu cầu AI tạo toàn bộ app trong một câu lệnh. Hãy chia nhỏ: "Tạo ViewModel trước", sau đó "Tạo UI và kết nối với ViewModel".
3. **Trust but Verify (Tin tưởng nhưng phải kiểm tra):** AI có thể sai. Hãy đọc code AI viết ra và chạy thử nghiệm thường xuyên.

## 🛠️ Quy trình làm việc đề xuất

### 1. Khởi tạo & Định hình
- Khởi tạo project trong `app/`.
- Cập nhật tài liệu trong `docs/ui-design.md` và `docs/architecture.md`.

### 2. Thiết kế Layer
Yêu cầu AI theo từng lớp kiến trúc:
- **Tầng Data:** "Tạo các model từ file `backend/db.json` và tạo class gọi API."
- **Tầng Logic:** "Viết ViewModel để lấy danh sách từ API, xử lý trạng thái Loading/Error/Success."
- **Tầng UI:** "Dựa trên tài liệu `ui-design.md`, tạo màn hình giao diện và kết nối với ViewModel vừa tạo."

### 3. Tận dụng Prompts mẫu
Thư mục `.ai/prompts/` chứa sẵn các template câu lệnh hữu ích. Hãy mở chúng lên, copy nội dung và dán vào cửa sổ chat với AI.
