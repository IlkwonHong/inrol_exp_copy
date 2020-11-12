#include "ros/ros.h"		//ros header
#include "rft_msg/rft.h"	//custom message header - made while doing cmake
#include <pthread.h>
#include <unistd.h>
#include "RFT_UART_SAMPLE.h"
#include "RFT_IF_PACKET_Rev1.2.h"
#include "WinTypes.h"


BYTE port = 0;									// ttyUSB#	 the number of #
DWORD buad = B115200;
DWORD byte_size = CS8;
CRT_RFT_UART RFT_SENSOR;
float		g_force_divider 	= 50.0f;			// for more information to refer the RFT sensor manual
float		g_torque_divider 	= 2000.0f;			// for more information to refer the RFT sensor manual

int main(int argc, char **argv)
{
	ros::init(argc, argv, "exp_sensor_node");
	ros::NodeHandle n;

	ros::Publisher chatter_pub = n.advertise<rft_msg::rft>("exp_result",1000);
	//setting frequency_____ loop_rate(n) = n Hz
	ros::Rate loop_rate(1000);

	char devName[] = "/dev/ttyUSB";
	RFT_SENSOR.openPort( devName, port, buad, byte_size );
	RFT_SENSOR.m_RFT_IF_PACKET.setDivider(g_force_divider, g_torque_divider); // V1.1
	usleep(1000000);
	RFT_SENSOR.set_FT_Bias(1);
	ROS_INFO("bias set");
	RFT_SENSOR.rqst_FT_Continuous();

	int count = 0;
	while(ros::ok())
	{
		rft_msg::rft msg;
		

		msg.f_x = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[0];
		msg.f_y = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[1];
		msg.f_z = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[2];
		msg.tau_x = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[3];
		msg.tau_y = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[4];
		msg.tau_z = RFT_SENSOR.m_RFT_IF_PACKET.m_rcvdForce[5];


		chatter_pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}
	return 0;

}
