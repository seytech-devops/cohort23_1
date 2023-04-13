# Class Notes - 20230412

# EBS (Elastic Block Storage)
    Storage volumes you can attach to your ec2. 
        - Use them the same way you would use any system disk.
            * Create a file system.
            * Run a DB
            * Run an operating system
            * Store data
            * install application


-    It's like a virtual hard disk that is in the cloud. But it's not in one physical hard disk, but it might exist across multiple disks, multiple different Data Centers inside a single AZ(always be in that singe AZ).

---
## Characteristics:
1. Production Workloads
    Designed for mission-critical workloads
2. Highly Available
    automatically replicated within a single AZ to protect against hardware failures.
3. Scalable 
 
---
## Different EBS volume types:

    gp2 (General Purpose SSD):
        - Blanace of price and performance
        - 3 IOPS per GiB, up to max of 16,000 IOPS per volume
        - gp2 volumes smaller than 1 TB can burst up to 3,000 IOPS
        - Good for Boot Volumes or development and test apps that are not latency sensitive
    
    gp3 (G P 3 SSD):
        - A balance of price and performance
        - Predictable 3.000 IOPS baseline performance and 125 Mib/s regardless of volume size. 
        - Ideal for apps that require high performance at a low cost, such as MySQL, Cassandra, virtual desktop, and Hadoop analytics. 
        - Customers looking for higher performance can scale up to 16.000 IOPS and 1.000 MiB/s for an additional fee. 
        - The top performance of gp3 is 4 times faster than max throughput of gp2 volumes. 

    io1 (Provisioned IOPS SSD):
        - Up to 64.000 IOPS per volume 50 IOPS per GIB.
        - Designed for I/O-intensive apps, large DB, and latency-sensitive workloads.
    
    io2 (P IOPS SSD):
        - Latest gen
        - Higher durability and more IOPS. 
        - io2 is the same price as io1.


# EFS
    Amazon Elastic File System (Amazon EFS) is a fully-managed cloud-based file storage service provided by Amazon Web Services (AWS). It provides scalable, high-performance, and secure file storage that can be accessed from multiple instances concurrently.

    Amazon EFS uses the Network File System (NFS) protocol, which allows multiple Amazon EC2 instances to access the same file system concurrently, enabling them to share data and workloads. It is designed to be highly available, durable, and scalable, automatically growing and shrinking as you add and remove files.

    Amazon EFS is particularly useful for applications that require shared access to data across multiple instances. This includes content repositories, development environments, and web serving applications, among others. It also integrates with other AWS services, such as Amazon EC2, Amazon S3, and AWS Lambda, making it easy to build scalable and resilient applications in the cloud.


