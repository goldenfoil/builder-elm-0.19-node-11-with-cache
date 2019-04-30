# builder-elm-0.19-node-11-with-cache

Docker build container

**Donor** codebase lists most common dependencies. This approach drastically reduces build time and solves problem with blocked `package.elm-lang.org`

1. Change dependencies

2. Commit, push to GitHub

3. Publish. You have 2 options:

   a. Wait for it to build automatically on dockerhub _(check if build is scheduled or trigger build manually)_. In this case tag will not include git commit hash - it will be just `latest`.

   b. Build, tag and push manually:

   ```bash
   # compatibility: both for bash and fish
   bash -c 'docker build -t goldenfoil/builder-elm-0.19-node-11-with-cache:latest goldenfoil/builder-elm-0.19-node-11-with-cache:$(git log -1 --pretty=%h) .'

   docker push goldenfoil/builder-elm-0.19-node-11-with-cache
   ```
