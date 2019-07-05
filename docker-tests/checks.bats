#! /usr/bin/env bats

# Variable SUT_ID should be set outside this script and should contain the ID
# number of the System Under Test.

# Tests
@test 'run hello-world' {
  run bash -c "docker exec -ti ${SUT_ID} docker --version"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
  [[ "${output}" =~ "Docker version" ]]
}

@test 'docker-compose installed' {
  run bash -c "docker exec -ti ${SUT_ID} docker-compose --version"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0" ]]
  [[ "${output}" =~ "docker-compose version" ]]
}

