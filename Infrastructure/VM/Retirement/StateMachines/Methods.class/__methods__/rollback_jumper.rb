#
# Description: <Method description here>
#

next_state=$evm.root["rollback_state"]
$evm.log(:info,"CC- root=#{$evm.root.inspect}")
  $evm.log(:info,"CC- object=#{$evm.object.inspect}")
$evm.log(:info,"CC- inputs=#{$evm.inputs.inspect}")
#$evm.log(:info,"CC- evm=#{$evm.inspect}")

$evm.log(:info,"CC- next-state=#{next_state}")

$evm.root["ae_next_state"]=next_state unless next_state.nil?
