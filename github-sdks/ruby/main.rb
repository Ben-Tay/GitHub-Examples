require 'octokit'

client = Octokit::Client.new # https://github.com/octokit/octokit.rb?tab=readme-ov-file#philosophy
# https://octokit.github.io/octokit.rb/Octokit/Client.html

repo_name = 'Ben-Tay/GitHub-Examples'
base_branch = 'main'  # Specify the base branch you want to branch from
new_branch_name = 'sdks'  # Specify the name of the new branch you want to creat

# Get the SHA of the latest commit on the base branch
sha_latest_commit = client.commits(repo_name, base_branch).first.sha

# Create a new branch based on the latest commit of the base branch
client.create_ref(repo_name, "refs/heads/#{new_branch_name}", sha_latest_commit)

# run bundle install to effect it
# run the file: bundle exec ruby main.rb