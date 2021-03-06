# Redmine Tweaks plugin for Redmine
# Copyright (C) 2013-2015 AlphaNodes GmbH

# Twitter wiki macros
module RedmineTweaks
  module WikiMacros
    Redmine::WikiFormatting::Macros.register do
      desc <<-EOHELP
      Creates link to twitter account page.
        {{twitter(user_name)}}
  EOHELP
      macro :twitter do |_obj, args|
        fail 'The correct usage is {{twitter(<user_name>)}}' if args.length < 1
        user_name = args[0].strip
        link_to(h("@#{user_name}"), "https://twitter.com/#{user_name}", class: 'external twitter')
      end
    end
  end
end
