X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/22
Message-ID: <74f2fed0-cc7a-d3be-634c-e8b5f5f5ca55@apache.org>
Date: Sun, 05 Jul 2026 11:51:42 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49097: Apache Camel: Camel-IRC: The irc.sendTo (and other irc.*) Exchange header constants used non-Camel-prefixed names that bypass the HTTP header filter, allowing an HTTP client to redirect outgoing IRC messages to arbitrary channels or users 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-irc) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-irc) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-irc) 4.19.0 before 4.21.0

Description:

Improper Input Validation, Improper Neutralization of Special Elements in Output Used by a Downstream Component ('Injection') vulnerability in Apache Camel IRC component.

The camel-irc producer chooses the destination of an outgoing IRC message from the irc.sendTo Exchange header (the constant IrcConstants.IRC_SEND_TO, value irc.sendTo); when that header is present it overrides the channel list configured on the endpoint, and the message is sent only to the specified destination. This and the component's other control headers (irc.target, irc.messageType, irc.user.*, irc.num, irc.value) used plain, non-Camel-prefixed values. Because these names do not start with the Camel / camel prefix, HttpHeaderFilterStrategy - which blocks only the Camel header namespace on the HTTP boundary - let them pass from an inbound HTTP request straight into the Exchange. In a route that bridges an HTTP consumer (for example platform-http) into an irc: producer, any HTTP client could therefore set the irc.sendTo header and redirect a message that the route intended for a configured channel to an arbitrary IRC channel or user - exfiltrating the message content to an attacker-chosen nickname, leaking it into a public channel, or delivering messages that appear to come from the bot. No credentials are required when the bridging consumer is unauthenticated.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, routes that set IRC headers via the raw header names must use the CamelIrc* names (for example CamelIrcSendTo) instead of the old irc.* values. For deployments that cannot upgrade immediately, strip the irc.* headers from any untrusted ingress before the irc: producer (for example removeHeaders('irc.*') at the start of the route), and set the IRC destination from a trusted source.

Credit:

Yu Bao from PayPal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-49097.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49097

