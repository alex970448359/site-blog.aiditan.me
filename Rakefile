require 'erb'

task :default => 'serve:default'

namespace :serve do
  desc "Run the server"
  task :default do
    system("bundle exec jekyll serve --baseurl '' -w")
  end

  # serve with drafts
  desc "Run the server with drafts"
  task :with_drafts do
    system("bundle exec jekyll serve --baseurl '' -w -D")
  end
end

namespace :new do
  desc "Create a new post in _posts"
  task :post do
    File.open(
      "_posts/#{Time.now.strftime('%Y-%m-%d')}-new-post.md", 'w'
    ).puts ERB.new(File.read('_templates/post.md.erb')).result
  end

  desc "Create a new note in _notes"
  task :note do
    File.open(
      '_notes/new-note.md', 'w'
    ).puts ERB.new(File.read('_templates/note.md.erb')).result
  end

  desc "Create a new page"
  task :page do
    File.open(
      'new-page.html', 'w'
    ).puts ERB.new(File.read('_templates/page.md.erb')).result
  end
end
