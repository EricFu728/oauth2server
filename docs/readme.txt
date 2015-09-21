OAuth Server


server.php

database configuration
create $storage
create $server
add grant type



=========================================================


1.authorize.php

validate request and return authorize code




2.token.php
create access_token etc.

	1) create token by authorise code that created by step 1.
	parameter: 	code
			grant_type:authorize_code
			state
	2)create token by refresh token
	parameter:	grant_type:refresh_token
			refresh_token: get by step 1)

3.resource.php

using access_token(get by step 2) to retrieve protected source
