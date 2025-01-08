{% set film_title = 'Dunkirk'%}

SELECT * from {{ref('films')}}
where title ='{{film_title}}'