create database sky_sports;
show databases;

use sky_sports;

select * from group_stage;
select * from overall_wc ow;

#1 Write an sql query to show all the UNIQUE team names 
select distinct team from overall_wc ow ;

#2 Write an SQL query to show name of team which has rank 1 from group 7
select team from group_stage gs where rank=1 and `group` = 7;

#3 Write an sql query to show count of all teams
select count(team) from overall_wc ow;

#4 Write an SQL query to show matches_played by each team
select team, matches_played
from group_stage gs;



select * from group_stage;
select * from overall_wc ow;
#6 Write an SQL query to show team, percent of wins with respect to matches_played 
#by each team and name the resulting column as wins_percent
select team,100.0*(wins/matches_played) as wins_percent from group_stage gs;

#7.	Write a SQL query to show percent of draws with respect 
#to matches_played round of to 2 digits by each team
select team,round(100.0*(draws/matches_played),2) as wins_percent from group_stage gs ;

#8.	Write a SQL query to show which team has minimum goals_scored and how much
select team,goals_scored from group_stage gs where goals_scored=
(select min(goals_scored) from group_stage gs)

#9.	Write a SQL query to show percent of losses with respect to matches_played by 
#each team in ascending order by losses and name the resulting column as losses_percent
select team, 100.0*(losses/matches_played) as loss_percent from group_stage gs order by loss_percent desc;


#10. Write a SQL query to show the average goal_difference
select avg(goal_difference) from group_stage gs; 

#11. Write a SQL query to show name of the team where points are 0
select team, points from group_stage gs where points=0;

#12 Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from group_stage gs where expected_goal_scored < exp_goal_conceded ;

#13. Write a SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from group_stage gs where exp_goal_difference between -0.5 and 0.5;

select * from group_stage;
select * from overall_wc ow;

#14. Write a SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from group_stage gs order by exp_goal_difference_per_90 asc;

#15. Write a SQL query to show team which has maximum number of players_used
select team,players_used from overall_wc ow where players_used = 
(select max(players_used)from overall_wc ow2);

#16. Write a SQL query to show each team name and avg_age in ascending order by avg_age
select team,avg_age from overall_wc ow order by avg_age asc;

#17. WRITE a sql query to show average possession of teams
select avg(possession) from overall_wc ow ;

#18. Write a SQL query to show team which has played atleast 5 games
select team,games from overall_wc ow where games>=5;

#19. Write a SQL query to show all data for which minutes is greater than 600
select * from overall_wc ow where minutes >600;

#20. Write a SQL query to show team, goals, assists in ascending order by goals
select team,goals,assists from overall_wc ow order by goals asc;

#21. Write a SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from overall_wc ow order by pens_made asc;

#22. Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 
#in ascending order by cards_yellow
select team, cards_yellow, cards_red from overall_wc ow  where cards_red= 1 order by cards_yellow asc;

#23. Write a SQL query to show team, goals_per90, assists_per90, goals_assists_per90 
#in descending order by goals_assists_per90
select team,goals_per90, assists_per90, goals_assists_per90 from overall_wc ow 
order by goals_assists_per90 desc;

#24. Write a SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in 
#ascending order by goals_assists_pens_per90
select team, goals_pens_per90, goals_assists_pens_per90 from overall_wc ow 
order by goals_assists_pens_per90 asc;

#25. Write a SQL query to show team, shots, shots_on_target, shots_on_target_pct 
#where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct
select team, shots, shots_on_target, shots_on_target_pct from overall_wc ow 
where shots_on_target_pct <30 order by shots_on_target_pct asc ;

#26. Write a SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team,shots_per90,shots_on_target_per90 from overall_wc ow where team="belgium";

#27. Write a SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance 
#in descending order by average_shot_distance
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from overall_wc ow 
order by average_shot_distance desc;

#28. Write a SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches from overall_wc ow where errors=0 and touches<1500;

#29. Write a SQL query to show team, fouls which has maximum number of fouls
select team, fouls from overall_wc ow where fouls= (select max(fouls) from overall_wc ow2);

