use_bpm 64
use_synth :saw

define :measure35 do
  play :a4
  sleep 0.25
  play :f3
  sleep 0.25
  play :bb3
  sleep 0.25
  play :c4
  sleep 0.25
  play :e4
  sleep 0.25
  play :f4
  sleep 0.25
  play :e4
  sleep 0.25
  play :c4
  sleep 0.25
  play :bb3
  sleep 0.25
  play :f5
  sleep 0.25
end

live_loop :lastson do
  1.times do
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
    
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :a4
    sleep 0.5
    play :f5
    sleep 0.5
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
    
    with_synth :saw do
      measure35
    end
    
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :a4
    sleep 0.25
    play :f5
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
    
    
    measure35
    
    play :f3
    sleep 0.25
    play :bb3
    sleep 0.25
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
    play :e4
    sleep 0.25
    play :c4
    sleep 0.25
    play :bb3
    sleep 0.25
  end
  stop
end

sleep 2

live_loop :flying do
  1.times do
    sample :ambi_glass_hum, beat_stretch: 8, amp: 4
    sleep 8
  end
  stop
end

sleep 4

live_loop :march do
  1.times do
    sample :ambi_glass_rub, beat_stretch: 10, amp: 2
    sleep 10
  end
  stop
end
