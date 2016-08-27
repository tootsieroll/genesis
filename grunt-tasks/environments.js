module.exports = {
  options: {
    local_path: './build',
    current_symlink: 'site',
    port: 22,
    username: 'ec2-user',
    privateKey: require('fs').readFileSync('/Users/dina/.ssh/id_rsa'),
    passphrase: '1q2w3e'
  },
  staging: {
    options: {
      host: '52.28.69.7',
      deploy_path: '/var/minii/genesis/site'
    }
  }
};