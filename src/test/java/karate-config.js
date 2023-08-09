function fn(){
	
	let config = {
		name : "Ghada",
		baseUrl : 'https://reqres.in/api/users/2'
	};
	let env = karate.env
	karate.log('The value of env is : ', env);
	
	if(env=='qa'){
		config.baseUrl = 'https://qa.in/api/users/2'
	}
	
	else if (env == 'dev'){
		config.baseUrl = 'https://dev.in/api/users/2'
	}
	
		else {
		config.baseUrl = 'https://default.in/api/users/2'
	}
	return config;
}