require 'lita'

module Lita
  module Handlers
    class Die < Handler

      # http://www.rubular.com/r/7w0BXzS80a
      route(/\broll me (.+)/i, :roll, command: true, help: { 'roll me' => 'roll the die, fate takes over' })

      def roll(response)
        choices = response.matches.flatten.first.split(',')
        response.reply('Performing complex, mathematical randomization...')
        response.reply(%Q(The result: "#{choices.sample.strip}"))
      end
    end

    Lita.register_handler(Die)
  end
end
