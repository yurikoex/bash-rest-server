fooRoute() {
   add_response_header "Content-Type" "application/json"
   results=$(jq ".foo = \"$2\"" $(pwd)/routes/foo/template.json)
   send_response_ok_exit <<< $results
}

on_uri_match '^/api/foo/(.*)$' fooRoute
