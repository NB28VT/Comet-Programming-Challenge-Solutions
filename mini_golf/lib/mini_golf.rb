def display_scores(file)
  scores = File.new(file, 'r')

  list = scores.read.split

  name_and_score = Hash.new

  list.each do |x|
    player_and_scores = x.split(",")
    holes = player_and_scores.length
    name = player_and_scores[0]
    if name != "Name"
      scores_to_integer = player_and_scores[1..holes].map(&:to_i)
      total_score = scores_to_integer.inject { |sum, score| sum + score }
      name_and_score[name] = total_score
    end
  end

  sorted_player_list = name_and_score.sort_by { | _, score| score }

  puts "Mini Golf Scores\n\n"

  place = 1

  sorted_player_list.each do |player|
    name = player[0]
    score = player[1]
    puts "#{place}. #{name} with #{score} strokes."
    place += 1
  end
end
