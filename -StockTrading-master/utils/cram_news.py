from my_fake_useragent import UserAgent
import re
from urllib import request
# from tradingSystem.models import News
# cooie是一个很大的隐患

def gen_news():
    #ua = UserAgent()
    #user_agent = ua.random()

    url = 'https://tushare.pro/login?next=%2Fnews%2Fnews_sina'

    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 Edg/112.0.1722.68',
        'Host': 'tushare.pro',
        'Origin': 'https://tushare.pro',
        'Cookie': 'session-id=c7abe148-db5e-406e-9473-e1b519535f5d; uid=2|1:0|10:1683374009|3:uid|8:NTAzNDU5|87633a82ce125e4ae1800093e31c7d03e7039256e0d2f751d59292642c82baf0; username=2|1:0|10:1683374009|8:username|12:6JSh5rO956iL|54ea5e0b8fdc12b10860a99f9411025844cbc6e8e70c05e0b3c622b7b1846413'
    }
    req = request.Request(url, headers=headers)  # 测试
    stockPageRequest = request.urlopen(req)  #发送请求，并获取到该页面的 HTML 内容
    htmlTitleContent = str(stockPageRequest.read(), 'utf-8')
    #print(htmlTitleContent) # 测试任务

    # 正则匹配标题
    titlePattern = re.compile(r'<div class="news_content">(.+?)</div>', re.S)
    p_title = 'title="(.*?)"(.*?)'
    titlea = re.findall(titlePattern, htmlTitleContent)
    #title = [t[0] for t in titlea if not t[0].find('【')]   # 从列表 title 中筛选出新闻标题中包含 【 字符的元素，并将它们保存到列表 title
    new_title = [t for t in titlea if '【' in t]

    print(new_title)  # 完成测试任务

    news = []
    for t in new_title:
        a = t.find('【')
        b = t.find('】')
        news.append({'title': t[a+1:b], 'content': t[b+1:]})
    # news = News.objects.all()
    return news  # 保留


#print(news) # 完成测试任务
#gen_news() #
# news_list = gen_news()
# print(news_list)

# for news in news_list:
#     title = news['title']
#     content = news['content']
#     n = News.objects.create(
#         title=title,
#         content=content,
#         read=0
#     )
#     n.save()




