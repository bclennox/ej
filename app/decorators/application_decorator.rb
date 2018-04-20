class ApplicationDecorator < Draper::Decorator
  delegate_all

  private

  def icon(name, style: 'far', classes: nil, title: nil)
    h.content_tag(:i, nil, class: [style, "fa-#{name}", classes].compact.join(' '), title: title)
  end
end
