with source_stack_posts as ( 
    SELECT * FROM
--bigquery-public-data.stackoverflow.stackoverflow_posts
{{ source('rittman_data','stackoverflow_posts')}}
)
select * from source_stack_posts