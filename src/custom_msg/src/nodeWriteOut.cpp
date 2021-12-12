 
#include "ros/ros.h"
 
#include "std_msgs/String.h"
#include "custom_msg/custom.h"
#include <string.h>
#include <iostream>
#include <fstream>


class WriteFile{ 
std::ofstream myfile;
ros::Publisher signal_pub ;
public:
  WriteFile(std::string nameFile,ros::NodeHandle node ){
    myfile.open(nameFile);
      if (!myfile.is_open()){ 
        throw "Can not open file!";
      }
   signal_pub = node.advertise<custom_msg::custom>( "outWrite", 1000);
  }
  ~WriteFile(){
    myfile.close();
  }
  void signalCallback(const custom_msg::custom::ConstPtr& msg){ 
    
    myfile << msg->time << " "<< msg->data <<"\n";
    
    signal_pub.publish(msg);
  }
};







int main(int argc, char **argv)
{
  ros::init(argc, argv, "write_data"); 
  ros::NodeHandle node;
  
  std::string Inport;
  std::string FileName;
  std::string nodeName = ros::this_node::getName();
  node.getParam(ros::this_node::getName()+"/FileOutName",FileName);
  node.getParam(ros::this_node::getName()+"/InPort1",Inport);

    // WriteFile File(FileName); 
    // ros::Subscriber sub = node.subscribe(Inport,100, &WriteFile::signalCallback, &File); 
   
  try {
    WriteFile File(FileName,node); 
    ros::Subscriber sub = node.subscribe(Inport,100, &WriteFile::signalCallback, &File); 

    ros::spin(); 
 

  } catch (const char* msg) {
     std::cerr << msg << std::endl;
  }
 
 
  
  return 0;
}
 
