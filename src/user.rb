class User
    def initialize (name)
        @name = name
    end

    def name
        @name
    end

    def setGender(value)
        if (value != "Female" && value != "Male")
            @gender = ""
        else
            @gender = value
        end
        return @gender
    end

    def gender 
        @gender
    end
end