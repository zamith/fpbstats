class PlayersController < ApplicationController
  respond_to :json

  def show
    respond_with(
      id: 1,
      name: 'Pedro Pinto',
      ppg: '12.0',
      rpg: '5.0',
      apg: '7.0',
      picture: 'http://www.fpb.pt/fpb_zone/sa/img/ATL/85854.jpg',
      team: {
        name: 'Vitória SC',
        ppg: '75.3',
        apg: '12.1',
        rpg: '32.6'
      }
    )
  end
end
