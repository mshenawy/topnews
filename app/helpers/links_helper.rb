module LinksHelper

	 # Returns the full title on a per-page basis.
  def link_score(link)
    link.get_upvotes.size - link.get_downvotes.size 
  end

end
