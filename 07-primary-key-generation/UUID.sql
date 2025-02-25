CREATE TABLE user5 (
	"user_id" UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
	"username" VARCHAR( 100 )
);