class el6repos
{
  $repos = split($enabled_repo, ',')

  each($repos) |$repo| {
    file { "$repo":
      ensure  => present,
      path    => "/etc/yum.repos.d/${repo}.repo",
      mode    => '0644',
      source  => "puppet:///modules/el6repos/${repo}.repo",
    }
  }
}
