defmodule ExampleTest do
  use ExUnit.Case
  doctest Day1

  test "passes part 1" do
    assert Day1.part1() == 142
  end
end
