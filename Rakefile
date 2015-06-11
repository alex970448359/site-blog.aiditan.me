require 'erb'

task :default => 'serve:default'

namespace :serve do
  desc "Run the server (default)"
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
    # Interact
    puts 'Please specify the relative path: ("new-note[.md]" by default)'
    path = STDIN.gets.chomp
    path = path.empty? ? 'new-note' : path.gsub(/\.md$/, '')
    puts 'Please specify the title: ("" by default)'
    title = STDIN.gets.chomp

    # Generate
    filepath = "_notes/#{path}.md"
    fail 'Specified directory not exists.' unless Dir.exist?(File.dirname(filepath))
    puts "#{filepath.inspect} created"
    File.open(filepath, 'w').puts ERB.new(File.read('_templates/note.md.erb')).result(binding)
  end

  desc "Create a new page"
  task :page do
    File.open(
      'new-page.html', 'w'
    ).puts ERB.new(File.read('_templates/page.md.erb')).result
  end
end
