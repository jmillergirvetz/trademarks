view: github_nested_copy {
  sql_table_name: sf_thesis.github_nested_copy ;;

  dimension: actor {
    type: string
    sql: ${TABLE}.actor ;;
  }

  dimension: actor_attributes {
    hidden: yes
    sql: ${TABLE}.actor_attributes ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  dimension: public {
    type: yesno
    sql: ${TABLE}.public ;;
  }

  dimension: repository {
    hidden: yes
    sql: ${TABLE}.repository ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: github_nested_copy__actor_attributes {
  dimension: blog {
    type: string
    sql: ${TABLE}.blog ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: github_nested_copy__payload {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: after {
    type: string
    sql: ${TABLE}.after ;;
  }

  dimension: before {
    type: string
    sql: ${TABLE}.before ;;
  }

  dimension: comment {
    hidden: yes
    sql: ${TABLE}.comment ;;
  }

  dimension: comment_id {
    type: number
    sql: ${TABLE}.comment_id ;;
  }

  dimension: commit {
    type: string
    sql: ${TABLE}.commit ;;
  }

  dimension: desc {
    type: string
    sql: ${TABLE}.`desc` ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: head {
    type: string
    sql: ${TABLE}.head ;;
  }

  dimension: issue {
    type: number
    sql: ${TABLE}.issue ;;
  }

  dimension: issue_id {
    type: number
    sql: ${TABLE}.issue_id ;;
  }

  dimension: master {
    type: string
    sql: ${TABLE}.master ;;
  }

  dimension: master_branch {
    type: string
    sql: ${TABLE}.master_branch ;;
  }

  dimension: member {
    hidden: yes
    sql: ${TABLE}.member ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: pages {
    hidden: yes
    sql: ${TABLE}.pages ;;
  }

  dimension: pull_request {
    hidden: yes
    sql: ${TABLE}.pull_request ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension: ref_type {
    type: string
    sql: ${TABLE}.ref_type ;;
  }

  dimension: shas {
    hidden: yes
    sql: ${TABLE}.shas ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: target {
    hidden: yes
    sql: ${TABLE}.target ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pages {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: html_url {
    type: string
    sql: ${TABLE}.html_url ;;
  }

  dimension: page_name {
    type: string
    sql: ${TABLE}.page_name ;;
  }

  dimension: sha {
    type: string
    sql: ${TABLE}.sha ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
}

view: github_nested_copy__payload__member {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _links {
    hidden: yes
    sql: ${TABLE}._links ;;
  }

  dimension: additions {
    type: number
    sql: ${TABLE}.additions ;;
  }

  dimension: base {
    hidden: yes
    sql: ${TABLE}.base ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: changed_files {
    type: number
    sql: ${TABLE}.changed_files ;;
  }

  dimension: closed_at {
    type: string
    sql: ${TABLE}.closed_at ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension: commits {
    type: number
    sql: ${TABLE}.commits ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: deletions {
    type: number
    sql: ${TABLE}.deletions ;;
  }

  dimension: diff_url {
    type: string
    sql: ${TABLE}.diff_url ;;
  }

  dimension: head {
    hidden: yes
    sql: ${TABLE}.head ;;
  }

  dimension: html_url {
    type: string
    sql: ${TABLE}.html_url ;;
  }

  dimension: issue_url {
    type: string
    sql: ${TABLE}.issue_url ;;
  }

  dimension: mergeable {
    type: yesno
    sql: ${TABLE}.mergeable ;;
  }

  dimension: merged {
    type: yesno
    sql: ${TABLE}.merged ;;
  }

  dimension: merged_at {
    type: string
    sql: ${TABLE}.merged_at ;;
  }

  dimension: merged_by {
    hidden: yes
    sql: ${TABLE}.merged_by ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: patch_url {
    type: string
    sql: ${TABLE}.patch_url ;;
  }

  dimension: review_comments {
    type: number
    sql: ${TABLE}.review_comments ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: github_nested_copy__payload__pull_request___links__comments {
  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }
}

view: github_nested_copy__payload__pull_request___links__self {
  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }
}

view: github_nested_copy__payload__pull_request___links__review_comments {
  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }
}

view: github_nested_copy__payload__pull_request___links__html {
  dimension: href {
    type: string
    sql: ${TABLE}.href ;;
  }
}

view: github_nested_copy__payload__pull_request__merged_by {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request__head {
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension: repo {
    hidden: yes
    sql: ${TABLE}.repo ;;
  }

  dimension: sha {
    type: string
    sql: ${TABLE}.sha ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: github_nested_copy__payload__pull_request__head__repo {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clone_url {
    type: string
    sql: ${TABLE}.clone_url ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fork {
    type: yesno
    sql: ${TABLE}.fork ;;
  }

  dimension: forks {
    type: number
    sql: ${TABLE}.forks ;;
  }

  dimension: git_url {
    type: string
    sql: ${TABLE}.git_url ;;
  }

  dimension: has_downloads {
    type: yesno
    sql: ${TABLE}.has_downloads ;;
  }

  dimension: has_issues {
    type: yesno
    sql: ${TABLE}.has_issues ;;
  }

  dimension: has_wiki {
    type: yesno
    sql: ${TABLE}.has_wiki ;;
  }

  dimension: homepage {
    type: string
    sql: ${TABLE}.homepage ;;
  }

  dimension: html_url {
    type: string
    sql: ${TABLE}.html_url ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: master_branch {
    type: string
    sql: ${TABLE}.master_branch ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: open_issues {
    type: number
    sql: ${TABLE}.open_issues ;;
  }

  dimension: owner {
    hidden: yes
    sql: ${TABLE}.owner ;;
  }

  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }

  dimension: pushed_at {
    type: string
    sql: ${TABLE}.pushed_at ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: ssh_url {
    type: string
    sql: ${TABLE}.ssh_url ;;
  }

  dimension: svn_url {
    type: string
    sql: ${TABLE}.svn_url ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: watchers {
    type: number
    sql: ${TABLE}.watchers ;;
  }
}

view: github_nested_copy__payload__pull_request__head__repo__owner {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request__head__user {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request__user {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request__base {
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: ref {
    type: string
    sql: ${TABLE}.ref ;;
  }

  dimension: repo {
    hidden: yes
    sql: ${TABLE}.repo ;;
  }

  dimension: sha {
    type: string
    sql: ${TABLE}.sha ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: github_nested_copy__payload__pull_request__base__repo {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: clone_url {
    type: string
    sql: ${TABLE}.clone_url ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fork {
    type: yesno
    sql: ${TABLE}.fork ;;
  }

  dimension: forks {
    type: number
    sql: ${TABLE}.forks ;;
  }

  dimension: git_url {
    type: string
    sql: ${TABLE}.git_url ;;
  }

  dimension: has_downloads {
    type: yesno
    sql: ${TABLE}.has_downloads ;;
  }

  dimension: has_issues {
    type: yesno
    sql: ${TABLE}.has_issues ;;
  }

  dimension: has_wiki {
    type: yesno
    sql: ${TABLE}.has_wiki ;;
  }

  dimension: homepage {
    type: string
    sql: ${TABLE}.homepage ;;
  }

  dimension: html_url {
    type: string
    sql: ${TABLE}.html_url ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: master_branch {
    type: string
    sql: ${TABLE}.master_branch ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: open_issues {
    type: number
    sql: ${TABLE}.open_issues ;;
  }

  dimension: owner {
    hidden: yes
    sql: ${TABLE}.owner ;;
  }

  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }

  dimension: pushed_at {
    type: string
    sql: ${TABLE}.pushed_at ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: ssh_url {
    type: string
    sql: ${TABLE}.ssh_url ;;
  }

  dimension: svn_url {
    type: string
    sql: ${TABLE}.svn_url ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: watchers {
    type: number
    sql: ${TABLE}.watchers ;;
  }
}

view: github_nested_copy__payload__pull_request__base__repo__owner {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__pull_request__base__user {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__payload__target {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: followers {
    type: number
    sql: ${TABLE}.followers ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: repos {
    type: number
    sql: ${TABLE}.repos ;;
  }
}

view: github_nested_copy__payload__shas {
  dimension: actor_email {
    type: string
    sql: ${TABLE}.actor_email ;;
  }

  dimension: actor_login {
    type: string
    sql: ${TABLE}.actor_login ;;
  }

  dimension: encoded {
    type: string
    sql: ${TABLE}.encoded ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
}

view: github_nested_copy__payload__comment {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: commit_id {
    type: string
    sql: ${TABLE}.commit_id ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: original_commit_id {
    type: string
    sql: ${TABLE}.original_commit_id ;;
  }

  dimension: original_position {
    type: number
    sql: ${TABLE}.original_position ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.user ;;
  }
}

view: github_nested_copy__payload__comment__user {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatar_url ;;
  }

  dimension: gravatar_id {
    type: string
    sql: ${TABLE}.gravatar_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: github_nested_copy__repository {
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fork {
    type: yesno
    sql: ${TABLE}.fork ;;
  }

  dimension: forks {
    type: number
    sql: ${TABLE}.forks ;;
  }

  dimension: has_downloads {
    type: yesno
    sql: ${TABLE}.has_downloads ;;
  }

  dimension: has_issues {
    type: yesno
    sql: ${TABLE}.has_issues ;;
  }

  dimension: has_wiki {
    type: yesno
    sql: ${TABLE}.has_wiki ;;
  }

  dimension: homepage {
    type: string
    sql: ${TABLE}.homepage ;;
  }

  dimension: integrate_branch {
    type: string
    sql: ${TABLE}.integrate_branch ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: master_branch {
    type: string
    sql: ${TABLE}.master_branch ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: open_issues {
    type: number
    sql: ${TABLE}.open_issues ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }

  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }

  dimension: pushed_at {
    type: string
    sql: ${TABLE}.pushed_at ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: watchers {
    type: number
    sql: ${TABLE}.watchers ;;
  }
}

view: github_nested_copy__payload__pull_request___links {
  dimension: comments {
    hidden: yes
    sql: ${TABLE}.comments ;;
  }

  dimension: html {
    hidden: yes
    sql: ${TABLE}.html ;;
  }

  dimension: review_comments {
    hidden: yes
    sql: ${TABLE}.review_comments ;;
  }

  dimension: self {
    hidden: yes
    sql: ${TABLE}.self ;;
  }
}
