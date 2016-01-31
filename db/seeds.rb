# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(name: "探索")
Category.create(name: "創作")
Category.create(name: "學習")
Category.create(name: "音樂")

20.times do |i|
  Event.create(
    link: "http://www.citytalk.tw/event/271181?flash=1&utm_source=citytalk&utm_medium=banner&utm_content=index_flash&utm_campaign=index_flash",
    title: "[售票]瑪丹娜 2016 Rebel Heart Tour 演唱會",
    start_date_at: 2016-02-24 09:00:00,
    end_date_at: 2016-02-24 16:00:00,
    category: "音樂",
    status: 1,
    address: "台北市松山區南京東路四段2號",
    intro: "主辦單位：Live Nation 理想國

            演出時間：2016年2月4日（四）20：00

                              2016年2月6日（六）20：00 特別加場

            演出地點：台北小巨蛋 禁止飲食及攜帶攝（相、影）器材入場

            票價：$ 16800/13800/10800/8800/6800/4800/2800/800，另有限量VIP套票30000/27000可供選購

            （除座位區外，搖滾區需依照序號排隊入場）

            $30,000限量VIP座位區套票包括

            1.第一排最靠近舞台的座位

            2.限量版Madonna演唱會攝影寫真（VIP套票專屬，市面無售）

            3.演唱會專屬限量吊牌

            $27,000限量VIP搖滾區套票包括

            1.搖滾區優先入場

            2.限量版Madonna演唱會攝影寫真（VIP套票專屬，市面無售）

            3.演唱會專屬限量吊牌"
  )
end