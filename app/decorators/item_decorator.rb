class ItemDecorator < ApplicationDecorator
  def haml_object_ref
    'item'
  end

  def remove_link
    h.link_to icon('times', style: 'fas'), h.item_path(object), method: :delete, remote: true, data: { confirm: 'Delete this item?' }
  end
end
