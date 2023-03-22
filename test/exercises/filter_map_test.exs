defmodule ElixirCourse.FilterMapTest do
  use ExUnit.Case
  alias ElixirCourse.FilterMapExercise

  @moduletag :skip

  describe "FilterMap Exercise" do
    test "filter_map" do
      assert FilterMapExercise.filter_map(&is_not_nil_even/1, []) == []
      assert FilterMapExercise.filter_map(&is_not_nil_even/1, [-1, 1, 2, 4]) == [2, 4]
      assert FilterMapExercise.filter_map(&square_positive/1, [-1, 0, 1, 2, 4]) == [0, 1, 4, 16]
    end
  end

  def is_not_nil_even(nil), do: {:error, 0}

  def is_not_nil_even(value) do
    if not Integer.is_even(value) do
      {:ok, value}
    else
      {:error, 0}
    end
  end

  def square_positive(value) do
    if value >= 0 do
      {:ok, value * value}
    else
      {:error, 0}
    end
  end
end
