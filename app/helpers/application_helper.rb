module ApplicationHelper
  def provider_link(provider)
    if provider.class == Sponsor
      link_to provider.name, edit_sponsor_path(provider)
    else
      link_to provider.name, provider
    end
  end

  def incentive_summary(incentive)
    action = incentive.action
    cause = action.cause
    provider = incentive.provider
    "#{cause.name} needs #{action.name} #{provider.name} will #{incentive.name}"
  end
end
