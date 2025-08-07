codeql/codeql-config.yml
```yml
name: CodeQL configuration

paths-ignore:
  - 'packages/mui-icons-material/lib/**'

```

dependabot.yml
```yml
version: 2
updates:
  # Enable version updates for npm
  - package-ecosystem: npm
    # Look for `package.json` and `lock` files in the `root` directory
    directory: /
    schedule:
      interval: yearly
    # https://stackoverflow.com/questions/64047526/how-to-get-dependabot-to-trigger-for-security-updates-only
    open-pull-requests-limit: 0
    labels:
      - dependencies
      - security

```

FUNDING.yml
```yml
# These are supported funding model platforms

github: # Replace with up to 4 GitHub Sponsors-enabled usernames e.g., [user1, user2]
patreon: # Replace with a single Patreon username
open_collective: mui-org
ko_fi: # Replace with a single Ko-fi username
tidelift: npm/@mui/material
custom: # Replace with a single custom sponsorship URL

```


ISSUE_TEMPLATE/2.feature.yml
```yml
name: Feature request 💄
description: Suggest a new idea for Material UI, MUI System, or Joy UI.
labels: ['status: waiting for maintainer']
body:
  - type: markdown
    attributes:
      value: Thanks for contributing by creating an issue! ❤️ Please provide a searchable summary of the issue in the title above ⬆️.
  - type: input
    attributes:
      label: Search keywords
      description: |
        Your issue may have already been reported! First search for duplicates among the [existing issues](https://github.com/mui/material-ui/issues?q=is%3Aopen+is%3Aclosed).
        If your issue isn't a duplicate, great! Please list the keywords you used so people in the future can find this one more easily:
    validations:
      required: true
  - type: checkboxes
    attributes:
      label: Latest version
      description: We roll bug fixes, performance enhancements, and other improvements into new releases.
      options:
        - label: I have tested the latest version
          required: true
  - type: textarea
    attributes:
      label: Summary
      description: Describe how it should work.
  - type: textarea
    attributes:
      label: Examples
      description: Provide a link to the Material Design specification, other implementations, or screenshots of the expected behavior.
  - type: textarea
    attributes:
      label: Motivation
      description: What are you trying to accomplish? Providing context helps us come up with a solution that is more useful in the real world.
  - type: markdown
    attributes:
      value: |
        ## :heart: Love Material UI?

        Consider donating $10 to sustain our open-source work: [https://opencollective.com/mui-org](https://opencollective.com/mui-org).

```

ISSUE_TEMPLATE/3.rfc.yml
```yml
name: RFC 💬
description: Request for comments for your proposal.
title: '[RFC] '
labels: ['status: waiting for maintainer', 'RFC']
body:
  - type: markdown
    attributes:
      value: |
        Please provide a searchable summary of the RFC in the title above. ⬆️

        Thanks for contributing by creating an RFC! ❤️
  - type: textarea
    attributes:
      label: What's the problem?
      description: Write a short paragraph or bulleted list to briefly explain what you're trying to do, what outcomes you're aiming for.
  - type: textarea
    attributes:
      label: What are the requirements?
      description: Provide a list of requirements that should be met by the accepted proposal.
  - type: textarea
    attributes:
      label: What are our options?
      description: What are the alternative options to achieve the desired outcome?
  - type: textarea
    attributes:
      label: Proposed solution
      description: |
        This is the core of the RFC. Please clearly explain the reasoning behind your proposed solution, including why it would be preferred over possible alternatives.

        Consider:
        - using diagrams to help illustrate your ideas
        - including code examples if you're proposing an interface or system contract
        - linking to relevant project briefs or wireframes
  - type: textarea
    attributes:
      label: Resources and benchmarks
      description: Attach any issues, PRs, links, documents, etc… that might be relevant to the RFC.

```

