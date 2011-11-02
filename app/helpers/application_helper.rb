module ApplicationHelper
  def provider_link(provider)
    if provider.class == Sponsor
      link_to provider.name, edit_sponsor_path(provider)
    else
      link_to provider.name, provider
    end
  end

  def incentive_summary(incentive)
    activity = incentive.activity
    cause = activity.cause
    provider = incentive.provider
    "#{cause.name} needs #{activity.name} #{provider.name} will #{incentive.name}"
  end

  def incentive_blurb(incentive)
    if incentive.provider.name=='Neomind Labs'
      raw "<div class='blurb'>Neomind Labs is a Center City Philadelphia consulting company focused on creating valuable software using cutting-edge technologies.</div>"
    else
      ""
    end
  end
end
