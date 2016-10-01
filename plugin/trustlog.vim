if exists("loaded_trustlog_plugin")
  finish
endif
let loaded_trustlog_plugin = 1

function! s:DeviceViewerLogPath()
  return $HOME . '\AppData\Roaming\Mobile Labs\Trust\deviceViewer.log'
endfunction

function! s:UftAgentLogPath()
  return $HOME . '\AppData\Roaming\Mobile Labs\Trust\UftAgent.log'
endfunction

function! s:EditDeviceViewerLog()
  execute 'edit ++ff=dos ' . fnameescape(s:DeviceViewerLogPath())
endfunction

function! s:EditUftAgentLog()
  execute 'edit ++ff=dos ' . fnameescape(s:UftAgentLogPath())
endfunction

command! TrustDeviceViewerLog  call s:EditDeviceViewerLog()
command! TrustUftAgentLog      call s:EditUftAgentLog()

