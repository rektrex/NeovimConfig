function SynGroup()
    echo synIDattr(synID(line('.'), col('.'), 1), 'name')
endfun
