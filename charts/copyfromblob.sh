#!/bin/bash

wget "https://njechartrepo.blob.core.windows.net/charts/smackapi?sv=2017-04-17&ss=b&srt=sco&sp=rwdlac&se=2017-12-18T23:33:28Z&st=2017-12-18T15:33:28Z&spr=https&sig=Qv1DNVEWXeQbV%2FoJKor5IPogjMlm0uDum9%2BCpKfO%2FVM%3D" -O smackapi.tar.gz
wget "https://njechartrepo.blob.core.windows.net/charts/routes?sv=2017-04-17&ss=b&srt=sco&sp=rwdlac&se=2017-12-18T23:33:28Z&st=2017-12-18T15:33:28Z&spr=https&sig=Qv1DNVEWXeQbV%2FoJKor5IPogjMlm0uDum9%2BCpKfO%2FVM%3D" -O routes.tar.gz

tar -xzf smackapi.tar.gz
tar -xzf routes.tar.gz
