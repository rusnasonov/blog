all: build upload
	
build:
	hugo

upload:
	aws s3 --endpoint-url=https://storage.yandexcloud.net cp --recursive ./output s3://rusnasonov.com/

