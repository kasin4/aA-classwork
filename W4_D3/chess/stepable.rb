module Stepable
    def moves
        move_diffs.map do |diff|
            [diff[0] + position[0], diff[1] + position[1]]
        end
    end

    private

    def move_diffs
        raise "Calling default move_diffs on Stepable module!"
    end
end
