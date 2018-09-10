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


case class Activity (
  // type of activity
  `type`: Option[String] = None,
  // id referring to the underlying service or shipment, i.e. the shipment or service this activity belongs to
  id: Option[String] = None,
  // id that refers to address
  locationId: Option[String] = None,
  // address of activity
  address: Option[Address] = None,
  // arrival time at this activity in seconds
  arrTime: Option[Long] = None,
  // end time of and thus departure time at this activity
  endTime: Option[Long] = None,
  // end date time with offset like this 1970-01-01T01:00+01:00
  endDateTime: Option[String] = None,
  // arrival date time with offset like this 1970-01-01T01:00+01:00
  arrDateTime: Option[String] = None,
  // waiting time at this activity in seconds
  waitingTime: Option[Long] = None,
  // preparation time at this activity in seconds
  preparationTime: Option[Long] = None,
  // cumulated distance from start to this activity in m
  distance: Option[Long] = None,
  // driving time of driver in seconds
  drivingTime: Option[Long] = None,
  // Array with size/capacity dimensions before this activity
  loadBefore: Option[List[Integer]] = None,
  // Array with size/capacity dimensions after this activity
  loadAfter: Option[List[Integer]] = None
)

