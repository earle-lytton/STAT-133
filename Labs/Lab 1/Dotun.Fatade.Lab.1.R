scored <- c(14, 14, 9, 14, 28, 13, 13, 24, 17, 6, 24, 0, 24, 13, 26, 14)
against <- c(19, 30, 16, 38, 31, 24, 23, 30, 41, 13, 20, 52, 13, 31, 24, 47)

# Part 1
# 1. How many points did the Raiders score in game 7?
game_7_score <- scored[7]

# 2. What was the score of the first 5 games?
scored[1:5]

# 3. What were the scores of the even games? Try to do this problem without typing in c(2,4,...)
seq(from = 2, to = length(scored), by = 2)
scored [seq(from = 2, to = length(scored), by = 2)]
# 4. What was the score of the last game? Try to do this problem without typing in the number of the last game.
scored[length(scored)]

# 5. Select the scores higher than 14.
scored[scored > 14]

# 6. Select the scores equal to 14.
scored[scored == 14]

# 7. Select the scores equal to 13 or 14.
scored[scored == 13 | scored == 14]

# 8. Select the scores between between 7 and 21 points.
scored[scored >= 7 & scored <= 21]

# 9. Sort the scores in decreasing order.
sort(scored, decreasing = TRUE)

# 10. What was the highest score achieved?
max(scored)

# 11. What was the lowest score achieved?
min(scored)

# 12. What was the average score?
mean(scored)

# 13. Use the `summary()` function to give some summary statistics.
summary(scored)

# 14. In how many games did the Raiders score over 20 points?
sum(scored > 20)

# Part 2
# These questions refer to both vectors.
 
# 1. What was the sum of the scores in game 7?
scored[7]
against[7]
scored[7]+against[7]

# 2. What was the sum of the scores in the last 5 games?
lastfive_scored <- sum(scored[seq(from = (length(scored) - 5), to = length(scored), by = 1)])
lastfive_against <- sum(against[seq(from = (length(against) - 5), to = length(against), by = 1)])
sum(lastfive_scored, lastfive_against)
  
# 3. What was the difference in scores in the odd games?
odd_games_scored <- sum(scored[seq(from = 1, to = length(scored), by = 2)])
odd_games_against <- sum(against[seq(from = 1, to = length(against), by = 2)])
odd_difference <- abs(odd_games_against -  odd_games_scored)
odd_difference

# 4. Which games did the Raiders win?
raidersgameswon <- scored - against
rgw <- raidersgameswon > 0
which(rgw == TRUE)

# 5. Were there any ties?
raidersgamestie <- scored - against
rgt <- raidersgamestie == 0
rgt
which(rgt == TRUE)