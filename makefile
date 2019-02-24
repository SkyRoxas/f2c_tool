bundle:
	yarn build
upload: bundle
	aws s3 sync ./dist s3://bf-run_for_dream --delete
deploy: bundle upload
