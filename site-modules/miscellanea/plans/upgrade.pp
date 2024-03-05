plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $rootstatus = run_task('miscellanea::root_space', $targets)

  $stack_status = $rootstatus.reduce({}) | $res, $item | {
    $data = $item.value
    $stack_name = $item.status
  }

  $answered_true = $results.filter |$result| { $result[answer] == true }

  return($answered_true)

  $subset = $answered_true.map |$result| { $result.target }

  if $stack_status == 'fail' {
    fail_plan('Root partition is full')
  }

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 {
    fail_plan('patching failed')
  }
}
