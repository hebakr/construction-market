class SpecItem < ApplicationRecord
  as_enum :item_type, text: 0, list: 1, boolean: 2
  belongs_to :category
end
