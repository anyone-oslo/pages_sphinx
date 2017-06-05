# encoding: utf-8

module PagesSphinx
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Creates the PagesSphinx configuration"
      source_root File.expand_path("../templates", __FILE__)

      def read_configuration!
        @sphinx_port ||= ask_with_fallback("Sphinx port?", "3312")
      end

      def create_sphinx_config
        template "thinking_sphinx.yml", File.join("config/thinking_sphinx.yml")
      end

      private

      def ask_with_fallback(question, default)
        result = ask(question + " [#{default}]")
        if result.blank?
          default
        else
          result
        end
      end
    end
  end
end
