import discord
import asyncio
import datetime

client = discord.Client()

@client.event
async def on_ready():
    print('Logged in as')
    print(client.user.name)
    print(client.user.id)
    print('------')

@client.event
async def on_message(message):
    if message.content.startswith('Hey minicoff'):
        counter = 0
        tmp = await client.send_message(message.channel, 'Calculating messages...')
        async for log in client.logs_from(message.channel, limit=100):
            if log.author == message.author:
                counter += 1
        await client.edit_message(tmp, 'You have {} messages.'.format(counter))

    elif message.content.startswith('!sleep'):
        await asyncio.sleep(5)
        await client.send_message(message.channel, 'Done sleeping')

        # 「hey」で始まるか調べる
    elif message.content.startswith('誰か'):
        # 送り主がBotだった場合反応したくないので
        if client.user != message.author:
            # メッセージを書きます
            m = "なんでしょう?" + message.author.name + "くん"
            # メッセージが送られてきたチャンネルへメッセージを送ります
            await client.send_message(message.channel, m)

    elif message.content.startswith("getlist"):
        if client.user != message.author:
            str = [member.display_name for member in client.get_all_members()]
            await client.send_message(message.channel, str)

    elif message.content.startswith('音楽かけて'):
        # 送り主がBotだった場合反応したくないので
        if client.user != message.author:
            # メッセージを書きます
            m0 = "まかせて" + message.author.name + "くん"
            m1 = ";;j"
            music = "https://goo.gl/GmRCeY"
            # メッセージが送られてきたチャンネルへメッセージを送ります
            await client.send_message(message.channel, m0)
            await discord.VoiceClient("general")
            await client.send_message(message.channel, m1)
            await client.send_message(message.channel, ";;play" + music)
            await client.send_message(message.channel, "##ごめん！やっぱ無理！##")

    elif message.content.startswith("今何時"):
        if client.user != message.author:
            time = datetime.datetime.now()
            await client.send_message(message.channel, time)



# token にDiscordのデベロッパサイトで取得したトークンを入れてください
client.run("NDI5MDk1MzIzNzY0NTIzMDA4.DZ8qHA.ktfXnt5uG6sJe2ATK3WIstZNpwk")
