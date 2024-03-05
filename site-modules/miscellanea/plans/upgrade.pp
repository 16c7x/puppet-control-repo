plan miscellanea::upgrade (
  TargetSpec $targets,
) {
  $rootstatus = run_task('miscellaneac::root_space', $targets)

  if $rootstatus != 0 then
  fail_plan('Root partition is full')
  end

  $patchstatus = run_task('miscellanea::yum_update', $targets)

  if $patchstatus!= 0 then
  fail_plan('patching failed')
  end
}
