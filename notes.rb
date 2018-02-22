url ="https://en.wikipedia.org/w/api.php?action=opensearch&search=escape-rupert-holmes-song&limit=1&namespace=0&format=json"
response = RestClient.get(url)
JSON.parse(response)
JSON.parse(response)[3][0]

158984a375c8c79d717e468cd7fe06bb

# patch notes
# more randomization (2xshuffle)
# autocomplete for places
# result by places