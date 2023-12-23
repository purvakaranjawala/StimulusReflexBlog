class CounterJob < ApplicationJob
  include CableReady::Broadcaster
  queue_as :default

  def perform
    cable_ready["increment_nothing_morph"].text_content(selector: "#increment_nothing_morph", text: Rails.cache.increment("increment_nothing_morph")).broadcast
  end
end
