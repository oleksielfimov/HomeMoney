module CatalogsHelper
 def gravatar_for(catalog, options = { :size => 50 })
    gravatar_image_tag(catalog.account.downcase, :alt => catalog.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
  end
end