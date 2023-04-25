defmodule ElixirCourse.ListExercise do
  @moduledoc """
  Модуль для практики по работе со списками.
  При выполнении задач запрещено использовать модули List и Enum
  """

  @doc """
    Заменить все положительные элементы целочисленного списка на максимальное значение
    элементов списка.
    :param input_list: Исходный список
    :return: Список с замененными элементами
  """
  def replace([]), do: []
  def replace([head]), do: [head]
  def replace(input_list) do
    max = find_max(input_list)

    replace_positive(input_list, max)
  end

  def find_max([head]), do: head
  def find_max([head | [next | tail]]) when head > next, do: find_max([head | tail])
  def find_max([_head | tail]), do: find_max(tail)

  def replace_positive(list, n) do
    for x <- list do
      if x <= 0 do
        x
      else
        n
      end
    end
  end

  @doc """
    Реализовать двоичный поиск
    Функция должна возвращать индекс элемента
    Если элемента нет в списке, функция должна возвращать -1
    :param input_list: Исходный список
    :param query: Искомый элемент
    :return: Номер элемента
  """
  def search([], _query), do: -1
  def search([head], query) when head == query, do: 0
  def search(input_list, query) do
    length = length(input_list)
    binary_search(input_list, query, 0, length)
  end

  def binary_search(list, query, min, max) do
    mid_index = div((max + min), 2)
    mid_elem = get_elem(list, mid_index)

    cond do
      query < mid_elem && min != max ->
        binary_search(list, query, min, mid_index - 1)
      query > mid_elem && min != max ->
        binary_search(list, query, mid_index + 1, max)
      query == mid_elem ->
        mid_index
      true ->
        -1
    end
  end

  def get_elem([head | _tail], index, current_index \\ 0) when index == current_index, do: head
  def get_elem([_head | tail], index, current_index) when index != current_index, do: get_elem(tail, index, current_index + 1)
  def get_elem([], _index, _current_index), do: nil
end
