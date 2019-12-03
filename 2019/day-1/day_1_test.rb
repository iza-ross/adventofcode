require 'minitest/autorun'
require_relative 'day_1'

class Day1Test < Minitest::Test
  def test_example_1_part_1
    spaceship = Spaceship.new(12)

    assert_equal(2, spaceship.required_fuel)
  end

  def test_example_2_part_1
    spaceship = Spaceship.new(14)

    assert_equal(2, spaceship.required_fuel)
  end

  def test_example_3_part_1
    spaceship = Spaceship.new(1969)

    assert_equal(654, spaceship.required_fuel)
  end

  def test_example_4_part_1
    spaceship = Spaceship.new(100756)

    assert_equal(33583, spaceship.required_fuel)
  end

  def test_with_input_part_1
    input = <<~TXT
    12
    14
    1969
    100756
    TXT
    day = Day1.new(input)

    assert_equal(34241, day.output)
  end

  def test_with_real_input_part_1
    input = <<~TXT
    113481
    140620
    123826
    86474
    71091
    126880
    103784
    140154
    124024
    54281
    80810
    109441
    68828
    144207
    99151
    136876
    99398
    138555
    118619
    133215
    139302
    137780
    136649
    83358
    63027
    75067
    73974
    90158
    94691
    86847
    61466
    81184
    86043
    119923
    116576
    131380
    102136
    143364
    124421
    123141
    138131
    73274
    84598
    61410
    67240
    136186
    63878
    135804
    73599
    84526
    116178
    114587
    58606
    79162
    124031
    120329
    61270
    89887
    54859
    67618
    96669
    56796
    55725
    96105
    68833
    52417
    72249
    53930
    139995
    86217
    131618
    137145
    54944
    76456
    82141
    69754
    102656
    57461
    108747
    79510
    105715
    98046
    116903
    139339
    127451
    135374
    88468
    69524
    76112
    110928
    99160
    137229
    121433
    65951
    56267
    117209
    61358
    73659
    69633
    149274
    TXT
    day = Day1.new(input)

    assert_equal(3262358, day.output)
  end

  def test_example_1_part_2
    spaceship = Spaceship.new(14)

    assert_equal(2, spaceship.required_fuel_part_2)
  end

  def test_example_2_part_2
    spaceship = Spaceship.new(1969)

    assert_equal(966, spaceship.required_fuel_part_2)
  end

  def test_example_3_part_2
    spaceship = Spaceship.new(100756)

    assert_equal(50346, spaceship.required_fuel_part_2)
  end

  def test_with_real_input_part_2
    input = <<~TXT
    113481
    140620
    123826
    86474
    71091
    126880
    103784
    140154
    124024
    54281
    80810
    109441
    68828
    144207
    99151
    136876
    99398
    138555
    118619
    133215
    139302
    137780
    136649
    83358
    63027
    75067
    73974
    90158
    94691
    86847
    61466
    81184
    86043
    119923
    116576
    131380
    102136
    143364
    124421
    123141
    138131
    73274
    84598
    61410
    67240
    136186
    63878
    135804
    73599
    84526
    116178
    114587
    58606
    79162
    124031
    120329
    61270
    89887
    54859
    67618
    96669
    56796
    55725
    96105
    68833
    52417
    72249
    53930
    139995
    86217
    131618
    137145
    54944
    76456
    82141
    69754
    102656
    57461
    108747
    79510
    105715
    98046
    116903
    139339
    127451
    135374
    88468
    69524
    76112
    110928
    99160
    137229
    121433
    65951
    56267
    117209
    61358
    73659
    69633
    149274
    TXT
    day = Day1.new(input)

    assert_equal(4890696, day.output_part_2)
  end
end


