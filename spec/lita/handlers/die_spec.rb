require 'spec_helper'

describe Lita::Handlers::Die, lita_handler: true do
  it{ routes_command('roll me one, two').to :roll }

  describe '#roll' do
    let(:reply){ replies.last }

    it 'replies with a magically selected choice' do
      choices = ['first thing', 'second thing']

      send_command("roll me #{choices.join(', ')}")

      # http://www.rubular.com/r/h6eLkB0ZwY
      pick = reply.scan(/"(.+)"/).flatten.first

      expect(choices).to include(pick)
    end
  end
end
