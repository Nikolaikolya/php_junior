'SELECT users.name as user_name, communities.name as communities_name, community_members.joined_at 
FROM `community_members`
INNER JOIN communities ON community_members.community_id = communities.id 
JOIN users ON community_members.user_id = users.id 
WHERE community_members.joined_at > \'2013-01-01 00:00:00\' 
ORDER BY community_members.joined_at DESC';