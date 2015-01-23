require "stringex"

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
    title = get_stdin("Enter a title for your post: ")
    filename = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.md"
    if File.exist?(filename)
      abort("rake aborted!") unless ask("#{filename} already exists. Do you want to overwrite?", ['y', 'N']) == 'y'
    end
    puts "Creating new post: #{filename}"
    File.open(filename, 'w').puts <<-END_OF_DOC
---
layout: post
title: \"#{title}\"
description: \"\"
modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}
tags: []
image:
  feature:
  credit:
  creditlink:
comments: post-#{Time.now.strftime('%Y%m%d')}
link:
---

    END_OF_DOC
  end

  desc "Create a new draft in _drafts"
  task :draft do
    title = get_stdin("Enter a title for your post: ")
    filename = "_drafts/#{title.to_url}.md"
    if File.exist?(filename)
      abort("rake aborted!") unless ask("#{filename} already exists. Do you want to overwrite?", ['y', 'N']) == 'y'
    end
    puts "Creating new draft: #{filename}"
    File.open(filename, 'w').puts <<-END_OF_DOC
---
layout: post
title: \"#{title}\"
description: \"\"
modified:
tags: []
image:
  feature:
  credit:
  creditlink:
comments:
link:
---

    END_OF_DOC
    system("atom #{filename}")
  end

  desc "Create a new note in _notes"
  task :note do
    title = get_stdin("Enter a title for your note: ")
    filename = "_notes/#{title.split('/').collect{ |s| s.to_url}.join('/')}.md"
    if File.exist?(filename)
      abort("rake aborted!") unless ask("#{filename} already exists. Do you want to overwrite?", ['y', 'N']) == 'y'
    end
    puts "Creating new post: #{filename}"
    FileUtils.mkdir_p File.dirname(filename)
    File.open(filename, 'w').puts <<-END_OF_DOC
---
layout:    note
permalink: /notes/#{title.split('/').collect{ |s| s.to_url}.join('/')}/
title:     \"#{title.split('/').last}\"
date:      #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}
modified:  #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}
mathjax:
---

    END_OF_DOC
  end

  desc "Create a new convict dairy in _convicts"
  task :convict do
    title = get_stdin("Enter the date of your convict: [2014-11-18]")
    filename = "_convicts/#{title.to_url}.md"
    if File.exist?(filename)
      abort("rake aborted!") unless ask("#{filename} already exists. Do you want to overwrite?", ['y', 'N']) == 'y'
    end
    puts "Creating new convict: #{filename}"
    File.open(filename, 'w').puts "---\n---\n"
    system("atom #{filename}")
  end

  desc "Create a new page"
  task :page do
    title = get_stdin("Enter a title for your page: ")
    filename = "#{title.to_url}.html"
    if File.exist?(filename)
      abort("rake aborted!") unless ask("#{filename} already exists. Do you want to overwrite?", ['y', 'N']) == 'y'
    end
    puts "Creating new page: #{filename}"
    File.open(filename, 'w').puts <<-END_OF_DOC
---
layout: page
permalink: /#{title.to_url}/
title: \"#{title}\"
description:
image:
  feature:
  credit:
  creditlink:
comments: page-#{title.to_url}
---

    END_OF_DOC
  end
end

desc "Publish a draft"
task :publish do
  drafts = Dir["_drafts/*.md"]
  drafts.each_with_index { |d,i| puts "[#{i}]\t#{d}" }
  k = ask("Which one to publish?", (0...drafts.size).collect { |i| (i).to_s } ).to_i
  oldname = drafts[k]
  newname = "_posts/#{Time.now.strftime('%Y-%m-%d')}-" + File.basename(oldname)
  File.open(newname, "w").puts File.read(oldname).gsub(
    /modified:[^\n]*/,
    "modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
  ).gsub(
    /comments:[^\n]*/,
    "comments: post-#{Time.now.strftime('%Y%m%d')}"
  )
  File.delete(oldname)
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end
