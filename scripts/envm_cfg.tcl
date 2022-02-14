set fil [open $cores_base/ENVM.cfg w]
puts  $fil "nvm_set_data_storage_client \\"
puts  $fil "   -client_name {uboot}  \\"
puts  $fil "   -number_of_words 90512 \\"
puts  $fil "   -word_size 8 \\"
puts  $fil "   -use_for_simulation {0}  \\"
puts  $fil "   -content_type {MEMORY_FILE}  \\"
puts  $fil "   -memory_file_format {INTELHEX}  \\"
puts -nonewline  $fil "   -memory_file {"
puts -nonewline  $fil $uboot_base/u-boot.hex 
puts  $fil "}  \\"
puts  $fil "   -base_address 0 \\"
puts  $fil "   -reprogram 1 \\"
puts  $fil "   -use_as_rom 0 \\"
puts  $fil "   -lock_address 0"
close $fil