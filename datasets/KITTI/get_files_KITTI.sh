#!/bin/bash
# -----------------------------------------------------------------#
# script, which downloads the multi-sensor autonomous car data     #
# from the KITTI Dataset                                           #
# (https://www.cvlibs.net/datasets/kitti/eval_tracking.php)        #
# -----------------------------------------------------------------#

echo "downloading KITTI object tracking dataset ..."

cd ../

wget --show-progress \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_image_2.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_image_3.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_velodyne.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_oxts.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_calib.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_label_2.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_det_2_lsvm.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/data_tracking_det_2_regionlets.zip \
  https://s3.eu-central-1.amazonaws.com/avg-kitti/devkit_tracking.zip -P $1 \

echo "done!"