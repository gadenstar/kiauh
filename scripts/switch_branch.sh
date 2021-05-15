switch_to_master(){
  cd $KLIPPER_DIR
  status_msg "Switching...Please wait ..."; echo
  git fetch origin -q && git checkout master; echo
}

switch_to_klipper_py3(){
  cd $KLIPPER_DIR
  status_msg "Switching...Please wait ..."; echo
  if ! git remote | grep Piezoid -q; then
    git remote add Piezoid $KLIPPER_PY3
  fi
  git fetch Piezoid -q && git checkout python3_rebased; echo
}

switch_to_scurve_shaping(){
  cd $KLIPPER_DIR
  status_msg "Switching...Please wait ..."; echo
  if ! git remote | grep dmbutyugin -q; then
    git remote add dmbutyugin $DMBUTYUGIN_REPO
  fi
  git fetch dmbutyugin -q && git checkout scurve-shaping; echo
}

switch_to_scurve_smoothing(){
  cd $KLIPPER_DIR
  status_msg "Switching...Please wait ..."; echo
  if ! git remote | grep dmbutyugin -q; then
    git remote add dmbutyugin $DMBUTYUGIN_REPO
  fi
  git fetch dmbutyugin -q && git checkout scurve-smoothing; echo
}
