SELECT msg_id, len(content)-len(replace(content,' ', ''))+1 as word_count
FROM chat_msgs
