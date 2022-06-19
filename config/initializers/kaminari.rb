Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari

  if defined?(WillPaginate)
    module WillPaginate
      module ActiveRecord
        module RelationMethods
          def per(value = nil) per_page(value) end
          def total_count() count end
          def first_page?() self == first end
          def last_page?() self == last end
        end
      end
      module CollectionMethods
        alias_method :num_pages, :total_pages
      end
    end
  end
end