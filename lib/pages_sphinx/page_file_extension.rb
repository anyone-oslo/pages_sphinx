# encoding: utf-8

module PagesSphinx
  module PageFileExtension
    extend ActiveSupport::Concern

    included do
      after_save ThinkingSphinx::RealTime.callback_for(:page_file)
    end
  end
end
