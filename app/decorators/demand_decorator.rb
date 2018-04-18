class DemandDecorator < ApplicationDecorator
  def met_class
    'list-group-item-success' if met?
  end

  def action_link
    if h.logged_in?
      h.link_to action_icon, h.demand_path(object, met: !met), method: :patch
    end
  end

  private

  def action_icon
    if met?
      h.fa_icon('times', title: 'Still need it')
    else
      h.fa_icon('check', title: 'Got it!')
    end
  end
end
