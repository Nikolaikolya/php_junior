'SELECT users.name as user_name, communities.name as community_name, permissions.name as permission_name 
FROM community_members 
JOIN communities ON community_members.community_id = communities.id 
JOIN users ON community_members.user_id = users.id 
JOIN community_member_permissions ON community_member_permissions.member_id = community_members.id 
JOIN permissions ON community_member_permissions.permission_id = permissions.id 
WHERE permissions.name LIKE \'%article%\' AND LENGTH(communities.name) >= 15';