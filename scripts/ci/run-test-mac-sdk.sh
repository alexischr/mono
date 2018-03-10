#!/bin/bash -e

${TESTCMD} --label=bockbuild --timeout=180m --fatal ${MONO_REPO_ROOT}/scripts/mac-sdk-package.sh
pushd ${MONO_REPO_ROOT}/external/bockbuild/builds/mono

# switch to using package Mono instead of system
export PATH=${MONO_REPO_ROOT}/external/bockbuild/stage/bin:$PATH

# run Mono tests
make check-ci
${TESTCMD} --label="runtime-tests-llvm" --timeout=240m make -C mono/tests -k test-wrench MONO_ENV_OPTIONS=--llvm V=1 CI=1 M=1
${TESTCMD} --label="corlib-tests-llvm" --timeout=60m make -C mcs/class/corlib run-test PLATFORM_TEST_HARNESS_EXCLUDES=NotOnMac,MacNotWorking,LLVMNotWorking, MONO_ENV_OPTIONS=--llvm

# Bundled MSBuild
cd ${MONO_REPO_ROOT}/external/bockbuild/builds/msbuild-15/
${TESTCMD} --label="msbuildtests" --timeout=180m ./cibuild.sh --scope Test --host Mono --target Mono

# Bundled libgdiplus
${TESTCMD} --label="System.Drawing" --timeout=60m make -C mcs/class/System.Drawing run-test

popd
