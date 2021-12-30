import os
import numpy as np
import cv2
import natsort
import xlwt
from global_histogram_stretching import stretching
from hsvStretching import HSVStretching
from sceneRadiance import sceneRadianceRGB
from matplotlib import pyplot as plt

np.seterr(over='ignore')
if __name__ == '__main__':
    pass

folder = "G:/Submissions and Materials/Sem-5/Image Processing/Project/Underwater Image Enhancement"   #Path to the folder containing the project

path = folder + "/Dataset"
files = os.listdir(path)
files =  natsort.natsorted(files)

for i in range(len(files)):
    file = files[i]
    filepath = path + "/" + file
    prefix = file.split('.')[0]
    if os.path.isfile(filepath):
        print('********    file   ********',file)
        img = cv2.imread(folder + '/Dataset/' + file)
        img = stretching(img)
        sceneRadiance = sceneRadianceRGB(img)
        sceneRadiance = HSVStretching(sceneRadiance)
        sceneRadiance = sceneRadianceRGB(sceneRadiance)
        cv2.imwrite('OutputImages/' + prefix + '_ICM.jpg', sceneRadiance)
