module Views
  module Layouts
    class Errors < ActionView::Mustache

      def application_title
        "Error!"
      end

      # Render footer partial
      def footer_html
        # render :partial => 'shared/footer'
      end

      # Prepend modal dialog elements to the body
      def prepend_body
        # render partial: 'shared/ajax_modal'
      end

      def prepend_yield

      end

      # Boolean for whether or not to show tabs
      def show_tabs
        false
      end

      def show_search_box?
        false
      end

    end
  end
end
