/**
* GraphHopper Directions API
* You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/
package io.swagger.client.models

import io.swagger.client.models.Solution

/**
 * 
 * @param copyrights 
 * @param job_id unique identify of job - which you get when posting your request to the large problem solver
 * @param status indicates the current status of the job
 * @param waiting_time_in_queue waiting time in ms
 * @param processing_time processing time in ms. if job is still waiting in queue, processing_time is 0
 * @param solution the solution. only available if status field indicates finished
 */
data class Response (
    val copyrights: kotlin.Array<kotlin.String>? = null,
    /* unique identify of job - which you get when posting your request to the large problem solver */
    val job_id: kotlin.String? = null,
    /* indicates the current status of the job */
    val status: Response.Status? = null,
    /* waiting time in ms */
    val waiting_time_in_queue: kotlin.Long? = null,
    /* processing time in ms. if job is still waiting in queue, processing_time is 0 */
    val processing_time: kotlin.Long? = null,
    /* the solution. only available if status field indicates finished */
    val solution: Solution? = null
) {

    /**
    * indicates the current status of the job
    * Values: waitingInQueue,processing,finished
    */
    enum class Status(val value: kotlin.Any){
    
        waitingInQueue("waiting_in_queue"),
    
        processing("processing"),
    
        finished("finished");
    
    }

}