ISSUE_TEMPLATE/4.docs-feedback.yml
```yml
name: Docs feedback
description: Improve documentation about Material UI, MUI System, or Joy UI.
labels: ['status: waiting for maintainer', 'support: docs-feedback']
title: '[docs] '
body:
  - type: markdown
    attributes:
      value: Thanks for contributing by creating an issue! ❤️ Please provide a searchable summary of the issue in the title above ⬆️.
  - type: input
    attributes:
      label: Search keywords
      description: |
        Your issue may have already been reported! First search for duplicates among the [existing issues](https://github.com/mui/material-ui/issues?q=is%3Aopen+is%3Aclosed).
        If your issue isn't a duplicate, great! Please list the keywords you used so people in the future can find this one more easily:
    validations:
      required: true
  - type: input
    id: page-url
    attributes:
      label: Related page
      description: Which page of the documentation is this about?
      placeholder: https://mui.com/material-ui/
    validations:
      required: true
  - type: dropdown
    attributes:
      label: Kind of issue
      description: What kind of problem are you facing?
      options:
        - Unclear explanations
        - Missing information
        - Broken demo
        - Other
    validations:
      required: true
  - type: textarea
    attributes:
      label: Issue description
      description: |
        Let us know what went wrong when you were using this documentation and what we could do to improve it.
  - type: textarea
    attributes:
      label: Context
      description: What are you trying to accomplish? Providing context helps us come up with a solution that is more useful in the real world.
  - type: markdown
    attributes:
      value: |
        ## :heart: Love Material UI?

        Consider donating $10 to sustain our open-source work: [https://opencollective.com/mui-org](https://opencollective.com/mui-org).

```

ISSUE_TEMPLATE/5.priority-support.yml
```yml
name: 'Priority Support: SLA ⏰'
description: I'm an MUI X Premium user and we have purchased the Priority Support add-on. I can't find a solution to my problem with Material UI, MUI System, or Joy UI.
title: '[question] '
labels: ['status: waiting for maintainer', 'support: unknown']
body:
  - type: markdown
    attributes:
      value: |
        Please provide a searchable summary of the issue in the title above ⬆️.
  - type: input
    attributes:
      label: Search keywords
      description: |
        Your issue may have already been reported! First search for duplicates among the [existing issues](https://github.com/mui/material-ui/issues?q=is%3Aopen+is%3Aclosed).
        If your issue isn't a duplicate, great! Please list the keywords you used so people in the future can find this one more easily:
      required: true
  - type: checkboxes
    attributes:
      label: Latest version
      description: We roll bug fixes, performance enhancements, and other improvements into new releases.
      options:
        - label: I have tested the latest version
          required: true
  - type: textarea
    attributes:
      label: The problem in depth
  - type: textarea
    attributes:
      label: Your environment
      description: Run `npx @mui/envinfo` and post the results. If you encounter issues with TypeScript please include the used tsconfig.
      value: |
        <details>
          <summary>`npx @mui/envinfo`</summary>

        ```
          Don't forget to mention which browser you used.
          Output from `npx @mui/envinfo` goes here.
        ```
        </details>

```

ISSUE_TEMPLATE/config.yml
```yml
contact_links:
  - name: Support ❔
    url: https://mui.com/material-ui/getting-started/support/
    about: I need support with Material UI, MUI System, or Joy UI.

```

workflows/check-if-pr-has-label.yml
```yml
name: Check if PR has label

on:
  pull_request:
    types: [opened, reopened, labeled, unlabeled]

permissions: {}

jobs:
  test-label-applied:
    # Tests that label is added on the PR
    runs-on: ubuntu-latest
    permissions:
      contents: read
    steps:
      - uses: mnajdova/github-action-required-labels@ca0df9249827e43aa4b4a0d25d9fe3e9b19b0705 # v2.1.0
        with:
          mode: minimum
          count: 1
          labels: ''

```

workflows/ci-check.yml
```yml
# This workflow is a workaround for ci.yml to bypass the github checks
#
# Ref: https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/troubleshooting-required-status-checks#handling-skipped-but-required-checks
name: CI Check

on:
  push:
    branches-ignore:
      # Renovate branches are always Pull Requests.
      # We don't need to run CI twice (push+pull_request)
      - 'renovate/**'
      - 'dependabot/**'
  pull_request:
    paths:
      - 'docs/**'
      - 'examples/**'

permissions: {}

jobs:
  test-dev:
    if: ${{ github.actor != 'l10nbot' }}
    runs-on: ${{ matrix.os }}
    strategy:
      matrix:
        os: [macos-latest, windows-latest, ubuntu-latest]
    steps:
      - run: 'echo "No build required"'

```

