#!/bin/sh
# Extract prebuilt libraries (from a working device) needed for the U8150

mkdir -p ../../../vendor/huawei/ideos/proprietary

DIRS="
bin
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/huawei/ideos/proprietary/$DIR
done

FILES="
bin/akmd2
bin/load_oemlogo
bin/hci_qcomm_init
bin/modempre
bin/oem_rpc_svc
bin/qmuxd
bin/rild

lib/hw/lights.msm7k.so
lib/hw/gralloc.msm7k.so
lib/hw/sensors.ideos.so
lib/hw/gps.ideos.so

lib/libaudioeq.so
lib/libcamera.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libhwrpc.so
lib/libmm-adspsvc.so
lib/libmmgsdilib.so
lib/libmmipl.so
lib/libmmjpeg.so
lib/libmm-omxcore.so
lib/libmmprocess.so
lib/libnetutils.so
lib/libnv.so
lib/liboem_rapi.so
lib/libOmxCore.so
lib/libOmxH264Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxVidEnc.so
lib/libOmxWmvDec.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqcamera.so
lib/libqmi.so
lib/libqueue.so
lib/libril.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libwms.so
lib/libwmsts.so

lib/libauth.so
lib/libcommondefs.so
lib/libfotaagent.so
lib/libfotatrigger.so
lib/libhwfotaadapter.so
lib/libhwnv.so
lib/libicudata.so
lib/libjni_pinyinime.so
lib/libloc_api-rpc.so
lib/libloc_api.so
lib/libmmitest.so
lib/libmvs.so
lib/libomx_aacdec_sharedlibrary.so
lib/libomx_amrdec_sharedlibrary.so
lib/libomx_amrenc_sharedlibrary.so
lib/libomx_avcdec_sharedlibrary.so
lib/libomx_m4vdec_sharedlibrary.so
lib/libomx_mp3dec_sharedlibrary.so
lib/libomx_sharedlibrary_qc.so
lib/libomx_sharedlibrary.so
lib/libopencore_author.so
lib/libopencore_common.so
lib/libopencore_downloadreg.so
lib/libopencore_download.so
lib/libopencorehw.so
lib/libopencore_mp4localreg.so
lib/libopencore_mp4local.so
lib/libopencore_net_support.so
lib/libopencore_player.so
lib/libopencore_rtspreg.so
lib/libopencore_rtsp.so
lib/libpdapi.so
lib/libpdsm_atl.so
lib/libping_mdm.so
lib/libprojectmenu.so
lib/libreference-cdma-sms.so
lib/libreference-ril.so
lib/libsnd.so
lib/libtouchpal.so
lib/libuim.so
lib/libwbxml_jni.so
lib/libwnndict.so
lib/libxml2wbxml.so
"

for FILE in $FILES; do
    adb pull system/$FILE ../../../vendor/huawei/ideos/proprietary/$FILE
done

chmod 755 ../../../vendor/huawei/ideos/proprietary/bin/* 
