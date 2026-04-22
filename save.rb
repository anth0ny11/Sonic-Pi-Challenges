use_bpm 90
use_synth :piano

#Fade In
amp_list = [0.5,1,2,3,3,3,3,3,]
i = 0

amp_list2 = [3,3,3,3,3,2,1,0.5,]
a = 0

maintheme = [
  "C:/Users/anthony_trejo/Downloads/Level Up (Minecraft Sound) - Sound Effect for editing.mp3",
  "C:/Users/anthony_trejo/Downloads/Audacity/Birds Sound .wav",
  "C:/Users/anthony_trejo/Downloads/Audacity/Sea Waves.wav",
]
maintheme2 = [1, 18, 50]

#Measure 12
define :show do
  live_loop :show do
    1.times do
      play [:c5, :d5, :a5]
      sleep 0.5
      play :c6
      sleep 0.5
      play [:c5, :d5, :a5]
      sleep 0.5
      play :c6
      sleep 0.5
      play [:c5, :d5, :a5]
      sleep 0.5
      play :c6
      sleep 0.5
      play [:c5, :d5, :a5]
      sleep 0.5
      play :c6
      sleep 0.5
    end
    stop
  end
  
  live_loop :show2 do
    1.times do
      play_pattern_timed [:bb2, :f3, :bb3, :f3], 1
    end
    stop
  end
end

#Measure 13
define :measure2 do
  live_loop :thirteen_melody do
    1.times do
      play [:c5, :d5, :g5]
      sleep 0.5
      play :bb6
      sleep 0.5
      play [:c5, :d5, :g5]
      sleep 0.5
      play :bb6
      sleep 0.5
      play [:c5, :d5, :g5]
      sleep 0.5
      play [:c6, :c5, :d5, :g5]
      sleep 0.5
      play :bb6
      sleep 0.5
    end
    stop
  end
end

#Function
define :measure579 do
  live_loop :top_melody do
    4.times do
      play :d5
      sleep 1
    end
    stop
  end
  
  live_loop :bottom_melody do
    4.times do
      play :bb2
      sleep 1
    end
    stop
  end
end

#Function
define :measure68 do
  live_loop :second_melody do
    4.times do
      play :c5
      sleep 1
    end
    stop
  end
  
  live_loop :buttom_melody do
    4.times do
      play :bb2
      sleep 1
    end
    stop
  end
end

#Fade In Intro And Start
live_loop :samples do
  3.times do |i|
    sample maintheme[i]
    sleep maintheme2[i]
  end
  stop
end

sleep 5

8.times do
  play :bb2, amp: amp_list[i]
  sleep 1
  i = i + 1
end

#Measure 5
measure579

sleep 4

#Measure 6
measure68

sleep 4

#Measure 7
measure579

sleep 4

#Measure 8
measure68

sleep 4

#Measure 9
measure579

sleep 4

#Measure 10
live_loop :ten do
  1.times do
    play :c5
    sleep 1
    play :c5
    sleep 1
    play :c5
    sleep 0.5
    play :g5
    sleep 0.5
    play :c5
    sleep 0.5
    play :g5
    sleep 0.5
  end
  stop
end

live_loop :tentwo_melody do
  4.times do
    play :bb2
    sleep 1
  end
  stop
end

sleep 4

#Measure 11
live_loop :eleven do
  1.times do
    play :d5
    sleep 0.5
    play :g5
    sleep 0.5
    play :d5
    sleep 0.5
    play :g5
    sleep 0.5
    play :d5
    sleep 0.5
    play :g5
    sleep 0.5
    play :d5
    sleep 1
  end
  stop
end

live_loop :eleventwo_melody do
  4.times do
    play :bb2
    sleep 1
  end
  stop
end

sleep 4

#Measure 12
live_loop :twelve do
  1.times do
    play :c5
    sleep 1
    play :c5
    sleep 1
    play :c5
    sleep 0.5
    play :c6
    sleep 0.5
    play :c5
    sleep 0.5
    play :c6
    sleep 0.5
  end
  stop
end

live_loop :twelvetwo_melody do
  4.times do
    play :bb2
    sleep 1
  end
  stop
end

sleep 4

#Measure 13
live_loop :top_melody do
  2.times do
    play :c5
    sleep 0.5
    play :f5
    sleep 0.5
    play :d5
    sleep 0.5
    play :c6
    sleep 0.5
    play :c5
    sleep 0.5
    play :f5
    sleep 0.5
    play :d5
    sleep 0.5
    play :c6
    sleep 0.5
  end
  stop
end

live_loop :bottom_melody do
  4.times do
    play :bb2
    sleep 1
  end
  stop
end

sleep 4

show
sleep 4

measure2
sleep 4

show
sleep 4

measure2
sleep 4

show
sleep 4

8.times do
  play :bb2, amp: amp_list[i]
  sleep 1
  a = a - 1
end

play :bb2, sustain: 12