workflows/ci.yml
```yml
name: CI

on:
  push:
    branches-ignore:
      # Renovate branches are always Pull Requests.
      # We don't need to run CI twice (push+pull_request)
      - 'renovate/**'
      - 'dependabot/**'
  pull_request:
    paths-ignore:
      # should sync with ci-check.yml as a workaround to bypass github checks
      - 'examples/**'

permissions: {}

jobs:
  continuous-releases:
    runs-on: ubuntu-latest
    # do not run on forks
    if: github.repository == 'telicent-oss/material-ui'
    steps:
      - run: echo "${{ github.actor }}"
      - uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
        with:
          fetch-depth: 0
      - name: Set up pnpm
        uses: pnpm/action-setup@a7487c7e89a18df4991f7f222e4898a00d66ddda # v4.1.0
      - name: Use Node.js 20.x
        uses: actions/setup-node@49933ea5288caeca8642d1e84afbd3f7d6820020 # v4.4.0
        with:
          node-version: 20
          cache: 'pnpm' # https://github.com/actions/setup-node/blob/main/docs/advanced-usage.md#caching-packages-dependencies
      - run: pnpm install:codesandbox
      - run: pnpm build:codesandbox
      - run: pnpm pkg-pr-new-release

  # Tests dev-only scripts across all supported dev environments
  test-dev:
    # l10nbot does not affect dev scripts.
    if: ${{ github.actor != 'l10nbot' }}
    runs-on: ${{ matrix.os }}
    strategy:
      matrix:
        os: [macos-latest, windows-latest, ubuntu-latest]
    steps:
      - run: echo "${{ github.actor }}"
      - uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
        with:
          # fetch all tags which are required for `pnpm release:changelog`
          fetch-depth: 0
      - name: Set up pnpm
        uses: pnpm/action-setup@a7487c7e89a18df4991f7f222e4898a00d66ddda # v4.1.0
      - name: Use Node.js 20.x
        uses: actions/setup-node@49933ea5288caeca8642d1e84afbd3f7d6820020 # v4.4.0
        with:
          node-version: 20
          cache: 'pnpm' # https://github.com/actions/setup-node/blob/main/docs/advanced-usage.md#caching-packages-dependencies
      - run: pnpm install
      - run: pnpm build:ci
        env:
          NODE_OPTIONS: --max_old_space_size=6144
      - run: pnpm release:changelog
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - run: pnpm validate-declarations
      - name: pnpm release:tag
        run: |
          git remote -v
          pnpm release:tag --dryRun

```

workflows/closed-issue-message.yml
```yml
name: Add closing message to issue

on:
  issues:
    types:
      - closed

permissions: {}

jobs:
  add-comment:
    name: Add closing message
    if: github.event.issue.state_reason == 'completed'
    uses: mui/mui-public/.github/workflows/issues_add-closing-message.yml@master
    permissions:
      contents: read
      issues: write

```

workflows/codeql.yml
```yml
name: CodeQL

on:
  schedule:
    - cron: '0 2 * * *'

permissions: {}

jobs:
  analyze:
    name: Analyze
    runs-on: ubuntu-latest
    permissions:
      actions: read
      contents: read
      security-events: write
    steps:
      - name: Checkout repository
        uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
      # Initializes the CodeQL tools for scanning.
      - name: Initialize CodeQL
        uses: github/codeql-action/init@51f77329afa6477de8c49fc9c7046c15b9a4e79d # v3.29.5
        with:
          languages: typescript
          config-file: ./.github/codeql/codeql-config.yml
          # If you wish to specify custom queries, you can do so here or in a config file.
          # By default, queries listed here will override any specified in a config file.
          # Prefix the list here with "+" to use these queries and those in the config file.

          # Details on CodeQL's query packs refer to : https://docs.github.com/en/code-security/code-scanning/automatically-scanning-your-code-for-vulnerabilities-and-errors/configuring-code-scanning#using-queries-in-ql-packs
          # queries: security-extended,security-and-quality
      - name: Perform CodeQL Analysis
        uses: github/codeql-action/analyze@51f77329afa6477de8c49fc9c7046c15b9a4e79d # v3.29.5

```

