 
#include "ros/ros.h"
 
#include "std_msgs/String.h"
#include "custom_msg/custom.h"
#include <string.h>

int main(int argc, char **argv)
{
 
  ros::init(argc, argv, "pub_msg");
  ros::NodeHandle node;
  ros::Publisher signal_pub = node.advertise<custom_msg::custom>("custom_signal", 1000);
  ros::Rate loop_rate(10);
  int num;
  std::string nodeName = ros::this_node::getName();
  node.getParam(nodeName+"/number_int",num);
  
  while (ros::ok())
  {
 
    custom_msg::custom msg;
    
 
 
    msg.time = 0;
    msg.time = 0;
  
    signal_pub.publish(msg);
    ros::spinOnce();
 
    loop_rate.sleep();

  }


  return 0;
}
 
