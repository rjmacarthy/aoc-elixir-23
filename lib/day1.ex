defmodule Day1 do
  use Application

  def start(_type, _args) do
    Day1.part1()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def read_file(path) do
    path = Path.join(__DIR__, path)
    {:ok, content} = File.read(path)
    content
  end

  def part1 do
    String.split(read_file("../input/day1.example.txt"), "\n")
      |> Enum.map(&String.replace(&1, ~r/\D/, ""))
      |> Enum.map(&String.split(&1, "", trim: true))
      |> Enum.map(&String.to_integer("#{List.first(&1)}#{List.last(&1)}"))
      |> Enum.sum()
  end
end
