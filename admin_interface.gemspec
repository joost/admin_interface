# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "admin_interface"
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joost Hietbrink"]
  s.date = "2012-06-20"
  s.description = "A Rails admin interface generator. Theme stolen from Redmine. Similar to web-app-theme but better ;)."
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
    ".rvmrc",
    "Gemfile",
    "README.rdoc",
    "Rakefile",
    "admin_interface.gemspec",
    "app/helpers/admin/base_helper.rb",
    "app/inputs/country_code_input.rb",
    "config/locales/en.yml",
    "doc/screenshot.png",
    "lib/admin_interface.rb",
    "lib/admin_interface/engine.rb",
    "lib/admin_interface/version.rb",
    "lib/generators/admin_interface/SCAFFOLD_USAGE",
    "lib/generators/admin_interface/USAGE",
    "lib/generators/admin_interface/scaffold_generator.rb",
    "lib/generators/admin_interface/setup_generator.rb",
    "lib/generators/admin_interface/templates/scaffold/INSTALL",
    "lib/generators/admin_interface/templates/scaffold/controller.rb",
    "lib/generators/admin_interface/templates/scaffold/functional_test.rb",
    "lib/generators/admin_interface/templates/scaffold/helper.rb",
    "lib/generators/admin_interface/templates/scaffold/helper_test.rb",
    "lib/generators/admin_interface/templates/scaffold/layout.html.erb",
    "lib/generators/admin_interface/templates/scaffold/style.css",
    "lib/generators/admin_interface/templates/scaffold/view_edit.html.erb",
    "lib/generators/admin_interface/templates/scaffold/view_form_partial.html.erb",
    "lib/generators/admin_interface/templates/scaffold/view_index.html.erb",
    "lib/generators/admin_interface/templates/scaffold/view_list_partial.html.erb",
    "lib/generators/admin_interface/templates/scaffold/view_new.html.erb",
    "lib/generators/admin_interface/templates/scaffold/view_show.html.erb",
    "lib/generators/admin_interface/templates/setup/INSTALL",
    "lib/generators/admin_interface/templates/setup/controllers/base_controller.rb",
    "lib/generators/admin_interface/templates/setup/controllers/resource_controller.rb",
    "lib/generators/admin_interface/templates/setup/views/index.html.erb",
    "lib/generators/admin_interface/templates/setup/views/layout.html.erb",
    "vendor/assets/images/admin/1downarrow.png",
    "vendor/assets/images/admin/1uparrow.png",
    "vendor/assets/images/admin/22x22/authent.png",
    "vendor/assets/images/admin/22x22/comment.png",
    "vendor/assets/images/admin/22x22/file.png",
    "vendor/assets/images/admin/22x22/info.png",
    "vendor/assets/images/admin/22x22/notifications.png",
    "vendor/assets/images/admin/22x22/options.png",
    "vendor/assets/images/admin/22x22/package.png",
    "vendor/assets/images/admin/22x22/plugin.png",
    "vendor/assets/images/admin/22x22/projects.png",
    "vendor/assets/images/admin/22x22/role.png",
    "vendor/assets/images/admin/22x22/settings.png",
    "vendor/assets/images/admin/22x22/tracker.png",
    "vendor/assets/images/admin/22x22/users.png",
    "vendor/assets/images/admin/22x22/workflow.png",
    "vendor/assets/images/admin/2downarrow.png",
    "vendor/assets/images/admin/2uparrow.png",
    "vendor/assets/images/admin/add.png",
    "vendor/assets/images/admin/arrow_collapsed.png",
    "vendor/assets/images/admin/arrow_down.png",
    "vendor/assets/images/admin/arrow_expanded.png",
    "vendor/assets/images/admin/arrows_up_down.png",
    "vendor/assets/images/admin/attachment.png",
    "vendor/assets/images/admin/book.png",
    "vendor/assets/images/admin/bullet_add.png",
    "vendor/assets/images/admin/bullet_arrow_left.png",
    "vendor/assets/images/admin/bullet_arrow_right.png",
    "vendor/assets/images/admin/bullet_black.png",
    "vendor/assets/images/admin/bullet_blue.png",
    "vendor/assets/images/admin/bullet_delete.png",
    "vendor/assets/images/admin/bullet_diamond.png",
    "vendor/assets/images/admin/bullet_end.png",
    "vendor/assets/images/admin/bullet_go.png",
    "vendor/assets/images/admin/bullet_orange.png",
    "vendor/assets/images/admin/bullet_purple.png",
    "vendor/assets/images/admin/bullet_toggle_minus.png",
    "vendor/assets/images/admin/bullet_toggle_plus.png",
    "vendor/assets/images/admin/calendar.png",
    "vendor/assets/images/admin/call.gif",
    "vendor/assets/images/admin/call_in.png",
    "vendor/assets/images/admin/call_out.png",
    "vendor/assets/images/admin/cancel.png",
    "vendor/assets/images/admin/changeset.png",
    "vendor/assets/images/admin/close.png",
    "vendor/assets/images/admin/close_hl.png",
    "vendor/assets/images/admin/comment.png",
    "vendor/assets/images/admin/comments.png",
    "vendor/assets/images/admin/copy.png",
    "vendor/assets/images/admin/crop.png",
    "vendor/assets/images/admin/dash.png",
    "vendor/assets/images/admin/database_key.png",
    "vendor/assets/images/admin/delete.png",
    "vendor/assets/images/admin/destroy.png",
    "vendor/assets/images/admin/document.png",
    "vendor/assets/images/admin/download.png",
    "vendor/assets/images/admin/draft.png",
    "vendor/assets/images/admin/duplicate.png",
    "vendor/assets/images/admin/edit.png",
    "vendor/assets/images/admin/email.png",
    "vendor/assets/images/admin/exclamation.png",
    "vendor/assets/images/admin/external.png",
    "vendor/assets/images/admin/false.png",
    "vendor/assets/images/admin/fav.png",
    "vendor/assets/images/admin/fav_off.png",
    "vendor/assets/images/admin/feed.png",
    "vendor/assets/images/admin/files/c.png",
    "vendor/assets/images/admin/files/csharp.png",
    "vendor/assets/images/admin/files/default.png",
    "vendor/assets/images/admin/files/image.png",
    "vendor/assets/images/admin/files/pdf.png",
    "vendor/assets/images/admin/files/php.png",
    "vendor/assets/images/admin/files/ruby.png",
    "vendor/assets/images/admin/files/text.png",
    "vendor/assets/images/admin/files/xml.png",
    "vendor/assets/images/admin/files/zip.png",
    "vendor/assets/images/admin/flag_black.png",
    "vendor/assets/images/admin/flag_blue.png",
    "vendor/assets/images/admin/flag_green.png",
    "vendor/assets/images/admin/flag_red.png",
    "vendor/assets/images/admin/folder.png",
    "vendor/assets/images/admin/folder_open.png",
    "vendor/assets/images/admin/folder_open_add.png",
    "vendor/assets/images/admin/folder_open_orange.png",
    "vendor/assets/images/admin/group.png",
    "vendor/assets/images/admin/help.png",
    "vendor/assets/images/admin/history.png",
    "vendor/assets/images/admin/home.png",
    "vendor/assets/images/admin/jstoolbar/bt_bq.png",
    "vendor/assets/images/admin/jstoolbar/bt_bq_remove.png",
    "vendor/assets/images/admin/jstoolbar/bt_code.png",
    "vendor/assets/images/admin/jstoolbar/bt_del.png",
    "vendor/assets/images/admin/jstoolbar/bt_em.png",
    "vendor/assets/images/admin/jstoolbar/bt_h1.png",
    "vendor/assets/images/admin/jstoolbar/bt_h2.png",
    "vendor/assets/images/admin/jstoolbar/bt_h3.png",
    "vendor/assets/images/admin/jstoolbar/bt_img.png",
    "vendor/assets/images/admin/jstoolbar/bt_ins.png",
    "vendor/assets/images/admin/jstoolbar/bt_link.png",
    "vendor/assets/images/admin/jstoolbar/bt_ol.png",
    "vendor/assets/images/admin/jstoolbar/bt_pre.png",
    "vendor/assets/images/admin/jstoolbar/bt_strong.png",
    "vendor/assets/images/admin/jstoolbar/bt_ul.png",
    "vendor/assets/images/admin/lightning.png",
    "vendor/assets/images/admin/link.png",
    "vendor/assets/images/admin/loading.gif",
    "vendor/assets/images/admin/locked.png",
    "vendor/assets/images/admin/mail.png",
    "vendor/assets/images/admin/map.png",
    "vendor/assets/images/admin/menu_disabled_icon.png",
    "vendor/assets/images/admin/menu_enabled_icon.png",
    "vendor/assets/images/admin/message.png",
    "vendor/assets/images/admin/milestone.png",
    "vendor/assets/images/admin/milestone_late.png",
    "vendor/assets/images/admin/mobile.png",
    "vendor/assets/images/admin/move.png",
    "vendor/assets/images/admin/news.png",
    "vendor/assets/images/admin/nuke.png",
    "vendor/assets/images/admin/openid-bg.gif",
    "vendor/assets/images/admin/package.png",
    "vendor/assets/images/admin/page_go.png",
    "vendor/assets/images/admin/plugin.png",
    "vendor/assets/images/admin/projects.png",
    "vendor/assets/images/admin/reload.png",
    "vendor/assets/images/admin/report.png",
    "vendor/assets/images/admin/save.png",
    "vendor/assets/images/admin/search.png",
    "vendor/assets/images/admin/server_key.png",
    "vendor/assets/images/admin/slide_show.png",
    "vendor/assets/images/admin/sort_asc.png",
    "vendor/assets/images/admin/sort_desc.png",
    "vendor/assets/images/admin/stats.png",
    "vendor/assets/images/admin/table_multiple.png",
    "vendor/assets/images/admin/task_done.png",
    "vendor/assets/images/admin/task_late.png",
    "vendor/assets/images/admin/task_parent_end.png",
    "vendor/assets/images/admin/task_todo.png",
    "vendor/assets/images/admin/text_list_bullets.png",
    "vendor/assets/images/admin/textfield.png",
    "vendor/assets/images/admin/ticket.png",
    "vendor/assets/images/admin/ticket_checked.png",
    "vendor/assets/images/admin/ticket_edit.png",
    "vendor/assets/images/admin/ticket_go.png",
    "vendor/assets/images/admin/ticket_note.png",
    "vendor/assets/images/admin/time.png",
    "vendor/assets/images/admin/time_add.png",
    "vendor/assets/images/admin/toggle_check.png",
    "vendor/assets/images/admin/true.png",
    "vendor/assets/images/admin/unlock.png",
    "vendor/assets/images/admin/user.png",
    "vendor/assets/images/admin/user_go.png",
    "vendor/assets/images/admin/view.png",
    "vendor/assets/images/admin/warning.png",
    "vendor/assets/images/admin/wiki_edit.png",
    "vendor/assets/images/admin/world.png",
    "vendor/assets/images/admin/zoom_in.png",
    "vendor/assets/images/admin/zoom_in.png.old",
    "vendor/assets/images/admin/zoom_in_g.png",
    "vendor/assets/images/admin/zoom_out.png",
    "vendor/assets/images/admin/zoom_out_g.png",
    "vendor/assets/javascripts/admin_interface.jquery.js",
    "vendor/assets/stylesheets/admin_interface.css.scss"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A Rails admin interface generator. Theme stolen from Redmine."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<admin_interface>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<geminabox>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_runtime_dependency(%q<ransack>, [">= 0"])
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.2.2"])
      s.add_runtime_dependency(%q<simple_form>, [">= 0"])
      s.add_runtime_dependency(%q<country_code_select>, [">= 0"])
      s.add_runtime_dependency(%q<dynamic_form>, [">= 0"])
    else
      s.add_dependency(%q<admin_interface>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<geminabox>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_dependency(%q<ransack>, [">= 0"])
      s.add_dependency(%q<inherited_resources>, [">= 1.2.2"])
      s.add_dependency(%q<simple_form>, [">= 0"])
      s.add_dependency(%q<country_code_select>, [">= 0"])
      s.add_dependency(%q<dynamic_form>, [">= 0"])
    end
  else
    s.add_dependency(%q<admin_interface>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<geminabox>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0.12.4"])
    s.add_dependency(%q<ransack>, [">= 0"])
    s.add_dependency(%q<inherited_resources>, [">= 1.2.2"])
    s.add_dependency(%q<simple_form>, [">= 0"])
    s.add_dependency(%q<country_code_select>, [">= 0"])
    s.add_dependency(%q<dynamic_form>, [">= 0"])
  end
end

