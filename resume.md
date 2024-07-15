# Joseph Cosentino
[[jcosentino11@pm.me](mailto:jcosentino11@pm.me)] [[https://josephcosentino.me](https://josephcosentino.me)]

## Experience:
### Software Engineer II, Amazon Web Services
Seattle, WA *(Feb 2022 - Present)*
- **AWS IoT Greengrass**: Edge Runtime for IoT Devices 
  - Added support for variable interpolation in the AWS Greengrass Client Device Auth component. This change improved developer experience by allowing customers to write more streamline authorization policies that relied on devices' thing names. Added performance testing to the project for the first time, via Java Microbenchmark Harness, to help mitigate performance regressions. 
  - Enhanced the AWS Greengrass MQTT Bridge component to support MQTT5. Added integration testing to the project, when there was previously none, which tests against a real MQTT broker, whose lifecycle is managed via testcontainers.
  - Enhanced the AWS Greengrass EMQX component, allowing customers to configure the EMQX broker dynamically via Greengrass, eliminating the need for a full component restart. This involved modifying a custom EMQX plugin to retrieve Greengrass component configuration via IPC and then calling internal EMQX functions to apply the configuration.
  - Improved messaging canaries by adding individual message tracking. This allowed us to identify dropped messages with complete accuracy. This change was incorporated into our teams SLA calculations and dashboards.
  - Improved the fetching and updating of connectivity information (local broker IP), fixed race conditions, and optimized information caching in the Client Device Auth component. This resulted in more efficient local broker certificate updates and reduced computational load on devices.
  - Provided support to internal and external customers, advising on Greengrass best practices and providing live support for debugging issues.
  - Identified and fixed multiple race conditions in the AWS Greengrass Shadow Manager, a complex component that syncs cloud and local IoT Shadow documents.
- **AWS IoT FleetWise**: Edge Agent for Vehicles
  - Integrated a custom, persistent file stream into the AWS FleetWise Edge Agent, enabling customers to reliably collect car data and stream it to the cloud. Delivered an early access release of the project on time while working as part of an away team, in a new domain and in a complex C++ codebase.

### Software Engineer, Comcast 
Philadelphia, PA *(May 2017 - Feb 2022)*
- Contributed to a large-scale, distributed DVR scheduling system that serviced over 10
million customers.
- Built a system that processed one billion TV Tune events per day. I was responsible for
all aspects of the project, including design, implementation, infrastructure,
monitoring/metrics, and continuous deployment.
- Designed and delivered an internal API for managing account tiers for DVR customers.
The effort deduplicated logic that was previously maintained by several teams.
- Maintained three web APIs for performing speed tests on customer gateways and
devices.
- Developed a Java library for performing Splunk searches in parallel. The library was
used in several reporting applications, reducing their runtimes from minutes to
seconds.
- Provided mentorship to coworkers and served as an interviewer for prospective hires.

### Software Engineer, QVC
West Chester, PA *(Jan 2016 - May 2017)*
- Developed and maintained APIs for warehousing operations.
- Wrote a system for detecting discrepancies between warehouse management systems.

## Education:
### West Chester University of Pennsylvania
B.S. in Computer Science – Class of 2015
- Summa Cum Laude
- Honors College
- Board of Governors (Full-Tuition) Scholarship

## Skills:
- **Languages**: Java, Python, Golang, Erlang, C++, Typescript
- **AWS**: IoT Greengrass, IoT Core, FleetWise, ECS, Lambda, CloudWatch, EC2, S3, DynamoDB
- **Protocols**: MQTT, HTTP
- **Domains**: IoT, Authentication Systems, Device Software, Web APIs
