#
class role::docker {
  include profile::docker
  include profile::petest
}
