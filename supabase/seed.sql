
INSERT INTO profiles (email, credits, purchase, full_name, avatar_url, website)
VALUES
('alice@example.com', 10, 'basic', 'Alice Wonderland', 'https://example.com/alice.jpg', 'https://alice.example.com'),
('bob@example.com', 50, 'premium', 'Bob Builder', 'https://example.com/bob.jpg', 'https://bob.example.com');

INSERT INTO generations (email, input_data, output_data, type, model)
VALUES
('alice@example.com', '{"prompt":"Generate image of a sunset"}', '{"url":"https://example.com/image1.jpg"}', 'image_generation', 'model-alpha'),
('bob@example.com', '{"prompt":"Generate text summary"}', '{"summary":"This is a short summary"}', 'text_summary', 'model-beta');

INSERT INTO conversations (conversation, title, user_id, type)
VALUES
('{"messages":[{"role":"user","content":"Hello, world!"},{"role":"assistant","content":"Hi!"}]}', 'Chat with Assistant', (SELECT id FROM profiles WHERE email='alice@example.com'), 'chat'),
('{"messages":[{"role":"user","content":"What is the meaning of life?"},{"role":"assistant","content":"42"}]}', 'Deep Chat', (SELECT id FROM profiles WHERE email='bob@example.com'), 'chat');

INSERT INTO documents (user_id, title, url)
VALUES
((SELECT id FROM profiles WHERE email='alice@example.com'), 'Doc 1', 'https://example.com/doc1.pdf'),
((SELECT id FROM profiles WHERE email='bob@example.com'), 'Doc 2', 'https://example.com/doc2.pdf');

INSERT INTO recordings (file_url, user_id)
VALUES
('https://example.com/record1.mp3', (SELECT id FROM profiles WHERE email='alice@example.com')),
('https://example.com/record2.mp3', (SELECT id FROM profiles WHERE email='bob@example.com'));