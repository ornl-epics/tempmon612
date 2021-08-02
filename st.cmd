#!../../bin/linux-x86_64/tm612

## You may have to change tm612 to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/tm612.dbd"
tm612_registerRecordDeviceDriver pdbbase


# Define protocol path
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TEMPMON612)/protocol")




drvAsynIPPortConfigure ("tm1","10.112.63.181:4001",0,0,0)



#dbLoadRecords("db/xxx.db","user=zmaHost")
dbLoadRecords(db/tempmon612.db)



cd "${TOP}/iocBoot/${IOC}"
iocInit

