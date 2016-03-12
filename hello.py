def app(environ, start_response):
  status = '200 OK'
  response_headers = [('Content-Type','text/plain')]
  resp = environ['QUERY_STRING'].split("&")
  start_response(status, response_headers)
  resp = [item+"\r\n" for item in resp]
  return resp
