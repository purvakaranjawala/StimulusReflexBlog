# frozen_string_literal: true

class CounterReflex < ApplicationReflex
  def increment
    @count = element.dataset[:count].to_i + element.dataset[:step].to_i
  end

  def increment_nothing_morph
    morph :nothing
    CounterJob.perform_now
  end

  def remove
    cable_ready.remove(selector: 'button').broadcast
    morph :nothing
  end
end
