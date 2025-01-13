---
name: Joseph Cosentino
email: jcosentino11@pm.me
linkedin: jcosentino11
github: jcosentino11
website: https://josephcosentino.me
website-text: josephcosentino.me

experience:
  - company: Amazon Web Services
    location: Seattle, Washington
    position: Software Engineer II (Amazon MQ)
    dates: Sept 2024 -- Present
    highlights:
      - TODO

  - company: Amazon Web Services
    location: Seattle, Washington
    position: Software Engineer I → II (Amazon IoT Greengrass)
    dates: Feb 2022 -- Sept 2024
    highlights:
      - Integrated a custom, persistent file stream into the AWS FleetWise Edge Agent, enabling customers to reliably collect car data and stream it to the cloud. Delivered an early access release of the feature on time while working as part of an away team in a new domain and within a complex C++ codebase.
      - Added support for variable interpolation in the WS Greengrass Client Device Auth component, improving developer experience by allowing customers to write more streamlined authorization policies based on devices' thing names. Introduced performance testing via the Java Microbenchmark Harness to help mitigate performance regressions.
      - Enhanced the AWS Greengrass MQTT Bridge component to support MQTT5. Added integration testing, which was previously absent, to the project, testing against a real MQTT broker.
      - Improved the AWS Greengrass EMQX component by allowing dynamic configuration of the EMQX broker via Greengrass, eliminating the need for a full component restart. This involved modifying a custom EMQX plugin to retrieve Greengrass component configuration via IPC and apply the configuration through internal EMQX functions.
      - Enhanced message-sending canaries by accurately tracking dropped messages, which improved our SLA calculations.
      - Improved the AWS Greengrass Client Device Auth component by resolving race conditions and adding caching for connectivity information, which eliminated unnecessary, computationally expensive certificate generation operations.
      - Provided support to internal and external customers, advising on Greengrass best practices and offering live debugging assistance.

  - company: Comcast
    location: Philadelphia, Pennsylvania
    position: Software Engineer
    dates: May 2017 -- Feb 2022
    highlights:
      - Contributed to a large-scale, distributed DVR scheduling system serving over 10 million customers.
      - Developed a high-capacity system that processed one billion TV Tune events daily.
      - Consolidated business logic from multiple services by building an internal API for managing DVR customers' account tier.
      - Maintained three web APIs for performing speed tests on customer gateways and devices.
      - Created a Java library for performing parallel Splunk searches, used in several reporting applications to reduce their runtimes from minutes to seconds.
      - Provided mentorship to coworkers and participated in interviewing prospective hires.

  - company: QVC
    location: West Chester, Pennsylvania
    position: Software Engineer
    dates: Jan 2016 -- May 2017
    highlights:
      - Developed and maintained APIs for warehousing operations.
      - Created a system for detecting discrepancies between warehouse management systems.

skills:
  - category: Languages
    items: Java, Python, Golang, Typescript, Erlang, C++
  - category: AWS
    items: DynamoDB, ECS, EC2, Lambda, SNS, SQS, CloudWatch, S3
  - category: Protocols
    items: HTTP, gRPC, MQTT

education:
  - school: West Chester University of Pennsylvania, Honors College
    details: B.S. in Computer Science, Class of 2015, Summa Cum Laude
---