<?php
return [
  'database' => [
    'host' => 'localhost',
    'port' => '',
    'charset' => NULL,
    'dbname' => 'crm_isp',
    'user' => 'root',
    'password' => '',
    'driver' => 'pdo_mysql'
  ],
  'smtpPassword' => '',
  'logger' => [
    'path' => 'data/logs/espo.log',
    'level' => 'WARNING',
    'rotation' => true,
    'maxFileNumber' => 30,
    'printTrace' => false
  ],
  'restrictedMode' => false,
  'webSocketMessager' => 'ZeroMQ',
  'clientSecurityHeadersDisabled' => false,
  'clientCspDisabled' => false,
  'clientCspScriptSourceList' => [
    0 => 'https://maps.googleapis.com'
  ],
  'isInstalled' => true,
  'microtimeInternal' => 1695057390.831071,
  'passwordSalt' => 'a5f1ffb6ea468fc3',
  'cryptKey' => '567733b33d80fa0c265d1862c9bddc0c',
  'hashSecretKey' => '8b46a7b7b6566d1c23ab03b0c1cb83c2',
  'actualDatabaseType' => 'mariadb',
  'actualDatabaseVersion' => '10.4.28'
];
