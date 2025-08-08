# ✅ CORRIGIDO: Security Settings para permitir CORS
# Adicione estas configurações no seu settings.py para desenvolvimento:

# Para desenvolvimento, relaxe algumas configurações de segurança
if DEBUG:
    # Desabilite algumas configurações de segurança que podem interferir com CORS
    SECURE_SSL_REDIRECT = False
    SESSION_COOKIE_SECURE = False
    CSRF_COOKIE_SECURE = False
    SECURE_BROWSER_XSS_FILTER = False
    SECURE_CONTENT_TYPE_NOSNIFF = False
    SECURE_HSTS_SECONDS = 0
    SECURE_HSTS_INCLUDE_SUBDOMAINS = False
    SECURE_HSTS_PRELOAD = False
    X_FRAME_OPTIONS = 'SAMEORIGIN'  # Permite iframes para desenvolvimento
    
    # Configurações específicas para CORS em desenvolvimento
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    
    # Headers adicionais para Flutter Web
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
    
    # Expose headers para Flutter
    CORS_EXPOSE_HEADERS = [
        'content-type',
        'authorization',
    ]

# Para produção, mantenha as configurações de segurança originais
else:
    SECURE_SSL_REDIRECT = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SECURE = True
    SECURE_BROWSER_XSS_FILTER = True
    SECURE_CONTENT_TYPE_NOSNIFF = True
    SECURE_HSTS_SECONDS = 31536000
    SECURE_HSTS_INCLUDE_SUBDOMAINS = True
    SECURE_HSTS_PRELOAD = True
    X_FRAME_OPTIONS = 'DENY'
    
    # CORS para produção
    CORS_ALLOW_ALL_ORIGINS = False
    CORS_ALLOWED_ORIGINS = [
        "https://your-production-domain.com",
        "https://www.your-production-domain.com",
    ] 