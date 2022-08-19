package main
import "fmt"
func main() {
    fmt.Printf("Student password: %s \n", os.Getenv("STUDENT_PASSWORD"))
}