#30. Write a SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from overall_wc ow where offsides<10 or offsides >20;

#31. Write a SQL query to show team, aerials_won, aerials_lost, 
#aerials_won_pct in descending order by aerials_won_pct
select team,aerials_won,aerials_lost,aerials_won_pct from overall_wc ow 
order by aerials_won_pct desc;

#32. WRITE a sql query to show number of teams each group has
select 'group',count(team) from group_stage gs  group by 'group';

#33. Write a SQL query to show team names group 6 has
select team,'group' from group_stage gs where 'group'=6;
select team, `group` 
from group_stage 
where `group`=6;

#34. Write a SQL query to show Australia belongs to which group
select team,`group` from group_stage gs where team='Australia' ;

#35. Write a SQL query to show group, average wins by each group
select `group`,avg(wins) from group_stage gs group by `group`;

#36. Write a SQL query to show group, maximum expected_goal_scored by each group in 
#ascending order by expected_goal_scoredexpected_goal_scored
select `group`,max(expected_goal_scored) as max_goals_score from group_stage gs 
group by `group` order by max_goals_score asc;

#37. Write a SQL query to show group, minimum exp_goal_conceded by each group in 
#descending order by exp_goal_conceded
select `group`,min(exp_goal_conceded) as min_goals_cond from group_stage gs 
group by `group` order by min_goals_cond desc;

#38. Write a SQL query to show group, average exp_goal_difference_per_90 for each group
# in ascending order by exp_goal_difference_per_90
select `group`,avg(exp_goal_difference_per_90) as avg_exp_goal_diff_per_90
from group_stage gs group by `group`
order by avg_exp_goal_diff_per_90 asc;

#39. WRITE a query to show which team has equal number of goals_scored and goals_against
select team,goals_scored,goals_against from group_stage gs 
where goals_scored = goals_against ;

#40. WRITE a query to show which team has maximum players_used
select team from overall_wc ow where players_used = (select max(players_used) from overall_wc ow2);

#41. WRITE a query to show team, players_used, avg_age, games, minutes  
#where minutes less than 500 and greater than 200
select team,players_used,avg_age,games,minutes from overall_wc ow 
where minutes<500 and minutes>200;

#42. WRITE a query to show all data of group_stage_team_stats in ascending order BY points
select * from group_stage gs order by points asc;

#43. WRITE a query to show ALL UNIQUE team in ascending order by team
select distinct(team) as teams from group_stage gs order by teams asc;

#44. WRITE a query to show average avg_age of each group 
#and arrange it in descending order by avg_age.
select `group`,avg(ow.avg_age) as avg_age 
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group` order by avg_age desc;

#45. WRITE a query to show sum of fouls for each group and arrange it in ascending order by fouls.
select `group`, sum(fouls) as total_fouls_of_group 
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group`order by total_fouls_of_group asc;

#46. WRITE a query to show total number of games for each group 
#and arrange it in descending order by games.
select `group`,sum(games) as total_games_by_group 
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group` order by total_games_by_group desc ;

#47. WRITE a query to show total number of players_used for each group 
#and arrange it in ascending order by players_used.
select `group`, sum(ow.players_used) as total_players_used_by_group
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group` order by total_players_used_by_group asc;

#48. WRITE a query to show total number of offsides for 
#each group and arrange it in ascending order by offsides
select `group`, sum(ow.offsides) as total_outside
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group` order by total_outside asc;

#49. WRITE a query to show average passes_pct for each group 
#and arrange it in descending order by passes_pct.
select `group`, avg(ow.passes_pct) as avg_passes_pct
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by `group` order by avg_passes_pct desc;

#50. WRITE a query to show average goals_per90 for 
#each group and arrange it in ascending order by goals_per90.
select `group`, avg(ow.goals_per90) as avg_goals_per_90
from group_stage gs inner join overall_wc ow 
on gs.team = ow.team 
group by  `group`   order by avg_goals_per_90 asc;



#project complete










select * from group_stage gs ;
select * from overall_wc ow; 






















