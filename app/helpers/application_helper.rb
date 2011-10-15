module ApplicationHelper
  def provider_link(provider)
    if provider.class == Sponsor
      link_to provider.name, edit_sponsor_path(provider)
    else
      link_to provider.name, provider
    end
  end
end
