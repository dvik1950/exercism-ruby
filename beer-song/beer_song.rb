class BeerSong

  def verses(n, m)
    arr = []
    n.downto(m) do |num|
      arr << verse(num)
      arr << "\n" unless num == m
    end
    arr .join()
  end

  def verse(n)
    if n == 0
      "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
    elsif n == 1
      "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"
    elsif n == 2
      "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
"
    else
      "#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n-1} bottles of beer on the wall.
"
  end
  end

end
