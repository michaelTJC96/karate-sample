function fn() {
  var env = karate.env || 'dev';
  var config = {
    env: env,
    baseUrl: 'https://reqres.in/api'
    apiToken: karate.properties['API_TOKEN']
  };

  if (config.apiToken) {
    karate.configure('headers', { 'x-api-key': config.apiToken });
  }

  karate.configure('headers', { Accept: 'application/json' });

  return config;
}
