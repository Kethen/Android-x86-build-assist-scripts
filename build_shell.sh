#!/bin/bash
for f in $(ls extras)
do
	if [ -d extras/$f ]
	then
		for g in $(ls extras/$f)
		do
			if [ "$(echo $g | grep -E '\.apk$')" != "" ]
			then
				unzip -j -o "extras/$f/$g" lib/x86/* -d extras/$f
				unzip -j -o "extras/$f/$g" lib/x86_64/* -d extras/$f
			fi
		done
	fi
done
podman run \
--security-opt label=disable \
-v ./build_dir:/build_dir \
-w /build_dir \
-v ./scripts:/build_dir/scripts:ro \
-v ./manifests:/build_dir/.repo/local_manifests:ro \
-v ./extras:/build_dir/extras:ro \
-it --rm --entrypoint /bin/bash \
android_x86_builder
