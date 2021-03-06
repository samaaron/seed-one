in_thread do
  loop do
    sample :drum_cymbal_closed, rate: 0.9, amp: 0.4
    sleep 0.25
  end
end

in_thread do
  loop do
    sample :drum_bass_hard
    sleep 1.25
    sample :drum_bass_hard
    sleep 0.75
  end
end

in_thread do
  use_synth :tb303
  with_fx :echo do
    loop do
      play_pattern_timed [50, 52, 55, 59], [1, 0.5], amp: 0.3
      sleep 3
    end
  end
end