workflows/create-cherry-pick-pr.yml
```yml
name: Create cherry-pick PR
on:
  pull_request_target:
    branches:
      - 'next'
      - 'v*.x'
      - 'master'
    types: ['closed']

permissions: {}

jobs:
  create_pr:
    name: Create cherry-pick PR
    uses: mui/mui-public/.github/workflows/prs_create-cherry-pick-pr.yml@master
    permissions:
      contents: write
      pull-requests: write

```

workflows/ensure-triage-label.yml
```yml
name: Ensure triage label is present

on:
  label:
    types:
      - deleted
  issues:
    types:
      - opened

permissions: {}

jobs:
  label_issues:
    runs-on: ubuntu-latest
    permissions:
      issues: write
    steps:
      - uses: actions/github-script@60a0d83039c74a4aee543508d2ffcb1c3799cdea # v7
        with:
          script: |
            const { data: labels } = await github.rest.issues.listLabelsOnIssue({
              issue_number: context.issue.number,
              owner: context.repo.owner,
              repo: context.repo.repo,
            });

            if (labels.length <= 0) {
              await github.rest.issues.addLabels({
                issue_number: context.issue.number,
                owner: context.repo.owner,
                repo: context.repo.repo,
                labels: ['status: waiting for maintainer']
              })
            }

```

workflows/issue-cleanup.yml
```yml
name: Cleanup issue comment

on:
  issues:
    types:
      - opened

permissions: {}

jobs:
  issue_cleanup:
    runs-on: ubuntu-latest
    permissions:
      issues: write
    steps:
      - uses: actions/github-script@60a0d83039c74a4aee543508d2ffcb1c3799cdea # v7
        with:
          script: |
            const issue = await github.rest.issues.get({
              owner: context.repo.owner,
              repo: context.repo.repo,
              issue_number: context.issue.number,
            })

            const lines = issue.data.body.split('\n')

            const _ = extractInputSection(lines, 'Latest version')
            const searchKeywords = extractInputSection(lines, 'Search keywords')
            const orderID = extractInputSection(lines, 'Order ID or Support key')

            lines.push('')
            lines.push('**Search keywords**: ' + searchKeywords)
            if (orderID !== '' && orderID !== '_No response_') {
              lines.push('**Order ID**: ' + orderID)
            }

            const body = lines.join('\n')

            await github.rest.issues.update({
              owner: context.repo.owner,
              repo: context.repo.repo,
              issue_number: context.issue.number,
              body,
            })

            function extractInputSection(lines, title) {
              const index = lines.findIndex(line => line.startsWith('###') && line.includes(title))
              if (index === -1) {
                return ''
              }
              return lines.splice(index, 4)[2].trim()
            }

```

workflows/maintenance.yml
```yml
name: Maintenance

on:
  # So that PRs touching the same files as the push are updated
  push:
    branches:
      # #target-branch-reference
      - master
      - v6.x
  # So that the `dirtyLabel` is removed if conflicts are resolved
  # Could put too much strain on rate limit
  # If we hit the rate limit too often remove this event
  pull_request_target:
    branches:
      # #target-branch-reference
      - master
      - v6.x
    types: [synchronize]

permissions: {}

jobs:
  main:
    # l10nbot creates a lot of commits at once which starves CI.
    # We rely on other pushes to mark these branches as outdated.
    if: ${{ github.actor != 'l10nbot' }}
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
    steps:
      - run: echo "${{ github.actor }}"
      - name: check if prs are dirty
        uses: eps1lon/actions-label-merge-conflict@1df065ebe6e3310545d4f4c4e862e43bdca146f0 # v3.0.3
        with:
          dirtyLabel: 'PR: out-of-date'
          removeOnDirtyLabel: 'PR: ready to ship'
          repoToken: '${{ secrets.GITHUB_TOKEN }}'
          retryAfter: 130
          retryMax: 10

```

