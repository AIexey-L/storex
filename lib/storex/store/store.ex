defmodule Storex.Store do
  alias Storex.Repo
  alias Storex.Store.Book

  def list_books() do
    Repo.all(Book)
    # [
    #   %{
    #     id: "1",
    #     title: "My first book",
    #     description: "My first story",
    #     price: "15.9",
    #     image_url: "http://www.phoenixforrailsdevelopers.com/books/1.png"
    #     },
    #
    #   %{
    #     id: "2",
    #     title: "My second book",
    #     description: "My first story",
    #     price: "25.9",
    #     image_url: "http://www.phoenixforrailsdevelopers.com/books/2.png"
    #     },
    #
    #   %{
    #     id: "3",
    #     title: "My third book",
    #     description: "My first story",
    #     price: "35.9",
    #     image_url: "http://www.phoenixforrailsdevelopers.com/books/3.png"
    #     },
    #
    #     %{
    #       id: "4",
    #       title: "My fourth book",
    #       description: "My first story",
    #       price: "45.9",
    #       image_url: "http://www.phoenixforrailsdevelopers.com/books/4.png"
    #     }
    #   ]
    end

  def get_book(id) do
    Repo.get(Book, id)
    # Enum.find(list_books(), fn(book) -> book.id == id end)
  end

  def create_book(attrs) do
    %Book{}
    |> Book.changeset(attrs)
    |> Repo.insert
  end

end
