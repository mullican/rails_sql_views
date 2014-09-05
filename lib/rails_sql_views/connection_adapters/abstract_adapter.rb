module RailsSqlViews
  module ConnectionAdapters
    module AbstractAdapter

      # Subclasses should override and return true if they support views.
      def supports_views?
        return false
      end

      # Subclasses should override and return false if they don't support CASCADE
      def supports_drop_table_cascade?
        return true
      end
      
      def supports_view_columns_definition?
        true
      end
      
      # Get a list of all views for the current database
      def views(name = nil)
        raise NotImplementedError, "views is an abstract method"
      end
      
      # Get the select statement for the specified view
      def view_select_statement(view, name=nil)
        raise NotImplementedError, "view_select_statement is an abstract method"
      end
    end
  end
end
