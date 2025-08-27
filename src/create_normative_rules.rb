# frozen_string_literal: true

require "json"
require "yaml"

PN = "create_normative_rules.rb"

def usage(exit_status = 1)
  puts "Usage: #{PN} [OPTION]... <output-filename>"
  puts "  -c filename    normative rule curation filename (YAML)"
  puts "  -t filename    normative tag filename (JSON)"
  exit exit_status
end

usage(0) if ARGV.count == 1 && (ARGV[0] == "-h" || ARGV[0] == "--help")

usage if ARGV.count == 0

puts "#{PN}: Passed #{ARGV.join(' ')}"

norm_curation_fnames=[]
norm_tag_fnames=[]
output_fname=

i = 0
while i < ARGV.count
  # puts "#{PN}: XXX #{ARGV[i]}"
  arg = ARGV[i]
  case arg
  when "-c"
    if (ARGV.count-i) < 1
      puts "#{PN}: Missing argument for -c option"
      usage
    end
    norm_curation_fnames.append(ARGV[i+1])
    i=i+1
  when "-t"
    if (ARGV.count-i) < 1
      puts "#{PN}: Missing argument for -t option"
      usage
    end
    norm_tag_fnames.append(ARGV[i+1])
    i=i+1
  when /^-/
    puts "#{PN}: Unknown command-line option #{arg}"
  else
    if (ARGV.count-i) == 1
      # Last command-line argument
      output_fname = arg
    else
      puts "#{PN}: Unknown option '#{arg}' i=#{i} ARGVcount=#{ARGV.count}"
      usage
    end
  end

  i=i+1
end

if norm_curation_fnames.empty?
  puts "#{PN}: Missing normative rule curation filename(s)"
  usage
end

if norm_tag_fnames.empty?
  puts "#{PN}: Missing normative tag filename(s)"
  usage
end

if output_fname.nil?
  puts "#{PN}: Missing output filename"
  usage
end

puts "#{PN}:  Normative rule curation filenames = #{norm_curation_fnames}"
puts "#{PN}:  Normative tag filenames = #{norm_tag_fnames}"
puts "#{PN}:  Output filname = #{output_fname}"

exit 0
