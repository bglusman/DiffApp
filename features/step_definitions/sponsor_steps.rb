Given "there are sponsors" do
  unless Sponsor.exists?(:name => "sponsor1")
    @sponsor1 = Sponsor.create :name => "sponsor1"
    @sponsor2 = Sponsor.create :name => "sponsor2"
  end
end
