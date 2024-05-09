# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::petest
class profile::petest {
  $testvar = 1 + 1
  notify { "The test variable iss: ${testvar}": }
}
