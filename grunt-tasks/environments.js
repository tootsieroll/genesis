module.exports = {
  options: {
    local_path: './build',
    current_symlink: 'site',
    // host: '52.28.106.223',
    port: 22,
    // username: 'ec2-user',
    // privateKey: require('fs').readFileSync('/Users/dina/.ssh/id_rsa'),
    // passphrase: '1q2w3e'
  },
  staging: {
    options: {
      // deploy_path: ''
    }
  }
};