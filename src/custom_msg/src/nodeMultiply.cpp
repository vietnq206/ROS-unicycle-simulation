 
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
  std::string InPort1, InPort2,OutPort;
  std::string nodeName;
  ros::Publisher signal_pub;
  custom_msg::custom msgOut,msgInP1, msgInP2;
  Component (ros::NodeHandle nodeIn){
    msgInP1.time = -1;
    msgInP1.data = 0;  
    msgInP2.time = -1;
    msgInP2.data = 0; 
    nodeName = ros::this_node::getName();
    nodeIn.getParam(ros::this_node::getName()+"/InPort1",InPort1);
    nodeIn.getParam(ros::this_node::getName()+"/InPort2",InPort2);
    nodeIn.getParam(ros::this_node::getName()+"/OutPort1",OutPort); 
    
  }

  void initPub(ros::NodeHandle nodeIn){
    signal_pub = nodeIn.advertise<custom_msg::custom>(OutPort, buffSize);
  }
  void signalCallback_Port1(const custom_msg::custom::ConstPtr& msg){
    if (msg->time ==0 || msgInP1.time != msg->time)
      {        
      msgInP1.time = msg->time;
      std::cout<<" DAta from port 1:"<<msg->data<<" > "<<msg->time<<std::endl;
      //msgOut.data = sin(msg->data);
      //signal_pub.publish(msgOut);
      }
   // ros::spinOnce();
  }
    void signalCallback_Port2(const custom_msg::custom::ConstPtr& msg){
    if (msg->time ==0 || msgInP2.time != msg->time)
      {        
      msgInP1.time = msg->time;
      std::cout<<" DAta from port 2:"<<msg->data<<" > "<<msg->time<<std::endl;
      //msgOut.data = sin(msg->data);
      //signal_pub.publish(msgOut);
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
  ros::Subscriber sub1 = node.subscribe(comp->InPort1,100, &Component::signalCallback_Port1,comp); 
  ros::Subscriber sub2 = node.subscribe(comp->InPort2,100, &Component::signalCallback_Port2,comp); 
	
  int LoopRate;
  double result;
  node.getParam("LoopRate",LoopRate);
  ros::Rate loop_rate(LoopRate);
  while (ros::ok()) { 
    ros::spinOnce();
    
    if(comp->msgInP1.time ==  comp->msgInP2.time){
     comp->msgOut.data = comp->msgInP1.data * comp->msgInP2.data;
     signal_pub.publish(msgOut)   
    }

    loop_rate.sleep();
    
	}
  
  delete comp;
  return 0;
}
 
