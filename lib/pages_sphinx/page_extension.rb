# encoding: utf-8

module PagesSphinx
  module PageExtension
    extend ActiveSupport::Concern

    included do
      after_save ThinkingSphinx::RealTime.callback_for(:page)
    end

    def localization_values
      localizations.map(&:value)
    end

    def category_names
      categories.map(&:name)
    end

    def file_names
      files.map(&:name)
    end

    def file_filenames
      files.map(&:filename)
    end

    def published
      published?
    end
  end
end
