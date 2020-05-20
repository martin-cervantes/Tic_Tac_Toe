#!/usr/bin/env ruby

# frozen_string_literal: true

#
# Tic Tac Toe Player
#
class Player
  attr_accessor :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end
end
