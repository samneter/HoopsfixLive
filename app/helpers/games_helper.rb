module GamesHelper
  def show_display_name(team)
    return team.display_name unless team.display_name.empty?
    team.club.name
  end
end
