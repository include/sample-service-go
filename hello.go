package main

import (
    "fmt"
    "log"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    log.Printf("Got request with path %s", r.URL.Path[1:])
    fmt.Fprint(w, "Hello from a Go web-server.")
}

func main() {
    log.Println("Started simple web server.")
    http.HandleFunc("/", handler)
    http.ListenAndServe(":8081", nil)
}
