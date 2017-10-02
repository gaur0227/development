name = ''
name = input('フォルダ名を入力してください \n>')
import datetime
today = datetime.date.today()
today = today.strftime("%Y%m%d") + '_'
name = today + name
import os
os.makedirs(os.path.join(name,"_bak"), exist_ok=True)
os.makedirs(os.path.join(name,"Designs", "Illustrator"), exist_ok=True)
os.makedirs(os.path.join(name,"Designs", "images"), exist_ok=True)
os.makedirs(os.path.join(name,"Designs", "Photoshop"), exist_ok=True)
os.makedirs(os.path.join(name,"Document", "MeetingMinutes"), exist_ok=True)
os.makedirs(os.path.join(name,"Document", "Proposal"), exist_ok=True)
os.makedirs(os.path.join(name,"Document", "Schedules"), exist_ok=True)
os.makedirs(os.path.join(name,"Document", "Specifications"), exist_ok=True)
os.makedirs(os.path.join(name,"Evironments"), exist_ok=True)
os.makedirs(os.path.join(name,"received"), exist_ok=True)
os.makedirs(os.path.join(name,"released"), exist_ok=True)
os.makedirs(os.path.join(name,"Sources"), exist_ok=True)
