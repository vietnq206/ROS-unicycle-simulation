 
#include "ros/ros.h"
 
#include "std_msgs/String.h"
#include "custom_msg/custom.h"
#include <string.h>

 

int main(int argc, char **argv)
{
 
    ros::init(argc, argv, "pub_GenTime");
    ros::NodeHandle node;
    int LoopRate;
    double deltaTime;
    node.getParam("LoopRate",LoopRate);
    node.getParam("deltaTime",deltaTime);

    std::string nodeName = ros::this_node::getName();
    ros::Publisher signal_pub = node.advertise<custom_msg::custom>( "generateTime", 1000);
    ros::Rate loop_rate(LoopRate);
    double time = 0;
    while (ros::ok())
    {

        custom_msg::custom msg;
        time = time + deltaTime;
        msg.time = time; 
        msg.data = time;
        signal_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();

    }

  return 0;
}
 
