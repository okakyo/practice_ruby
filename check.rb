=begin
・練習問題
ピカチュウとゼニガメのHPと攻撃力を設定し、HPがゼロになるまで戦うプログラムを作ってください。

【完成実行結果】
ピカチュウが勝つ場合

《ピカチュウ》
攻撃力：１３
HP：３０

《ゼニガメ》
攻撃力：６
HP：５０
に設定した場合
https://i.gyazo.com/17f3afb907affbc4f7a3ef38e7f8e5b5.gif

ピカチュウが負ける場合

《ピカチュウ》
攻撃力：５
HP：３０

《ゼニガメ》
攻撃力：８
HP：５０
に設定した場合
https://i.gyazo.com/3591f8a4536627f2d400cc0a08f3a04d.gif
【満たすべき仕様】
相手の攻撃力分のダメージを受ける。攻撃力の高い方の攻撃が有効になり、HPが減るように。
攻撃力やHPを設定する場所はコード上で１箇所のみ
戦闘の間に１秒の間隔、最後の決着前は２秒あける
クラスやインスタンスを用いる
=end

class Monster
    def initialize(name,hp,atk)
        @name=name
        @atk=atk
        @hp=hp
    end

    def name
        @name
    end
    def atk
         @atk
    end
    def hp
         @hp
    end
    def hp=(hp)
        @hp=hp
    end
end

Pic=Monster.new("ピカチュウ",20,8) #ピカチュウ
Zeni=Monster.new("ゼニガメ",25,15) #ゼニガメ

if(Pic.atk >Zeni.atk)
    Atk=Pic
    Def=Zeni
else
    Atk=Zeni
    Def=Pic
end

count=1
puts "*"*30+"\n戦闘開始"+"\n"+"*"*30
while(true)
    puts "-"*5+"\n第%d戦"%count+"\n"+"-"*5
    puts "ピカチュウの残りHP:%d"%Pic.hp
    puts "ゼニガメの残りHP:%d"%Zeni.hp
    count+=1
    if(Pic.atk >Zeni.atk)
        Zeni.hp-=Pic.atk
    else
        Pic.hp-=Zeni.atk
    end
    if(Pic.hp<0 or Zeni.hp<0)
        break
    end
    sleep(1)
end
sleep(1)
puts "-"*5+"\n第%d戦"%count+"\n"+"-"*5
puts "ピカチュウの残りHP:%d"%Pic.hp
puts "ゼニガメの残りHP:%d"%Zeni.hp
sleep(2)
puts "*"*30+"\n決着！！！"+"\n"+"*"*30
puts "%s瀕死,%sの勝利"%[Atk.name,Def.name]