workflows/mark-duplicate.yml
```yml
name: Mark duplicate

on:
  issue_comment:
    types: [created]

permissions: {}

jobs:
  mark-duplicate:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      issues: write
    steps:
      - name: mark-duplicate
        uses: actions-cool/issues-helper@50068f49b7b2b3857270ead65e2d02e4459b022c # v3.6.2
        with:
          actions: 'mark-duplicate'
          token: ${{ secrets.GITHUB_TOKEN }}
          duplicate-labels: 'duplicate'
          remove-labels: 'status: incomplete,status: waiting for maintainer'
          close-issue: true

```

workflows/no-response.yml
```yml
name: No response

# `issues`.`closed`, `issue_comment`.`created`, and `scheduled` event types are required for this Action
# to work properly.
on:
  issues:
    types: [closed]
  issue_comment:
    types: [created]
  schedule:
    # These runs in our repos are spread evenly throughout the day to avoid hitting rate limits.
    # If you change this schedule, consider changing the remaining repositories as well.
    # Runs at 12 am, 12 pm
    - cron: '0 0,12 * * *'

permissions: {}

jobs:
  noResponse:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      issues: write
    steps:
      - uses: MBilalShafi/no-response-add-label@8336c12292902f27b931154c34ba4670cb9899a2
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          # Number of days of inactivity before an Issue is closed for lack of response
          daysUntilClose: 7
          # Label requiring a response
          responseRequiredLabel: 'status: waiting for author'
          # Label to add back when required label is removed
          optionalFollowupLabel: 'status: waiting for maintainer'
          # Comment to post when closing an Issue for lack of response. Set to `false` to disable
          closeComment: >
            Since the issue is missing key information and has been inactive for 7 days, it has been automatically closed.
            If you wish to see the issue reopened, please provide the missing information.

```

workflows/priority-support-validation-prompt.yml
```yml
name: Priority Support Validation Prompt

on:
  issues:
    types:
      - labeled

permissions: {}

jobs:
  comment:
    name: Create or update comment
    runs-on: ubuntu-latest
    permissions:
      issues: write

    steps:
      - name: Find Comment
        uses: peter-evans/find-comment@3eae4d37986fb5a8592848f6a574fdf654e61f9e # v3
        id: findComment
        with:
          issue-number: ${{ github.event.issue.number }}
          comment-author: 'github-actions[bot]'
          body-includes: You have created a priority support request

      - name: Create comment
        if: ${{ steps.findComment.outputs.comment-id == '' && contains(github.event.label.name, 'unknown') }}
        uses: peter-evans/create-or-update-comment@71345be0265236311c031f5c7866368bd1eff043 # v4.0.0
        with:
          issue-number: ${{ github.event.issue.number }}
          body: |
            You have created a support request under the ["Priority Support"](https://mui.com/legal/technical-support-sla/#priority-support) terms, which is a paid add-on to MUI X Premium ⏰. Please validate your support key using the link below:

            https://tools-public.mui.com/prod/pages/validateSupport?repo=mui-x&issueId=${{ github.event.issue.number }}

            Do not share your support key in this issue!

            Priority Support is only provided to verified customers. Once you have verified your support key, we will remove the `support: unknown` label and add the `support: priority` label to this issue. Only then the time for the SLA will start counting.

      - name: Update comment
        if: ${{ steps.findComment.outputs.comment-id != '' && contains(github.event.label.name, 'priority') }}
        uses: peter-evans/create-or-update-comment@71345be0265236311c031f5c7866368bd1eff043 # v4.0.0
        with:
          comment-id: ${{ steps.findComment.outputs.comment-id }}
          body: |
            Thank you for verifying your support key 🔑, your SLA starts now.
          edit-mode: replace

```

workflows/publish-canaries.yml
```yml
name: Publish canary packages to npm

on:
  workflow_dispatch:

permissions: {}

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
        with:
          fetch-depth: 0
      - name: Set up pnpm
        uses: pnpm/action-setup@a7487c7e89a18df4991f7f222e4898a00d66ddda # v4.1.0
      - name: Use Node.js 20.x
        uses: actions/setup-node@49933ea5288caeca8642d1e84afbd3f7d6820020 # v4.4.0
        with:
          node-version: 20
          cache: 'pnpm' # https://github.com/actions/setup-node/blob/main/docs/advanced-usage.md#caching-packages-dependencies
      - run: pnpm install
      - run: pnpm canary:release --ignore @mui/icons-material --yes --skip-last-commit-comparison
        env:
          NPM_TOKEN: ${{secrets.NPM_TOKEN}}

```

