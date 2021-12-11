#include "ros/ros.h"
#include "custom_msg/getDistance.h"
#include <cstdlib>

int main( int argc, char **argv){
    // ros::init(argc,argv,"calculate_distance_to_robot");

    // if ( argc != 3){
    //     ROS_INFO("usage: input 2 values as X and Y coordinate!");
    //     return 1;
    // }

    // ros::NodeHandle node;
    // ros::ServiceClient client = node.serviceClient<custom_msg::getDistance>("calDistance");

    // custom_msg::getDistance srv;
    // srv.request.locX = atoll(argv[1]);
    // srv.request.locY = atoll(argv[2]);
    // if(client.call(srv)){
    //     ROS_INFO("Sum: %f", (float)srv.response.distance);
    // }
    // else{
    //     ROS_ERROR("Failed to call service calDistance!");
    //     return 1;
    // }
    
    return 0;
}