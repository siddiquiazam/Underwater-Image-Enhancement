
import os
import numpy as np
import cv2
import natsort
import xlwt
from skimage import exposure

from sceneRadianceHE import RecoverHE

np.seterr(over='ignore')
if __name__ == '__main__':
    pass
folder = "G:/Submissions and Materials/Sem-5/Image Processing/Project/Underwater Image Enhancement"  #Path to the folder containing the project

path = folder + "/InputImages"
files = os.listdir(path)
files =  natsort.natsorted(files)

for i in range(len(files)):
    file = files[i]
    filepath = path + "/" + file
    prefix = file.split('.')[0]
    if os.path.isfile(filepath):
        print('********    file   ********',file)
        img = cv2.imread(folder + '/InputImages/' + file)
        sceneRadiance = RecoverHE(img)
        cv2.imwrite('OutputImages/' + prefix + '_HE.jpg', sceneRadiance)
