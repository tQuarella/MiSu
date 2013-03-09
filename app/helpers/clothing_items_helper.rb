module ClothingItemsHelper
  def join_tags(clothing_item)
    clothing_item.tags.map { |t| t.name }.join(", ")
  end
end
