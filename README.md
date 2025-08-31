# Robot Framework JSON Schema Validation

ตัวอย่างโปรเจกต์สำหรับทดสอบ API ด้วย **Robot Framework** พร้อมตรวจสอบ **JSON Response** ตาม **Schema** ด้วย **JSONLibrary**

---

## 🔹 คุณสมบัติ

- เรียก API ด้วย `RequestsLibrary`
- ตรวจสอบ JSON Response ตาม Schema ด้วย `JSONLibrary`
- รองรับการเก็บ Schema แยกเป็นไฟล์ `.json`
- ใช้ `${CURDIR}` ทำให้ path เป็น relative และย้ายโปรเจกต์ได้สะดวก
- ปิด SSL warnings สำหรับ API dev/test

---

## 📦 การติดตั้ง Library

```bash
pip install robotframework
pip install robotframework-requests
pip install robotframework-jsonlibrary
