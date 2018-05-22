# modjk_zabbix

Zabbix external Script for modjk

	
The auto discovery Creates tge following items


	{#_NAME} state	modjk[state, {#_NAME}]	5m	7d		External check	modjk	Enabled
	{#_NAME} sessions	modjk[sessions, {#_NAME}]	5m	7d	365d	External check	modjk	Enabled
	{#_NAME} errors	modjk[errors, {#_NAME}]	5m	7d	365d	External check	modjk	Enabled
	{#_NAME} connected	modjk[connected, {#_NAME}]	5m	7d	365d	External check	modjk	Enabled
  
  And triggers
    	Warning	More than 10 errors on workrer {#_NAME} More than 100 errors on workrer {#_NAME} {template_modjk:modjk[errors, {#_NAME}].last()}>10
  
	High	More than 100 errors on workrer {#_NAME}	{template_modjk:modjk[errors, {#_NAME}].last()}>100	
  
	Warning	Worker {#_NAME} in error state	{template_modjk:modjk[state, {#_NAME}].str(OK)}=0# New Document
  
