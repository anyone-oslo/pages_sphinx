# encoding: utf-8

module PagesSphinx
  module UserExtension
    extend ActiveSupport::Concern

    included do
      after_save ThinkingSphinx::RealTime.callback_for(:user)
    end
  end
end
