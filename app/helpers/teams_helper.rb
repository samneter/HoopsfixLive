module TeamsHelper
  def show_club_website(team)
    return team.website if team.website?
    team.club.website
  end
  def show_club_youtube(team)
    return team.youtube if team.youtube?
    team.club.youtube
  end
  def show_club_facebook(team)
    return team.facebook if team.facebook?
    team.club.facebook
  end
  def show_club_twitter(team)
    return team.twitter if team.twitter?
    team.club.twitter
  end
  def show_club_instagram(team)
    return team.instagram if team.instagram?
    team.club.instagram
  end
  def show_club_tiktok(team)
    return team.tiktok if team.tiktok?
    team.club.tiktok
  end
end
