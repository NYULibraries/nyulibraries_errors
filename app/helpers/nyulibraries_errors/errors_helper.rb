module NyulibrariesErrors
  module ErrorsHelper

    def meta_tags
      tag(:meta, charset: "utf-8") +
      tag(:meta, name: "viewport", content: "width=device-width, initial-scale=1.0")+
      tag(:meta, name: "HandheldFriendly", content: "True")+
      tag(:meta, 'http-equiv' => "cleartype", content: "on")+
      favicon_link_tag('https://library.nyu.edu/favicon.ico')+
      csrf_meta_tags
    end

    def application_title
      t('nyulibraries_errors.application_title', raise: true)
    rescue I18n::MissingTranslationData
      begin
        t('application_title', raise: true)
      rescue I18n::MissingTranslationData
        t('nyulibraries_errors.default_application_title')
      end
    end

    def has_links?(error)
      (links_count(error) > 0 || additional_links_count(error) > 0)
    end

    def links_count(error)
      links_for_error(error).count rescue 0
    end

    def additional_links_count(error)
      additional_links_for_error(error).count rescue 0
    end

    def links_for_error(error)
      t("nyulibraries_errors.#{error.to_s}.suggested_links.links", raise: true)
    rescue I18n::MissingTranslationData
      default_links
    end

    def additional_links_for_error(error)
      t("nyulibraries_errors.#{error.to_s}.suggested_links.additional_links", raise: true)
    rescue I18n::MissingTranslationData
      default_additional_links
    end

    def default_links
      @default_links ||= begin
        t('nyulibraries_errors.suggested_links.links', raise: true)
      rescue I18n::MissingTranslationData
        nil
      end
    end

    def default_additional_links
      @default_additional_links ||= begin
        t('nyulibraries_errors.suggested_links.additional_links', raise: true)
      rescue I18n::MissingTranslationData
        nil
      end
    end

  end
end
