const app = require('express')();
const { logger } = require('./util/logger');

app.get('/', (_, res) => {
  const msg = 'server ok';
  logger.info(msg);
  res.send(msg);
});
app.get('/health', (_, res) => res.send('health ok'));
app.get('/testnode', (_, res) => res.send('testnode ok'));

app.listen(3000);
