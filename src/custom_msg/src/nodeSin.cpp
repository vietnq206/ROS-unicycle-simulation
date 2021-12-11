 
#include "ros/ros.h"
 
#include "std_msgs/String.h"
#include "custom_msg/custom.h"
#include <string.h>
#include <math.h>
 

class Component{
public:
  double time_in;
  double data;
  double time_prev;
  int buffSize = 1000;
  std::string InPort,OutPort;
  std::string nodeName;
  ros::Publisher signal_pub;
  custom_msg::custom msgOut;
  Component (ros::NodeHandle nodeIn){
    msgOut.time = -1;
    msgOut.data = 0;  
    nodeName = ros::this_node::getName();
    nodeIn.getParam(ros::this_node::getName()+"/InPort1",InPort);
    nodeIn.getParam(ros::this_node::getName()+"/OutPort1",OutPort); 
    
  }

  void initPub(ros::NodeHandle nodeIn){
    signal_pub = nodeIn.advertise<custom_msg::custom>(OutPort, buffSize);
  }
  void signalCallback(const custom_msg::custom::ConstPtr& msg){
    if (msg->time ==0 || msgOut.time != msg->time)
      {        
      msgOut.time = msg->time;
      msgOut.data = sin(msg->data);
      signal_pub.publish(msgOut);
      }
   // ros::spinOnce();
  }
};


int main(int argc, char **argv)
{
  ros::init(argc, argv, "func_Sin"); 
  ros::NodeHandle node;

  Component *comp = new Component(node);

  comp->initPub(node);
  ros::Subscriber sub = node.subscribe(comp->InPort,100, &Component::signalCallback,comp); 


  ros::spin(); 
  
  delete comp;
  return 0;
}
 
