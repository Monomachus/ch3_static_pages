module UsersHelper
    def gravatar_for(user, options = { :size => 50 })
        gravatar_image_tag(user.email.downcase, :alt => user.name,
                                            :class => 'gravatar',
                                            :gravatar => options)
    end

    def show_flashes
        flash.each do |key, value|
            content_tag(:div, value, :class => "flash #{key}")
        end
    end
end
