# encoding: utf-8

module PagesSphinx
  class Engine < Rails::Engine
    initializer :extend_pages do |_config|
      Category.send(:include, PagesSphinx::CategoryExtension)
      Page.send(:include, PagesSphinx::PageExtension)
      PageFile.send(:include, PagesSphinx::PageFileExtension)
      User.send(:include, PagesSphinx::UserExtension)
      PagesCore::Frontend::PagesController.send(
        :include, PagesSphinx::PagesControllerExtension
      )
    end
  end
end
