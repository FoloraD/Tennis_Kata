class Tennis

    def initialize
        @player_1_score = 0
    end
   
    def score(points)

        converter = {:"0" => 0, :"1" => 15, :"2" => 30, :"3" => 40} 
        h_points = (points.to_s).to_sym # turn points from number to string than to symbol.
        return converter[h_points] #returns value for points key 

    end 

    def player1
        #loop for each point and add to score
        return @player_1_score
    end

    def player1_wins_point(bool)
        if bool == true
            @player_1_score += 1
        else 
            @player_1_score += 0
        end
    end

end    