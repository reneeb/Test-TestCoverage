use 5.006001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Test::TestCoverage',
    VERSION_FROM      => 'lib/Test/TestCoverage.pm', # finds $VERSION
    PREREQ_PM         => {
                            Test::Builder => 0,
                            Hook::LexWrap => 0,
                            Exporter      => 0,
                            Devel::Symdump=> 0,
                         }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Test/TestCoverage.pm', # retrieve abstract from module
       AUTHOR         => 'Renee Baecker <module@renee-baecker.de>') : ()),
);
