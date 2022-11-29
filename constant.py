stationCoordinates = {
  1: {
    'lat': 10.8698916,
    'long': 106.7961946,
  },
  2: {
    'lat': 10.7407503,
    'long': 106.6170358,
  },
  3: {
    'lat': 10.8200586,
    'long': 106.6295503,
  },
  4: {
    'lat': 10.8156797,
    'long': 106.7174747,
  },
  5: {
    'lat': 10.7763798,
    'long': 106.687783,
  }, 
  6: {
    'lat': 10.7808049,
    'long': 106.6594389,
  },
}

stationFeatures = {
  1: {
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  2: {
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  3: {
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  4: {
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  5: {
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  6: {
    'pm2_5': ['pm2_5', 'pm2_5'],
    'co': ['pm2_5', 'pm2_5']
    },
}

choosenModel = {
  1: {
    'pm2_5': 'ann'
    },
  2: {
    'pm2_5': 'ann'
    },
  3: {
    'pm2_5': 'ann'
    },
  4: {
    'pm2_5': 'ann'
    },
  5: {
    'pm2_5': 'ann'
    },
  6: {
    'pm2_5': 'lstm_lstm_model',
    'co': 'rnn_model'
    },
}

lag=24

timeStep=4

pollutantFactorList = ['pm2_5', 'co']