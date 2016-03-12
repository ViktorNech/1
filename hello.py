def app(environ, start_response):
  status = '200 OK'
  response_headers = [('Content-Type','text/plain')]
  start_response(status, response_headers)
  resp = environ['QUERY_STRING']
  resp = resp.replace('&','\r\n')
  return resp
