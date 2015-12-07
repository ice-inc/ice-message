set :stage, :development
role :app, %w{root@${153.126.181.245}}
role :web, %w{root@${153.126.181.245}}
role :db, %w{root@${153.126.181.245}}

server '${153.126.181.245}',
user: 'root',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(password),
 password: 'HCiU0Ky/vE'
}
