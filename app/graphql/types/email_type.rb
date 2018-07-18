class Types::EmailType < Types::BaseObject
  field :id, ID, null: false
  field :from, String, null: true
  field :to, String, null: false
  field :subject, String, null: true
  field :data, String, null: true
  field :text_part, String, null: true
  field :html_part, String, null: true
  field :created_at, Types::DateTimeType, null: false

  field :app, Types::AppType, null: true
  field :status, Types::StatusType, null: false
  field :opened, Boolean, null: false
  def opened
    object.opened?
  end
  field :clicked, Boolean, null: false
  def clicked
    object.clicked?
  end
end

# TODO: Fields that need to be included based on what's shown in the
# admin interface for the delivery#show action

# Delivery:
# subject
# status
# opened?
# clicked?
# id
# app
# from
# to
# created_at
# postfix_log_lines
# open_events
# click_events
# # TODO: Group these together
# content_available?
# html_part
# text_part
# data
#
# App:
# id
# name
#
# PostfixLogLine:
# time
# dsn
# extended_status
#
# OpenEvent:
# created_at
# ua_family
# ua_version
# os_family
# os_version
# ip
#
# ClickEvent:
# created_at
# url
# calculate_ua_family
# calculate_ua_version
# calculate_os_family
# calculate_os_version
# ip
#
# Configuration:
# max_no_emails_to_store