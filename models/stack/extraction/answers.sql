with posts_answers as ( 
    SELECT * FROM
{{ source('rittman_data','posts_answers')}}
)
select * from posts_answers