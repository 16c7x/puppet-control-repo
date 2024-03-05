plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $rootstatus = run_task('miscellanea::root_space', $targets)

  $stack_status = $rootstatus.reduce({}) | $res, $item | {
    $data = $item.value[output]
    $stack_status = $item.status
  }

  if $stack_status == 'failure {
    fail_plan('Root partition is full')
  }

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 {
    fail_plan('patching failed')
  }
}
