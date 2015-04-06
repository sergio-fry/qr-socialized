module PagesHelper
  def page_body_format(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)

    raw markdown.render(text)
  end
end
