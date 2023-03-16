defmodule ElixirCourse.ListExerciseTest do
  use ExUnit.Case
  alias ElixirCourse.ListExercise

  @moduletag :skip

  describe "List Exercise" do
    test "replace" do
      input_list = [3, 2, -8, 4, 100, -6, 7, 8, -99]
      replaced_list = ListExercise.replace(input_list)
      assert replaced_list == [100, 100, -8, 100, 100, -6, 100, 100, -99]

      input_list = [-1, -2, -3, -4]
      replaced_list = ListExercise.replace(input_list)
      assert replaced_list == [-1, -2, -3, -4]

      input_list = []
      replaced_list = ListExercise.replace(input_list)
      assert replaced_list == []
    end

    test "search" do
      assert ListExercise.search([1], 900) == -1
      assert ListExercise.search([1], 1) == 0
      assert ListExercise.search([], 900) == -1
      assert ListExercise.search([1, 4, 5, 7, 8, 9], 9) == 5
      assert ListExercise.search([1, 4, 5, 7, 8, 9], 1) == 0
      assert ListExercise.search([1, 4, 5, 7, 8, 9], 6) == -1

      input_list = Enum.map(0..1000, fn number -> number end)
      assert ListExercise.search(input_list, Enum.at(input_list, 999)) == 999
    end
  end
end