workflows/scorecards.yml
```yml
name: Scorecards supply-chain security

on:
  # Only the default branch is supported.
  branch_protection_rule:
  schedule:
    - cron: '0 2 * * *'

permissions: {}

jobs:
  analysis:
    name: Scorecards analysis
    runs-on: ubuntu-latest
    permissions:
      # Needed to upload the results to code-scanning dashboard.
      security-events: write
      # Used to receive a badge.
      id-token: write
      # Needs for private repositories.
      contents: read
      actions: read
    steps:
      - name: Checkout code
        uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
        with:
          persist-credentials: false
      - name: Run analysis
        uses: ossf/scorecard-action@05b42c624433fc40578a4040d5cf5e36ddca8cde # v2.4.2
        with:
          results_file: results.sarif
          results_format: sarif
          # (Optional) Read-only PAT token. Uncomment the `repo_token` line below if:
          # - you want to enable the Branch-Protection check on a *public* repository, or
          # - you are installing Scorecards on a *private* repository
          # To create the PAT, follow the steps in https://github.com/ossf/scorecard-action#authentication-with-pat.
          repo_token: ${{ secrets.SCORECARD_READ_TOKEN }}
          # Publish the results for public repositories to enable scorecard badges. For more details, see
          # https://github.com/ossf/scorecard-action#publishing-results.
          publish_results: true
      # Upload the results to GitHub's code scanning dashboard.
      - name: Upload to code-scanning
        uses: github/codeql-action/upload-sarif@51f77329afa6477de8c49fc9c7046c15b9a4e79d # v3.29.5
        with:
          sarif_file: results.sarif

```

workflows/support-stackoverflow.yml
```yml
# Configuration for support-requests - https://github.com/dessant/support-requests
name: Support Stack Overflow

on:
  issues:
    types: [labeled, unlabeled, reopened]

permissions: {}

jobs:
  mark-support:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      issues: write
    steps:
      - uses: dessant/support-requests@47d5ea12f6c9e4a081637de9626b7319b415a3bf # v4.0.0
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          # Label used to mark issues as support requests
          support-label: 'support: Stack Overflow'
          # Comment to post on issues marked as support requests. Add a link
          # to a support page, or set to `false` to disable
          issue-comment: |
            👋 Thanks for using this project!

            We use GitHub issues exclusively as a bug and feature requests tracker, however, this issue appears to be a support request.

            For support with Material UI please check out https://mui.com/material-ui/getting-started/support/. Thanks!

            If you have a question on Stack Overflow, you are welcome to link to it here, it might help others.
            If your issue is subsequently confirmed as a bug, and the report follows the issue template, it can be reopened.
          close-issue: true
          issue-close-reason: 'not planned'
          lock-issue: false

```

workflows/vale-action.yml
```yml
name: Vale action

on: [pull_request]

permissions: {}

jobs:
  vale:
    name: runner / vale
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
    steps:
      - uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4.2.2
      - name: Extract Vale version from pnpm-lock.yaml
        id: vale-version
        run: |
          # Extract version from lock file
          VERSION=$(awk -F"@|'" '/@vvago\/vale@/ {print $4}' pnpm-lock.yaml | head -n1)
          echo "Extracted Vale version: $VERSION"
          echo "vale_version=$VERSION" >> $GITHUB_OUTPUT
      - uses: errata-ai/vale-action@d89dee975228ae261d22c15adcd03578634d429c # v2.1.1
        continue-on-error: true # GitHub Action flag needed until https://github.com/errata-ai/vale-action/issues/89 is fixed
        with:
          version: ${{ steps.vale-version.outputs.vale_version }}
          # Errors should be more visible
          fail_on_error: true
          # The other reports don't work, not really https://github.com/reviewdog/reviewdog#reporters
          reporter: github-pr-check
          # Required, set by GitHub actions automatically:
          # https://docs.github.com/en/actions/security-guides/automatic-token-authentication#about-the-github_token-secret
          token: ${{secrets.GITHUB_TOKEN}}

```

