# encoding: utf-8

module PagesSphinx
  module CategoryExtension
    extend ActiveSupport::Concern

    included do
      after_save ThinkingSphinx::RealTime.callback_for(:pages, [:page])
    end
  end
end
