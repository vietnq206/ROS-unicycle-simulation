
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "custom_msg/custom.h"


void signalCallback(const custom_msg::custom::ConstPtr& msg)
{
 std::cout<<"------------------------------------------------"<<std::endl;
 std::cout<<" Robot name: "<<msg->time<<std::endl; 
 std::cout<<std::endl;
}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "sub_msg");
  ros::NodeHandle node;
  std::string InPort;

  std::string nodeName = ros::this_node::getName();
  node.getParam(nodeName+"/InPort1",InPort);
  ros::Subscriber sub = node.subscribe(InPort, 50, signalCallback);



  ros::spin(); 
  return 0;
}

