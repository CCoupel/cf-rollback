#
# Description: <Method description here>
#


next_state=$evm.object["rollback_state"]




options={}
options [:namespace]='Infrastructure'
options[:class_name]='VM/Retirement/StateMachines/VMRetirement'
options[:instance_name]='Default'
options[:message]= 'create'
options[:user_id]= $evm.root['user'].id

options[:attrs]={}

#attrs["miq_zone"]= 'Default Zone'
#attrs[:user_id]= $evm.root['user'].id
options[:attrs]["rollback_state"]=next_state
options[:attrs]['Vm::vm']=$evm.root["vm"].id rescue nil
#attrs['Service::service']=$evm.root["service"].id rescue nil
result=$evm.execute("create_automation_request",options,"admin",true)
