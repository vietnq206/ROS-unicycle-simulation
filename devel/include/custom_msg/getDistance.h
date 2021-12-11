// Generated by gencpp from file custom_msg/getDistance.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSG_MESSAGE_GETDISTANCE_H
#define CUSTOM_MSG_MESSAGE_GETDISTANCE_H

#include <ros/service_traits.h>


#include <custom_msg/getDistanceRequest.h>
#include <custom_msg/getDistanceResponse.h>


namespace custom_msg
{

struct getDistance
{

typedef getDistanceRequest Request;
typedef getDistanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct getDistance
} // namespace custom_msg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::custom_msg::getDistance > {
  static const char* value()
  {
    return "59d4abc9a91cdb664f2e1f1ab2e98752";
  }

  static const char* value(const ::custom_msg::getDistance&) { return value(); }
};

template<>
struct DataType< ::custom_msg::getDistance > {
  static const char* value()
  {
    return "custom_msg/getDistance";
  }

  static const char* value(const ::custom_msg::getDistance&) { return value(); }
};


// service_traits::MD5Sum< ::custom_msg::getDistanceRequest> should match
// service_traits::MD5Sum< ::custom_msg::getDistance >
template<>
struct MD5Sum< ::custom_msg::getDistanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::custom_msg::getDistance >::value();
  }
  static const char* value(const ::custom_msg::getDistanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::custom_msg::getDistanceRequest> should match
// service_traits::DataType< ::custom_msg::getDistance >
template<>
struct DataType< ::custom_msg::getDistanceRequest>
{
  static const char* value()
  {
    return DataType< ::custom_msg::getDistance >::value();
  }
  static const char* value(const ::custom_msg::getDistanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::custom_msg::getDistanceResponse> should match
// service_traits::MD5Sum< ::custom_msg::getDistance >
template<>
struct MD5Sum< ::custom_msg::getDistanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::custom_msg::getDistance >::value();
  }
  static const char* value(const ::custom_msg::getDistanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::custom_msg::getDistanceResponse> should match
// service_traits::DataType< ::custom_msg::getDistance >
template<>
struct DataType< ::custom_msg::getDistanceResponse>
{
  static const char* value()
  {
    return DataType< ::custom_msg::getDistance >::value();
  }
  static const char* value(const ::custom_msg::getDistanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CUSTOM_MSG_MESSAGE_GETDISTANCE_H
