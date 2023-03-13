# Class Notes - 030923
# EC2

- Secure, resizable compute capacity in the cloud.
- Like a VM, only hosted in AWS instead of your own data center.
- Designed to make web-scale cloud computing easier for developers.
- The capacity you want when you need it.
- Pay only for what you use.
---

	So in this lesson, what we're going to do is we're going to start with the basics.
	We're going to learn what EC2 is.
	We're going to look at the different pricing options.
	
	
	Basically it's a virtual machine,but this virtual machine is hosted in AWS instead of your own data center.
	And it's designed to make web-scale cloud computing easier for developers
	Essentially what it does is it gives you the capacity that you want when you need it.
	You're in complete control of your own instances. It's not managed by AWS.
        AWS can't go in and log into your EC2 server.


| On-Demand | Reserved Instances | Spot | Dedicated |
| ----------- | ----------- | ------ | ---------- |
| Flexible:  Low cost and flexibility of ec2 without any upfrontor long-term commitment.   | Title   Predictable Usage: Applications with steady state or predictable usage | Application that have flexible start and end times. It's not good for the webservers, cuz if the price gonna change your instance might get terminated and your website will go down | Compliance: Regulatory requirements that may not support multi-tenant virtualization |
|Short-Term:Application with short-term, spiky, or unpredictable workloads that cannot be interrupted|Specific Capacity Requirements:Apps that require reserved capacity|Apps that are only feasible at very low compute prices.For ex: you can run your instance only at 2am during business days instead 9am on Mon|Licensing:Great for licensing that does not support multi-tenancy or cloud deployments| Testing the water:
Applications being developed or tested on Amazon EC2 for the first time|Pay up Front:you can make upfront payments to reduce  the total computing costs even further|users with an urgent need for large amounts of additional computing capacity|On-demand: Can be purchased on -demand (hourly)|
||Standard RIsUp to 72% off the on-demand price regardless of instance type or Region|||
||Convertible RIs Up to 54% off the on-demand price. Has the option to change to a different RI type of equal or greater value|||
||Scheduled RIs:Launch withing the time window you define. Match your capacity reservation to a predictable recurring schedule that only requires a fraction of a day, week, or month|||
||Super Flexible:Not only EC2, this also includes serverless technologies like lambda and Fargate||
