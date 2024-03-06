plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  $results = run_task('miscellanea::root_space', $targets)

  $pass_output = $results.filter |$item| { $item['_output'] =~ /pass/ }

  $pass_list = $pass_output.map |$item| { $item.target }

  #return($pass_list)

  $patchstatus = run_task('miscellanea::yum_update', $pass_list)

}
