# Example CORS configuration for FastAPI
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",  # Flutter web dev server
        "http://localhost:8080",  # Alternative Flutter web port
        "http://127.0.0.1:3000",
        "http://127.0.0.1:8080",
        "https://your-production-domain.com",  # Add your production domain
    ],
    allow_credentials=True,
    allow_methods=["*"],  # Allows all methods
    allow_headers=["*"],  # Allows all headers
)

# For development only (NOT recommended for production):
# allow_origins=["*"]  # Allows all origins 