#!/usr/bin/ruby
require "selinux"

domain = Selinux.getcon[1]
puts "Started with domain #{domain}"

#puts Selinux.setcon "unconfined_u:unconfined_r:test_subcommand_t:s0-s0:c0.c1023"
puts Selinux.setcon "test_subcommand_t"

domain = Selinux.getcon[1]
puts "After dynamic transition the domain is #{domain}"
