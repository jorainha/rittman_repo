with posts_questions as ( 
    SELECT * FROM
{{ source('rittman_data','posts_questions')}}
)
select * from posts_questions