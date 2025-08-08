# ✅ CORRIGIDO: CORS Configuration para Flutter Web
# Substitua a seção CORS no seu settings.py por esta:

# CORS Configuration - CORRIGIDO PARA FLUTTER WEB
CORS_ALLOW_ALL_ORIGINS = True  # Para desenvolvimento
CORS_ALLOW_CREDENTIALS = True

# Headers específicos para Flutter Web
CORS_ALLOW_HEADERS = [
    'accept',
    'accept-encoding',
    'authorization',
    'content-type',
    'dnt',
    'origin',
    'user-agent',
    'x-csrftoken',
    'x-requested-with',
    'access-control-allow-origin',
    'access-control-allow-methods',
    'access-control-allow-headers',
]

# Métodos permitidos
CORS_ALLOW_METHODS = [
    'DELETE',
    'GET',
    'OPTIONS',
    'PATCH',
    'POST',
    'PUT',
]

# Para produção, use esta configuração em vez de CORS_ALLOW_ALL_ORIGINS = True:
# CORS_ALLOWED_ORIGINS = [
#     "http://localhost:3000",
#     "http://localhost:8080",
#     "http://127.0.0.1:3000",
#     "http://127.0.0.1:8080",
#     "https://your-production-domain.com",
# ]

# Configurações adicionais para resolver conflitos de segurança
CORS_EXPOSE_HEADERS = [
    'content-type',
    'authorization',
]

# Configuração para preflight requests
CORS_PREFLIGHT_MAX_AGE = 86400  # 24 horas 