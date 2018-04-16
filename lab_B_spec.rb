require("minitest/autorun")
require("minitest/rg")
require_relative ("../lab_B")

class TestSportsTeam < Minitest::Test

def test_get_team_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
 assert_equal("E21", team.team())
end

def test_get_player_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
 assert_equal(["Hannah", "Rachel", "Pauline"], team.player())
end

def test_get_coach_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
 assert_equal("Finn", team.coach())
end

def test_set_coach_name
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
  team.set_coach_name("Zsolt")
  assert_equal("Zsolt", team.coach())
end

def test_add_new_player
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
  team.add_new_player("Yang")
  assert_equal(["Hannah", "Rachel", "Pauline", "Yang"], team.player())

end
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.

def test_player_in_team
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
  team.player_in_team("Hannah")
assert_equal("Hannah", team.player_in_team("Hannah"))
end

def test_add_points
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
end

def test_outcome__win
    team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
    team.outcome("WIN")
    assert_equal(5, team.outcome("WIN"))
end

def test_outcome_lose
    team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
    team.outcome("Lose")
    assert_equal(-5, team.outcome("Lose"))
end

end
