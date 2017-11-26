UPDATE wp_options SET option_value = REPLACE(option_value, 'old_url', 'new_url') WHERE LOCATE('old_url', option_value) > 0;
UPDATE wp_posts SET guid = REPLACE(guid, 'old_url', 'new_url') WHERE LOCATE('old_url', guid) > 0;
UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, 'old_url', 'new_url') WHERE LOCATE('old_url', meta_value) > 0;
UPDATE wp_posts SET post_content = REPLACE(post_content, 'old_url', 'new_url') WHERE LOCATE('old_url', post_content) > 0;
