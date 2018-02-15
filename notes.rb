url ="https://en.wikipedia.org/w/api.php?action=opensearch&search=escape-rupert-holmes-song&limit=1&namespace=0&format=json"
uri=URI(url)
response = RestClient.get(url)
JSON.parse(response)
JSON.parse(response)[3][0]
