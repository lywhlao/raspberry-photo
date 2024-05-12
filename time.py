from picamera2 import Picamera2, Preview
from time import sleep
from datetime import datetime
picam2 = Picamera2()
config=picam2.create_preview_configuratioin()
picam2.configure(config)
picam2.start_preview(Preview.DRM)
# 获取当前日期和时间
current_datetime = datetime.now()
# 将日期格式化为字符串（精确到分）
formatted_datetime = current_datetime.strftime("%Y-%m-%d-%H-%M")
image_name = 'image{}.jpg'.format(formatted_datetime)
# picam2.start_and_capture_file(image_name);