import os
from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        message = (
            "DevOps Student Application\n"
            f"Name: {os.getenv('STUDENT_NAME', 'Erasyl')}\n"
            f"Surname: {os.getenv('STUDENT_SURNAME', 'Imashev')}\n"
            f"Group: {os.getenv('STUDENT_GROUP', 'IT2-2301')}\n"
            f"Student ID: {os.getenv('STUDENT_ID', '37792')}\n"
        )
        self.send_response(200)
        self.end_headers()
        self.wfile.write(message.encode())

print("Application running on port 8080", flush=True)
HTTPServer(("0.0.0.0", 8080), Handler).serve_forever()
