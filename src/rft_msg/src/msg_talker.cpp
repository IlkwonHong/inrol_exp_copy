#include "ros/ros.h"		//ros header
#include "rft_msg/rft.h"	//custom message header - made while doing cmake
#include <sstream>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "exp_sensor_node");
	ros::NodeHandle n;

	ros::Publisher chatter_pub = n.advertise<rft_msg::rft>("exp_result",1000);
	//setting frequency_____ loop_rate(n) = n Hz
	ros::Rate loop_rate(1000);

	int count = 0;
	while(ros::ok())
	{
		rft_msg::rft msg;

		msg.f_x = count;
		msg.f_y = count;
		msg.f_z = count;

		chatter_pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}
	return 0;

}
