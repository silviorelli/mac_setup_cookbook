node.override['bash_it'] ={
  'enabled_plugins' => {
    'aliases'    => %w[general],
    'completion' => %w[defaults git brew gem rake ssh],
    'plugins'    => %w[base git rvm ssh vagrant ]
  },
  'custom_plugins' => {
      "pivotal_workstation" => %w[bash_it/custom/ensure_usr_local_bin_first.bash],
      "roderik_workstation" => %w[
        bash_it/custom/aliases.bash
        bash_it/custom/base.bash
        bash_it/custom/exports.bash
        bash_it/custom/functions.bash
      ]
  },
  'theme' => 'roderik',
  'dir' => '/etc/bash_it',
  'repository' => 'https://github.com/roderik/bash-it.git'
}

if node["platform"] == "ubuntu"
    node.override["bash_it"]["bashrc_path"]="/etc/bash.bashrc"
else
    node.override["bash_it"]["bashrc_path"]="/etc/bashrc"
end
