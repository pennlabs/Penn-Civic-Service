module UsersHelper

    def to_month (month)
        a = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
        a[month.to_i - 1]
    end

end
