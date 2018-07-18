require "textile2md/version"
require "RedCloth"
require "reverse_markdown"

module Textile2md
  def self.convert(textile)
    html = RedCloth.new(textile).to_html
    markdown = ReverseMarkdown.convert(html)

    markdown
  end
end
