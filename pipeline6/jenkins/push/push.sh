#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u hiepph1707 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG hiepph1707/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push hiepph1707/$IMAGE:$BUILD_TAG
