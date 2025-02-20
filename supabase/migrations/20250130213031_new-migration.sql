CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE profiles (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    email TEXT NOT NULL,
    credits INT,
    purchase TEXT,
    full_name TEXT,
    avatar_url TEXT,
    website TEXT
);

CREATE TABLE generations (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    email TEXT NOT NULL,
    input_data JSONB,
    output_data JSONB,
    type TEXT,
    model TEXT,
    created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE conversations (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    conversation JSONB,
    title TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    user_id UUID REFERENCES profiles(id),
    type TEXT
);

CREATE TABLE documents (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    user_id UUID REFERENCES profiles(id),
    title TEXT,
    url TEXT,
    created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE recordings (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    file_url TEXT,
    user_id UUID REFERENCES profiles(id),
    created_at TIMESTAMPTZ DEFAULT now()
);
