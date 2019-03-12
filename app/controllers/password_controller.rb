class PasswordController < ApplicationController
    def check
        cookies.signed[:test] = "test"
        @pass_check = cookies.signed[:test]

        if params.has_key?(:userid) && !params[:userid].strip.empty?
            @id = params[:userid]
        end
        if params.has_key?(:password) && !params[:password].strip.empty?
            cookies.signed[:password] = params[:password]
            # @password = params[:password]
            @password = cookies.signed[:password]
        end

        if (!@id.nil? && !@password.nil?)
            if @pass_check == @password
                @result = 'Your password is too basic'
            end

            # if (@password.length > 5)
            #     @result = "Good Entry"
            # else
            #     @result = "Password must be at least 5 characters long"
            # end
        end
    end
end
