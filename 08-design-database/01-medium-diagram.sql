Table users {
  user_id integer [pk, increment]
  username varchar [not null, unique]
  email varchar [not null, unique]
  password varchar [not null]
  name varchar [not null]
  role varchar [not null]
  gender varchar(10) [not null]
  avatar varchar

  created_at timestamp [default: 'now()']

  -- indexes {
  --   (username)[unique]
  -- }
}

Table posts {
  post_id integer [pk, increment]
  title varchar(200) [default: '']
  body text [default: '']
  og_image varchar
  slug varchar [not null, unique]
  published boolean

  created_by integer
  created_at TIMESTAMP [ DEFAULT: 'NOW()' ]
}

Table claps {
  clap_id integer [pk, increment]
  post_id integer
  user_id integer
  counter integer [default: 0]

  created_at timestamp

  indexes {
    (post_id, user_id) [unique]
    (post_id)
  }
}


Table comments {
  comment_id integer [pk, increment]
  post_id integer
  user_id INTEGER
  content text
  created_at timestamp
  visible boolean

  comment_parent_id integer

  indexes {
    (post_id)
    (visible)
  }
}


Table user_lists {
  user_list_id integer [pk, increment]
  user_id integer
  title varchar(100)

  indexes {
    (user_id, title) [unique]
    (user_id)
  }
}

Table user_list_entry {
  user_list_entry integer [pk, increment]
  user_list_id integer
  post_id integer
}

Ref: "users"."user_id" < "posts"."created_by"

Ref: "posts"."post_id" < "claps"."post_id"

Ref: "users"."user_id" < "claps"."user_id"

Ref: "posts"."post_id" < "comments"."comment_id"

Ref: "users"."user_id" < "comments"."user_id"

Ref: "comments"."comment_id" < "comments"."comment_parent_id"

Ref: "users"."user_id" < "user_lists"."user_id"

Ref: "user_lists"."user_list_id" < "user_list_entry"."user_list_id"

Ref: "posts"."post_id" < "user_list_entry"."post_id"