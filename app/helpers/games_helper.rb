module GamesHelper
  def show_display_name(team)
    return team.display_name if team.display_name?
    team.club.name
  end
end
