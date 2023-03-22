defmodule ElixirCourse.EnumExerciseTest do
  use ExUnit.Case
  alias ElixirCourse.EnumExercise

  @moduletag :skip
  @movies_headers [
    "name",
    "rating_kinopoisk",
    "rating_imdb",
    "genres",
    "year",
    "access_level",
    "country"
  ]

  describe "Enum Exercise" do
    setup do
      list_of_movies =
        File.stream!("test/fixtures/movies.csv")
        |> CSV.decode(headers: @movies_headers)
        |> Enum.reduce([], fn {:ok, movie}, acc -> [movie | acc] end)

      {:ok, list_of_movies: list_of_movies}
    end

    test "rating", %{list_of_movies: list_of_movies} do
      average_rating = EnumExercise.rating(list_of_movies)
      assert Float.round(average_rating, 15) == 6.809410385259628
    end

    test "chars_count", %{list_of_movies: list_of_movies} do
      chars_count = EnumExercise.chars_count(list_of_movies, 5)
      assert chars_count == 3850

      chars_count = EnumExercise.chars_count(list_of_movies, 8.5)
      assert chars_count == 40

      chars_count = EnumExercise.chars_count(list_of_movies, 50)
      assert chars_count == 0
    end
  end
end
