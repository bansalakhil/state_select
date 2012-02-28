# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{state_select}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Akhil Bansal"]
  s.date = %q{2012-02-28}
  s.description = %q{State select}
  s.email = %q{bansalakhil30.10@gmail.com}
  s.extra_rdoc_files = ["lib/state_select.rb"]
  s.homepage = %q{http://github.com/bansalakhil/state_select}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "State_select", "--main", "README"]
  s.rubyforge_project = %q{state_select}
  s.summary = %q{State select}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end