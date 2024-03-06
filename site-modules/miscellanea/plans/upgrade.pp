plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $results = run_task('miscellanea::root_space', $targets)

  $subset = $results.map |$result| {
    $result.value
  }

  #$answered_true = $results.filter |$result| { $result[answer] == true }

  return($subset)

  if $stack_status == 'fail' {
    fail_plan('Root partition is full')
  }

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 {
    fail_plan('patching failed')
  }
}
