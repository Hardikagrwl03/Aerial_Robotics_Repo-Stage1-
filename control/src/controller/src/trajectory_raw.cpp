#include <bits/stdc++.h>
#include "/home/hardik/team_4/workspace/spline_lib/spline.h"
#include <ros/ros.h>
#include <std msgs/Twists.h>
#include <sstream>
#include <geometry_msgs/PoseStamped.h>

int main(int argc, char **argv) {
   std::vector<double> X = {0.0, 1.0, 2.0, 3.0, 4.0}; // must be increasing
   std::vector<double> Y = {0.0, 1.0, 0.0, -1.0, 0.0};
   std::vector<double> Z = {1.0, 1.0, 1.0, 1.0, 1.0};

   tk::spline f(X,Y);
   tk::spline g(X,Z);

   ros::init(argc, argv, "trajectory_raw");
   ros::NodeHandle n;

   ros::Publisher trajectory_pub=nh.advertise<geometry_msgs::PoseStamped>("firefly/command/pose", 100);
   ros::Rate loop_rate(10);

   double x = X[0];
   int count=0;
   while(ros::ok() && x<=X[(size(X)-1)]){
      geometry_msgs::PoseStamped msg;
      msg.pose.position.x=x
      msg.pose.position.y=f(x);
      msg.pose.poaition.z=g(x);
      trajectory_pub.publish(msg);
      ROS_INFO("%d %d %d\n", msg.pose.position.x, msg.pose.position.y, msg.pose.position.z);

      ros::spinOnce();
      loop_rate.sleep();
      ++count;
      x = x + 0.1;
   }  

   return 0;
}