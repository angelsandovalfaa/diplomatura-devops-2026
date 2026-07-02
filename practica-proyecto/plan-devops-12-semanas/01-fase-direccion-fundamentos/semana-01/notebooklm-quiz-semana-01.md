# DevOps Quiz

## Question 1
In a Linux environment, what is the specific state of a process that is temporarily unable to continue because it is waiting for an external event, such as a disk I/O operation or a network packet?

- [x] Blocked
- [ ] Ready
- [ ] Running
- [ ] Zombie

**Hint:** Consider the term used when a process's progress is halted by external dependencies.

## Question 2
Which of the following describes a key architectural difference between containers and Virtual Machines (VMs)?

- [x] Containers share the host operating system kernel, whereas VMs include a full guest operating system.
- [ ] VMs share the host kernel to provide better isolation than containers.
- [ ] Containers require a hypervisor like VMware or VirtualBox to manage resource abstraction.
- [ ] VMs use Docker engines to package applications and their dependencies together.

**Hint:** Think about which technology is 'lighter' because it reuses the underlying system's core.

## Question 3
When following a standard Git workflow, what is the primary purpose of a 'Pull Request' (or Merge Request)?

- [x] To propose changes and facilitate code review before merging into a target branch.
- [ ] To download the entire repository from a remote server to a local machine.
- [ ] To save local changes and record them in the project history with a descriptive message.
- [ ] To push local branch updates directly to the production environment without verification.

**Hint:** It serves as a collaborative checkpoint before code integration.

## Question 4
At which layer of the OSI model does the Internet Protocol (IP) operate, and what is its main function?

- [x] Network Layer; handles routing and logical addressing.
- [ ] Transport Layer; ensures reliable end-to-end data delivery.
- [ ] Data Link Layer; manages MAC addresses and physical node-to-node links.
- [ ] Application Layer; provides the interface for end-user software.

**Hint:** Think about the layer responsible for finding the 'route' to a destination.

## Question 5
According to the CAP theorem for distributed systems, if an engineer chooses to prioritize Availability and Partition Tolerance ($AP$), what must they sacrifice?

- [x] Consistency
- [ ] Latency
- [ ] Security
- [ ] Throughput

**Hint:** Recall the three letters that make up the acronym of the theorem.

## Question 6
Which Linux command would a DevOps engineer use to change file permissions so that the owner has full access (read, write, execute) while all other users have no access?

- [x] chmod 700
- [ ] chmod 777
- [ ] chmod 644
- [ ] chmod 755

**Hint:** Numeric permissions follow the order: Owner, Group, Others.

## Question 7
What is the specific role of 'Docker Compose' in a containerized development environment?

- [x] To define and manage multi-container applications using a single YAML configuration file.
- [ ] To provide a secure registry for storing and versioning container images.
- [ ] To automatically scale containers across a cluster of many physical servers.
- [ ] To compile source code into a binary before it is placed into a Docker image.

**Hint:** It simplifies running a group of containers that need to work together on one machine.

## Question 8
In a basic CI/CD pipeline, which stage is primarily focused on compiling code and creating artifacts such as Docker images or binaries?

- [x] Build
- [ ] Test
- [ ] Deploy
- [ ] Monitor

**Hint:** This stage creates the actual 'product' from the raw code.

## Question 9
How does 'Space Sharing' resource management differ from 'Time Sharing'?

- [x] Space sharing involves dedicating a resource to one entity until it is explicitly deleted, whereas time sharing rotates resources sequentially.
- [ ] Space sharing refers to multiple users accessing the same CPU cycle simultaneously.
- [ ] Time sharing is exclusively used for cloud storage, while space sharing is for virtual machines.
- [ ] Space sharing is a manual process, while time sharing is always automated by the OS kernel.

**Hint:** Think about the difference between owning a plot of land versus sharing a public transit seat.

## Question 10
In a 3-Tier Architecture, which layer is responsible for processing business rules, making logical decisions, and performing calculations?

- [x] Application Layer (Logic Tier)
- [ ] Presentation Layer
- [ ] Data Storage Layer
- [ ] Physical Layer

**Hint:** It is the tier that sits between the user interface and the database.

## Question 11
What metacharacter is used in Regular Expressions (Regex) as a shorthand to match any single numerical digit from $0$ to $9$?

- [x] \\d
- [ ] \\w
- [ ] \\s
- [ ] \\b

**Hint:** The letter used in this metacharacter is the first letter of the word 'digit'.

## Question 12
Why is Network Address Translation (NAT) a critical component for most modern home and office routers?

- [x] It allows multiple devices with private IP addresses to share a single public IP address to access the internet.
- [ ] It provides end-to-end encryption for all data packets traveling across the local area network.
- [ ] It replaces the need for a DNS server by automatically resolving domain names to MAC addresses.
- [ ] It increases the physical speed of the internet connection by compressing incoming data packets.

**Hint:** Think about how many devices in your house use the internet despite having only one connection from your ISP.
