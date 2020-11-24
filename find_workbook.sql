-- find site, project information from a workbook name
select  w.id AS WOrkbook_id, 
        w.name AS Workbook_name, 
        w.repository_url,
        w.owner_id as owner_user_id,
        su.name as owner_name,
        w.project_id, 
        w.site_id,
        s.name as site_name,
        p.name AS Project_name,
        w.created_at,
        w.refreshable_extracts,
        w.extracts_refreshed_at
from workbooks w
join projects p on P.id = w.project_id
join sites s on s.id = w.site_id
join users u on u.id = w.owner_id
join system_users su on su.id = u.system_user_id 
where w.name = 'BIS LMS Match (Courses)';