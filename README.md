# เนื้อหาโปรเจค
ทดสอบการใช้ Appium Library ในการรันคำสั่งผ่าน Robot Framework โดยมีการใช้ Appium Server ในการเชื่อมต่อกับ Android Studio และใช้ Appium Inspector ในการดู element ต่างๆใน Mobile

# Test Scenario
1.ทดสอบการเข้า setting เพื่อเปิด Airplane Mode ใน Menu Network & Internet \
2.ทดสอบการเปิดการแสดง Battery ใน Menu Battery \
3.ทดสอบการเพิ่ม ภาษาไทย เมนู System > Languages & input > Languages > Add Language >  พิมพ์ th เมื่อภาษาไทยขึ้นมาจึงทำการเพิ่ม \

# Appium Server Setting
<img src = 'image/Appium_server_setting.PNG' width="400" height="400">

# Appium Inspector
<img src = 'image/Appium_inspector.PNG' width="1280" height="720">

<div align="center"> 
<pre><code>
{
        "platformName": "Android",
        "appium:platformVersion": "12.0",
        "appium:deviceName": "emulator-5554"
}
</code></pre>
</div>
