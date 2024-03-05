plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $results = run_task('miscellanea::root_space', $targets)

  return($results)

  $subset = $answered_true.map |$result| { $result.target }

  if $stack_status == 'fail' {
    fail_plan('Root partition is full')
  }

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 {
    fail_plan('patching failed')
  }
}
