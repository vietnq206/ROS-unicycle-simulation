// Generated by gencpp from file custom_msg/getDistanceResponse.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSG_MESSAGE_GETDISTANCERESPONSE_H
#define CUSTOM_MSG_MESSAGE_GETDISTANCERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_msg
{
template <class ContainerAllocator>
struct getDistanceResponse_
{
  typedef getDistanceResponse_<ContainerAllocator> Type;

  getDistanceResponse_()
    : distance(0.0)  {
    }
  getDistanceResponse_(const ContainerAllocator& _alloc)
    : distance(0.0)  {
  (void)_alloc;
    }



   typedef double _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::custom_msg::getDistanceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msg::getDistanceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct getDistanceResponse_

typedef ::custom_msg::getDistanceResponse_<std::allocator<void> > getDistanceResponse;

typedef boost::shared_ptr< ::custom_msg::getDistanceResponse > getDistanceResponsePtr;
typedef boost::shared_ptr< ::custom_msg::getDistanceResponse const> getDistanceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msg::getDistanceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msg::getDistanceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::custom_msg::getDistanceResponse_<ContainerAllocator1> & lhs, const ::custom_msg::getDistanceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::custom_msg::getDistanceResponse_<ContainerAllocator1> & lhs, const ::custom_msg::getDistanceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace custom_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msg::getDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msg::getDistanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msg::getDistanceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acff7fda0c683c872875f5c4b069f124";
  }

  static const char* value(const ::custom_msg::getDistanceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xacff7fda0c683c87ULL;
  static const uint64_t static_value2 = 0x2875f5c4b069f124ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msg/getDistanceResponse";
  }

  static const char* value(const ::custom_msg::getDistanceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 distance\n"
"\n"
;
  }

  static const char* value(const ::custom_msg::getDistanceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct getDistanceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msg::getDistanceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msg::getDistanceResponse_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSG_MESSAGE_GETDISTANCERESPONSE_H
