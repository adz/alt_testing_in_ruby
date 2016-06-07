class Fizzbuzz
  def self.fizzbuzz(n)
  out = ''
  out << 'fizz' if n % 3 == 0
  out << 'buzz' if n % 5 == 0
  out << "#{n}" if out == ''
  out
  end
end

