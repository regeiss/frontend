#!/usr/bin/env python3
"""
Simple CORS proxy for local development
Usage: python local_cors_proxy.py
"""

from flask import Flask, request, Response
import requests
import json

app = Flask(__name__)

# Target API URL
TARGET_URL = "https://dev-ca-unico.novohamburgo.rs.gov.br/api/v1"

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def proxy(path):
    # Construct the target URL
    target_url = f"{TARGET_URL}/{path}"
    
    # Get the request method and data
    method = request.method
    headers = dict(request.headers)
    
    # Remove host header to avoid conflicts
    headers.pop('Host', None)
    
    # Get request data
    data = None
    if method in ['POST', 'PUT', 'PATCH']:
        if request.is_json:
            data = json.dumps(request.get_json())
            headers['Content-Type'] = 'application/json'
        else:
            data = request.get_data()
    
    # Make the request to the target API
    try:
        response = requests.request(
            method=method,
            url=target_url,
            headers=headers,
            data=data,
            params=request.args,
            timeout=30
        )
        
        # Create response with CORS headers
        proxy_response = Response(
            response.content,
            status=response.status_code,
            headers=dict(response.headers)
        )
        
        # Add CORS headers
        proxy_response.headers['Access-Control-Allow-Origin'] = '*'
        proxy_response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
        proxy_response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization, Accept'
        
        return proxy_response
        
    except requests.exceptions.RequestException as e:
        return Response(
            json.dumps({'error': str(e)}),
            status=500,
            headers={'Content-Type': 'application/json'}
        )

@app.route('/', methods=['OPTIONS'])
def options():
    response = Response()
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization, Accept'
    return response

if __name__ == '__main__':
    print("Starting local CORS proxy server...")
    print(f"Target API: {TARGET_URL}")
    print("Local proxy: http://localhost:8000")
    print("Update your .env file to use: API_BASE_URL=http://localhost:8000")
    print("\nPress Ctrl+C to stop the server")
    app.run(host='0.0.0.0', port=8000, debug=True)
