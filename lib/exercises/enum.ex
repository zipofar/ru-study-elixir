defmodule ElixirCource.EnumExercise do
  @moduledoc """
  Модуль для практики по понимаю модуля Enum.
  """

  @doc """
    !!Задание нужно решить используя Enum!!
    Посчитать средний рейтинг фильмов (rating_kinopoisk) у которых две или больше стран.
    Фильмы у которых рейтинг не задан или равен 0 не учитывать в расчете среднего.
    :param list_of_movies: Список фильмов.
    Ключи словаря: name, rating_kinopoisk, rating_imdb, genres, year, access_level, country
    :return: Средний рейтинг фильмов у которых две или больше стран
  """
  def rating(list_of_movies) do
    :skip
  end

  @doc """
    !!Задание нужно решить используя Enum!!
    Посчитать количество букв 'и' в названиях всех фильмов с рейтингом (rating_kinopoisk) больше
    или равным заданному значению
    :param list_of_movies: Список фильмов
    Ключи словаря: name, rating_kinopoisk, rating_imdb, genres, year, access_level, country
    :param rating: Заданный рейтинг
    :return: Количество букв 'и' в названиях всех фильмов с рейтингом больше
    или равным заданному значению
  """
  def chars_count(list_of_movies, rating) do
    :skip
  end
end
