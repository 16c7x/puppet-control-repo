plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $results = run_task('miscellanea::root_space', $targets)

  #$subset = $results.map |$result| {
  #  $result.value
  #}

  $pass_output = $results.filter |$item| { $item['_output'] =~ /pass/ }

  $pass_value = $pass_output.map |$item| { $item['_output'] }

  #$answered_true = $results.filter |$result| { $result[] == true }

  return($pass_output)

  if $stack_status == 'fail' {
    fail_plan('Root partition is full')
  }

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 {
    fail_plan('patching failed')
  }
}
