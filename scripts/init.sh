#!/bin/bash
set -e

echo "🚀 Khởi tạo dự án Mobile App Starter..."

if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ Đã tạo file .env từ .env.example"
else
    echo "ℹ️ File .env đã tồn tại, bỏ qua."
fi

echo ""
echo "🎉 Khởi tạo hoàn tất!"
echo "👉 Tiếp theo: Hãy chọn framework mobile bạn muốn sử dụng và khởi tạo dự án trong thư mục 'app/'."
echo "👉 Tham khảo app/README.md để biết thêm chi tiết."
