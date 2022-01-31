#!/bin/bash

cd public
aws s3 sync . s3://ric.squarecows.com/
aws cloudfront create-invalidation --distribution-id EN6JD78F37IUP --paths "/*"
cd ../
