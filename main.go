package main

import (
	"fmt"
	"log"

	"github.com/gofiber/fiber/v2"
)

func main() {
	app := fiber.New()

	app.Get("/", func(c *fiber.Ctx) error {
		msg := fmt.Sprintf("Hello World :)")
		return c.SendString(msg)
	})

	log.Fatal(app.Listen(":80"))
}
