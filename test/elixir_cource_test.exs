defmodule ElixirCourceTest do
  use ExUnit.Case
  doctest ElixirCource

  test "greets the world" do
    assert ElixirCource.hello() == :world
  end
end
