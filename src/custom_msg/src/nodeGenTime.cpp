 
#include "ros/ros.h"
 
#include "std_msgs/String.h"
#include "custom_msg/custom.h"
#include <string.h>

 

int main(int argc, char **argv)
{
 
    ros::init(argc, argv, "pub_GenTime");
    ros::NodeHandle node;
    int LoopRate;
    node.getParam("LoopRate",LoopRate);


    std::string nodeName = ros::this_node::getName();
    ros::Publisher signal_pub = node.advertise<custom_msg::custom>( "generateTime", 1000);
    ros::Rate loop_rate(LoopRate);
    double time = 0;
    while (ros::ok())
    {

        custom_msg::custom msg;
        time = time + 1;
        msg.time = time; 
        msg.data = time;
        signal_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();

    }

  return 0;
}
 
