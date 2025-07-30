select id, password, MD5(password) as MD5 -- Usa a função MD5 para criptografar as senhas
from account
