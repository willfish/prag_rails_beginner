module ProjectsHelper
  def format_target_pledge_amount(project)
    if project.pledge_date_expired?
      content_tag(:strong, 'All done!')
    else
      time_ago_in_words(project.pledging_ends_on)
    end
  end
end
