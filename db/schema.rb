# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170526183855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: :cascade do |t|
    t.string   "name",       :index=>{:name=>"index_apps_on_name", :unique=>true, :using=>:btree}
    t.datetime "created_at", :null=>false
    t.datetime "updated_at", :null=>false
    t.string   "auth_token", :index=>{:name=>"index_apps_on_auth_token", :unique=>true, :using=>:btree}
  end

  create_table "email_lists", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null=>false
    t.datetime "updated_at",  :null=>false
    t.integer  "app_id",      :foreign_key=>{:references=>"apps", :name=>"fk_email_lists_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__email_lists_app_id", :using=>:btree}
  end

  create_table "campaign_product_leads", force: :cascade do |t|
    t.integer  "app_id",             :foreign_key=>{:references=>"apps", :name=>"fk_campaign_product_leads_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__campaign_product_leads_app_id", :using=>:btree}
    t.integer  "product_identifier"
    t.boolean  "sold",               :default=>false
    t.decimal  "sale_ammount",       :default=>"0.0"
    t.integer  "email_list_id",      :foreign_key=>{:references=>"email_lists", :name=>"fk_campaign_product_leads_email_list_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__campaign_product_leads_email_list_id", :using=>:btree}
    t.datetime "BuyDate"
    t.datetime "ClickDate"
    t.string   "Source"
  end

  create_table "hooks", force: :cascade do |t|
    t.text     "name"
    t.text     "identifier"
    t.datetime "created_at", :null=>false
    t.datetime "updated_at", :null=>false
  end

  create_table "subscribers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "app_id",        :foreign_key=>{:references=>"apps", :name=>"fk_subscribers_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__subscribers_app_id", :using=>:btree}
    t.datetime "created_at",    :null=>false
    t.datetime "updated_at",    :null=>false
  end

  create_table "captured_hooks", force: :cascade do |t|
    t.integer  "hook_id",       :foreign_key=>{:references=>"hooks", :name=>"fk_captured_hooks_hook_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__captured_hooks_hook_id", :using=>:btree}
    t.integer  "subscriber_id", :foreign_key=>{:references=>"subscribers", :name=>"fk_captured_hooks_subscriber_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__captured_hooks_subscriber_id", :using=>:btree}
    t.integer  "app_id",        :foreign_key=>{:references=>"apps", :name=>"fk_captured_hooks_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__captured_hooks_app_id", :using=>:btree}
    t.datetime "created_at",    :null=>false
    t.datetime "updated_at",    :null=>false
  end

  create_table "email_list_subscribers", force: :cascade do |t|
    t.integer  "app_id",        :foreign_key=>{:references=>"apps", :name=>"fk_email_list_subscribers_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__email_list_subscribers_app_id", :using=>:btree}
    t.integer  "subscriber_id", :foreign_key=>{:references=>"subscribers", :name=>"fk_email_list_subscribers_subscriber_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__email_list_subscribers_subscriber_id", :using=>:btree}
    t.integer  "email_list_id", :foreign_key=>{:references=>"email_lists", :name=>"fk_email_list_subscribers_email_list_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__email_list_subscribers_email_list_id", :using=>:btree}
    t.datetime "created_at",    :null=>false
    t.datetime "updated_at",    :null=>false
  end

  create_table "email_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "email_subject"
    t.text     "email_content"
    t.integer  "app_id",        :foreign_key=>{:references=>"apps", :name=>"fk_email_templates_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__email_templates_app_id", :using=>:btree}
    t.boolean  "button"
    t.string   "button_text"
    t.string   "button_url"
    t.string   "unsubscribe"
    t.datetime "created_at",    :null=>false
    t.datetime "updated_at",    :null=>false
  end

  create_table "triggers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "num_triggered"
    t.integer  "num_emails_sent"
    t.datetime "created_at",      :null=>false
    t.datetime "updated_at",      :null=>false
    t.integer  "hook_id",         :foreign_key=>{:references=>"hooks", :name=>"fk_triggers_hook_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__triggers_hook_id", :using=>:btree}
    t.integer  "app_id",          :foreign_key=>{:references=>"apps", :name=>"fk_triggers_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__triggers_app_id", :using=>:btree}
  end

  create_table "funnels", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "num_emails_sent"
    t.decimal  "num_revenue"
    t.datetime "created_at",      :null=>false
    t.datetime "updated_at",      :null=>false
    t.integer  "app_id",          :foreign_key=>{:references=>"apps", :name=>"fk_funnels_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__funnels_app_id", :using=>:btree}
    t.integer  "trigger_id",      :foreign_key=>{:references=>"triggers", :name=>"fk_funnels_trigger_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__funnels_trigger_id", :using=>:btree}
    t.integer  "email_list_id",   :foreign_key=>{:references=>"email_lists", :name=>"fk_funnels_email_list_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__funnels_email_list_id", :using=>:btree}
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "name"
    t.integer  "top"
    t.integer  "left"
    t.integer  "num_emails"
    t.integer  "num_emails_sent"
    t.integer  "num_emails_opened"
    t.integer  "num_emails_clicked"
    t.decimal  "num_revenue"
    t.integer  "delay_time"
    t.datetime "created_at",         :null=>false
    t.datetime "updated_at",         :null=>false
    t.integer  "app_id",             :foreign_key=>{:references=>"apps", :name=>"fk_nodes_app_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__nodes_app_id", :using=>:btree}
    t.integer  "funnel_id",          :foreign_key=>{:references=>"funnels", :name=>"fk_nodes_funnel_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__nodes_funnel_id", :using=>:btree}
    t.integer  "email_template_id",  :foreign_key=>{:references=>"email_templates", :name=>"fk_nodes_email_template_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__nodes_email_template_id", :using=>:btree}
  end

  create_table "links", force: :cascade do |t|
    t.datetime "created_at",   :null=>false
    t.datetime "updated_at",   :null=>false
    t.integer  "start_link"
    t.integer  "funnel_id",    :foreign_key=>{:references=>"funnels", :name=>"fk_links_funnel_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__links_funnel_id", :using=>:btree}
    t.integer  "from_node_id", :foreign_key=>{:references=>"nodes", :name=>"fk_links_from_node_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__links_from_node_id", :using=>:btree}
    t.integer  "to_node_id",   :foreign_key=>{:references=>"nodes", :name=>"fk_links_to_node_id", :on_update=>:no_action, :on_delete=>:no_action}, :index=>{:name=>"fk__links_to_node_id", :using=>:btree}
  end

  create_table "mail_funnel_server_configs", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", :null=>false
    t.datetime "updated_at", :null=>false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", :null=>false, :index=>{:name=>"index_shops_on_shopify_domain", :unique=>true, :using=>:btree}
    t.string   "shopify_token",  :null=>false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
