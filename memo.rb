require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
    puts "1が押された"
    puts "拡張子を除いたファイル名を入力してください"
    file_title = gets.chomp
    CSV.open(file_title + '.csv','w') do |csv|
    puts "メモしたい内容を入力してください"
    puts "完了したら　control + D を押してください"
    memo_text = STDIN.read.chomp
        csv << [memo_text]
    end
        
elsif memo_type == 2
    puts "ファイルを編集します"
    puts "編集したいファイル名を拡張子を除いて入力して下さい"
    file_title = gets.chomp
    CSV.open(file_title + '.csv','a') do |csv|
    puts "追記したい内容を入力してください"
    puts "完了したら　control + D を押してください"
    add_text = STDIN.read.chomp
        csv << [add_text]
    end
else 
    puts "半角で1か2を押しましょう"
    return
end


puts "メモを作成しました。"