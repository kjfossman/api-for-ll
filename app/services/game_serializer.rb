class GameSerializer 
    def initialize(game_object)
        @game = game_object
    end

    def to_serialized 
        options = {
            include: {
                home_team: {
                    only: [:name]
                },
                away_team: {
                    only: [:name]
                }
            },
            except: [:created_at, :updated_at]
        }
        @game.to_json(options)
    end
end
