package boot

import (
	"github.com/gin-gonic/gin"
	"github.com/thinhlh/ht07090812/internal/app/controller"
)

func Init() {
	r := gin.New()

	r.Use(gin.Logger())
	r.Use(gin.Recovery())
	// TODO add cors

	api := r.Group("/api")
	{
		v1 := api.Group("/v1")
		{
			v1.GET("/", controller.GetRoot)
			v1.POST("/reminder", controller.PushReminder)
		}
	}

	r.Run(":8080")
}
