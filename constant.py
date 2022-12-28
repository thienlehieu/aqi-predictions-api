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
    'tsp': ['pm2_5'],
    'pm2_5': ['pm2_5'],
    'co': ['co']
    },
  2: {
    'tsp': ['pm2_5'],
    'pm2_5': ['pm2_5'],
    'o3': ['o3'],
    'no2': ['no2']
    },
  3: {
    'pm2_5': ['pm2_5'],
    'o3': ['o3'],
    'no2': ['no2']
    },
  4: {
    'tsp': ['pm2_5','pm2_5'],
    'pm2_5': ['pm2_5', 'pm2_5'],
    'o3': ['o3'],
    'no2': ['no2']
    },
  5: {
    'tsp': ['pm2_5', 'pm2_5'],
    'pm2_5': ['pm2_5'],
    'co': ['co'],
    'no2': ['no2']
    },
  6: {
    'tsp': ['pm2_5'],
    'pm2_5': ['pm2_5', 'pm2_5'],
    'o3': ['o3'],
    'no2': ['no2']
    },
}

choosenModel = {
  1: {
    'pm2_5': 'rnn_model',
    'tsp': 'lstm_lstm_model',
    'co': 'cnn_lstm_model'
    },
  2: {
    'pm2_5': 'rnn_model',
    'tsp': 'rnn_model',
    'o3': 'lstm_lstm_model',
    'no2': 'lstm_lstm_model',
    },
  3: {
    'pm2_5': 'rnn_model',
    'o3': 'lstm_lstm_model',
    'no2': 'rnn_model',
    },
  4: {
    'pm2_5': 'ann_model',
    'tsp': 'rnn_model',
    'o3': 'cnn_lstm_model',
    'no2': 'lstm_lstm_model',
    },
  5: {
    'pm2_5': 'lstm_lstm_model',
    'tsp': 'rnn_model',
    'co': 'cnn_lstm_model',
    'no2': 'cnn_lstm_model',
    },
  6: {
    'pm2_5': 'rnn_model',
    'tsp': 'lstm_lstm_model',
    'o3': 'lstm_lstm_model',
    'no2': 'ann_model',
    },
}

lag=24

timeStep=4

pollutantFactor = {
  1: ['tsp', 'pm2_5', 'co'],
  2: ['tsp', 'pm2_5', 'o3', 'no2'],
  3: ['pm2_5', 'o3', 'no2'],
  4: ['tsp', 'pm2_5', 'o3', 'no2'],
  5: ['tsp', 'pm2_5', 'co', 'no2'],
  6: ['tsp', 'pm2_5', 'o3', 'no2'],
}