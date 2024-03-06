plan miscellanea::upgrade(
  TargetSpec $targets,
) {
  # Run a test on each machine in the list to see if it has enough disk space
  $results = run_task('miscellanea::root_space', $targets)

  # Filter out the result sets of the nodes that passed the test
  $pass_output = $results.filter |$item| { $item['_output'] =~ /pass/ }

  # Extract the hostnames from the result set of nodes that passed
  $pass_list = $pass_output.map |$item| { $item.target }

  return($pass_list)

  # Run the patching task on the list of nodes that passed the test
  $patchstatus = run_task('miscellanea::yum_update', $pass_list)

}
