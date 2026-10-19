X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/19/2
Message-ID: <efad0227-e505-3da3-1e84-12ff1034ced7@apache.org>
Date: Mon, 19 Oct 2026 10:53:24 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-88900: Apache Camel: Camel-JGroups: Unsafe Java Deserialization of Cluster Messages in the JGroups Consumer Can Lead to Remote Code Execution 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 8.8 (high) CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Affected versions:

- Apache Camel (org.apache.camel:camel-jgroups) 4.0.0 before 4.18.5
- Apache Camel (org.apache.camel:camel-jgroups) 4.19.0 before 4.22.1

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel Camel-Jgroups component.



This issue affects Apache Camel: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1.



JGroupsEndpoint.createExchange(Message), which CamelJGroupsReceiver calls for every message the jgroups consumer receives before the exchange is routed, set the exchange body from org.jgroups.Message.getObject(). For an ObjectMessage, which is the message type the Camel jgroups producer sends, JGroups Java-deserializes the payload through an ObjectInputStream on its own receive thread as the message arrives, and getObject() returns the resulting object. No java.io.ObjectInputFilter was applied on that path unless the deployment had set a JVM-wide serialization filter: camel-jgroups installed none, and the JGroups versions shipped with the affected releases apply none of their own, so any serializable class on the application classpath could be instantiated and its deserialization callbacks run. Unless a channel or the channelProperties option is configured, the consumer creates its channel with new JChannel(), the stock JGroups protocol stack, which multicasts over UDP without the AUTH protocol and without encryption, so any host able to reach the cluster's multicast group or bind port can join the cluster and send messages to the consumer without credentials. Such a host could send a crafted serialized object that leads to remote code execution in the Camel process when a usable deserialization gadget chain is present on the classpath, and no non-default option was required on the consumer. Because JGroups materializes the object before Camel's receiver runs, a check performed by Camel can only inspect the deserialized result and cannot stop code that runs during deserialization, so closing the issue also requires a control that applies before the payload is read, as described in the mitigation. Exploitation requires network access to the cluster's multicast group or bind port, which with the default UDP multicast transport means a host on an adjacent network, and a usable gadget chain on the classpath, which is why the severity is assessed as high rather than critical.



Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.1. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The 4.14.x releases stream and earlier, and the 4.15.x to 4.17.x and 4.19.x to 4.21.x release lines, reached end of life before this issue was resolved and will not receive a fix, so deployments on those lines must move to a supported release.

Solution:

Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.1. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The fixed releases check the class of the deserialized body against the deserializationFilter option before the exchange is routed; when the option is not set, the JVM-wide jdk.serialFilter is honoured if present, and otherwise the default allow-list !java.net.**;java.**;javax.**;org.apache.camel.**;!* is applied. Because this check runs after JGroups has deserialized the payload, it is defense in depth, and deployments on 4.22.1 and 4.18.5 must also configure at least one control that applies before the payload is read: a JVM-wide jdk.serialFilter that allows only the classes the routes exchange over the cluster, or a channel secured with AUTH together with SYM_ENCRYPT or ASYM_ENCRYPT through the channelProperties option. On 4.23.0, which ships JGroups 5.5.7.Final and so also honours the jgroups.deserialization.filter system property, the consumer refuses to start until at least one of these controls is configured, unless acceptAllObjects=true, an insecure serialization setting that restores the previous behaviour, is set. The 4.14.x releases stream and earlier, and the 4.15.x to 4.17.x and 4.19.x to 4.21.x release lines, reached end of life before this issue was resolved and will not receive a fix, so deployments on those lines must move to a supported release.

Work Arounds:

For deployments that cannot upgrade immediately, set a JVM-wide serialization filter with the jdk.serialFilter system property on the JVM that runs the jgroups consumer, allowing only the classes the routes exchange over the cluster, which applies because JGroups reads the payload through a java.io.ObjectInputStream; secure the channel by supplying, through the channelProperties option, a protocol stack that adds the AUTH protocol together with SYM_ENCRYPT or ASYM_ENCRYPT; and do not expose the cluster's multicast group or bind port to untrusted networks.

Credit:

h1ei1 (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-88900.html
https://issues.apache.org/jira/browse/CAMEL-24676
https://issues.apache.org/jira/browse/CAMEL-25223
https://github.com/apache/camel/pull/26267
https://github.com/apache/camel/pull/26281
https://github.com/apache/camel/pull/26283
https://github.com/apache/camel/pull/27205
https://github.com/apache/camel/pull/26282
https://github.com/apache/camel/pull/26326
https://camel.apache.org/security/CVE-2026-40860.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-88900

