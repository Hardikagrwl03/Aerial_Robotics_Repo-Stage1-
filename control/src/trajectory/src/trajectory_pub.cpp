#include <bits/stdc++.h>
#include "/home/hardik/team_4/workspace/spline_lib/spline.h"
#include <ros/ros.h>
#include <sstream>
#include <geometry_msgs/PoseStamped.h>

int main(int argc, char **argv) {
   std::vector<double> T = {0.0, 1.0, 2.0, 3.0, 4.0, 5.0};
   std::vector<double> X = {0.0, 6.0, 9.0, 6.0, 2.0, 6.0}; // must be increasing
   std::vector<double> Y = {0.0, 0.0, -4.0, -8.0, -4.0, 0.0};
   std::vector<double> Z = {0.0, 2.5, 2.5, 2.5, 2.5, 2.5};

   tk::spline path_x(T,X);      
   tk::spline path_y(T,Y);
   tk::spline path_z(T,Z);

   ros::init(argc, argv, "trajectory_pub");
   ros::NodeHandle nh;

   ros::Publisher trajectory_pub=nh.advertise<geometry_msgs::PoseStamped>("command/pose", 100);
   ros::Rate loop_rate(10);

   double t= T[0];
   int count=0;
   // for(int i=1; i<X.size(); i++){
      while(ros::ok()){
         geometry_msgs::PoseStamped msg;
         msg.pose.position.x=path_x(t);
         msg.pose.position.y=path_y(t);
         msg.pose.position.z=path_z(t);
         // msg.pose.orientation.x = 
         trajectory_pub.publish(msg);
         ROS_INFO("%f %f %f   ", msg.pose.position.x, msg.pose.position.y, msg.pose.position.z);

         ros::spinOnce();
         loop_rate.sleep();
         ++count;
         if(t < T[T.size()-1]){
            t = t + 0.05;
         } 
      }
   // }  

   return 0;
}