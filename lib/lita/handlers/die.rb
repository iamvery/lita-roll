require 'lita'

module Lita
  module Handlers
    class Die < Handler

      # http://www.rubular.com/r/8UdvqUvTtE
      route(/(\broll me )?([^,]+)/i, :roll, command: true, help: { 'roll me' => 'roll the die, fate takes over' })

      def roll(response)
        choices = response.matches.collect{ |arr| arr[1] }
        response.reply('Performing complex, mathematical randomization...')
        response.reply(%Q(The result: "#{choices.sample.strip}"))
      end
    end

    Lita.register_handler(Die)
  end
end
