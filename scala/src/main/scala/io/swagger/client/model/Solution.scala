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

package io.swagger.client.model


case class Solution (
  // overall costs of solution
  costs: Option[Integer] = None,
  // overall travel distance in meters
  distance: Option[Integer] = None,
  // overall transport time in seconds
  time: Option[Long] = None,
  // overall transport time in seconds
  transportTime: Option[Long] = None,
  // operation time of the longest route in seconds
  maxOperationTime: Option[Long] = None,
  // total waiting time in seconds
  waitingTime: Option[Long] = None,
  // total service time in seconds
  serviceDuration: Option[Long] = None,
  // total preparation time in seconds
  preparationTime: Option[Long] = None,
  // total completion time in seconds
  completionTime: Option[Long] = None,
  // number of employed vehicles
  noVehicles: Option[Integer] = None,
  // number of jobs that could not be assigned to final solution
  noUnassigned: Option[Integer] = None,
  // An array of routes
  routes: Option[List[Route]] = None,
  unassigned: Option[SolutionUnassigned] = None
)

