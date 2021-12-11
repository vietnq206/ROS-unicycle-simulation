#include "ros/ros.h"
#include "custom_msg/getDistance.h"
#include "custom_msg/custom.h"
#include <math.h>



struct Robot{
    std::string robot_name;
    std::string data_time;
    double x;
    double y;
};


// class RobotMonitor{
// private:
//     Robot rb;    
// public:
//     RobotMonitor(){
//         rb.robot_name = "None";
//         rb.data_time = "None";
//         rb.x = 0;
//         rb.y = 0;
//     }

//     void signalCallback(const custom_msg::custom::ConstPtr& msg){
//         rb.robot_name =  msg->robot_name.data ;
//         rb.data_time =  msg->data_time.data ;
//         rb.x = msg->location.x;
//         rb.y = msg->location.y;
//     }
//     bool getDis(custom_msg::getDistance::Request &req,
//             custom_msg::getDistance::Response &res)
//     {
//         res.distance = std::sqrt(std::pow((req.locX - rb.x),2) + std::pow((req.locY - rb.y),2) );
//         ROS_INFO("Request calculate distance from robot to : x=%ld, y=%ld", (long int)req.locX, (long int)req.locY);
//         ROS_INFO("sending back response: [%ld]", (long int)res.distance);
//         return true;
//     } 
  
// };
int main(int argc, char **argv)
{
    // ros::init(argc, argv, "calDistance_server");
    // ros::NodeHandle node;
    // RobotMonitor robot;
    // ros::Subscriber sub = node.subscribe("custom_signal", 50, &RobotMonitor::signalCallback,&robot);
    // ros::ServiceServer service = node.advertiseService("calDistance", &RobotMonitor::getDis, &robot);
    // ROS_INFO("Ready to calculate distance.");
    // ros::spin();

    return 0;
}