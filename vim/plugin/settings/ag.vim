if has("gui_macvim") && has("gui_running")
  map <D-F> :Ag<Space>
else
  map <C-F> :Ag<Space>
end
