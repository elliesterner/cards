defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_dec makes 20 cards" do
    deck_length = length(Cards.create_deck)
    # assert that deck is equal to 20
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    # refute deck being equal to shuffle
    refute deck == Cards.shuffle(deck)
  end

end
