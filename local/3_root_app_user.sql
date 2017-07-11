set @app_realm_name := 'APP_REALM_PH';
set @root_user_name := 'ROOT_APP_USER_PH';
set @root_user_pwd := 'ROOT_APP_PWD_PH';

INSERT INTO USR (EMAIL, FIRSTNAME, LASTNAME, PWD) VALUES (@root_user_name, @root_user_name, @root_user_name, MD5(CONCAT_WS(':', @root_user_name, @app_realm_name, @root_user_pwd)));
