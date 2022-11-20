from keras.models import Sequential, load_model
import numpy as np
saveModels = {}

saveModels['cnn_lstm'] = load_model('cnn_lstm_model')

data = np.array([[0.09885564],
       [0.11447139],
       [0.11299512],
       [0.17417231],
       [0.17685213],
       [0.18666205],
       [0.18478946],
       [0.13991405],
       [0.1509311 ],
       [0.15048044],
       [0.1289131 ],
       [0.0889733 ],
       [0.11524038],
       [0.02826286],
       [0.06425134],
       [0.0399975 ],
       [0.03702661],
       [0.04259548],
       [0.04637781],
       [0.05825594],
       [0.04856674],
       [0.03998113],
       [0.02868938],
       [0.06713235]])
results = saveModels['cnn_lstm'].predict(data.reshape(1,24,1)).reshape(-1)
print(results)
