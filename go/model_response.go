/*
 * GraphHopper Directions API
 *
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package graphhopper

type Response struct {
	Copyrights []string `json:"copyrights,omitempty"`

	// unique identify of job - which you get when posting your request to the large problem solver
	JobId string `json:"job_id,omitempty"`

	// indicates the current status of the job
	Status string `json:"status,omitempty"`

	// waiting time in ms
	WaitingTimeInQueue int64 `json:"waiting_time_in_queue,omitempty"`

	// processing time in ms. if job is still waiting in queue, processing_time is 0
	ProcessingTime int64 `json:"processing_time,omitempty"`

	// the solution. only available if status field indicates finished
	Solution *Solution `json:"solution,omitempty"`
}
