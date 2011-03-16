module ApplicationHelper
  def submit_or_cancel(form, name=t('general.cancel'))
    form.submit + " #{t('general.or')} " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
  def language_selector
    if I18n.locale == :en
      link_to "Pt", url_for(:locale => 'pt-br')
    else
      link_to "En", url_for(:locale => 'en')
    end
  end
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end
