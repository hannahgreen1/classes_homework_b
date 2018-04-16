require("minitest/autorun")
require("minitest/rg")
require_relative ("../lab_B")

class TestSportsTeam < Minitest::Test

def test_get_team_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn")
 assert_equal("E21", team.team())
end

def test_get_player_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn")
 assert_equal(["Hannah", "Rachel", "Pauline"], team.player())
end

def test_get_coach_name
 team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn")
 assert_equal("Finn", team.coach())
end

def test_set_coach_name
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn")
  team.set_coach_name("Zsolt")
  assert_equal("Zsolt", team.coach())
end

def test_add_new_player
  team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn")
  team.add_new_player("Yang")
  assert_equal(["Hannah", "Rachel", "Pauline", "Yang"], team.player())

end

end
