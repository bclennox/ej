class DemandDecorator < ApplicationDecorator
  def haml_object_ref
    'demand'
  end

  def met_class
    'met' if met?
  end

  def met_icon
    icon('check', style: 'fas', title: 'Got it!', classes: 'met-icon') if met?
  end

  def action_link
    h.link_to action, h.demand_path(object, met: !met), method: :patch, remote: true, class: 'mr-1'
  end

  def remove_link
    h.link_to icon('times', style: 'fas'), h.demand_path(object, met: !met), method: :delete, remote: true, data: { confirm: 'Delete this item?' }
  end

  private

  def action
    if met?
      icon('dot-circle')
    else
      icon('circle')
    end
  end
end
