Received: (qmail 4090 invoked by uid 550); 28 Nov 2023 14:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3701 invoked from network); 28 Nov 2023 14:55:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Jean-Baptiste_Onofr=C3=A9?= <jbonofre@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1dac33e6-1e9c-fc1d-3eb8-6bb771dba5bb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Nov 2023 14:54:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-41678: Apache ActiveMQ: Deserialization vulnerability on
 Jolokia that allows authenticated users to perform RCE 

Severity: Medium

Affected versions:

- Apache ActiveMQ before 5.16.6
- Apache ActiveMQ 5.17.0 before 5.17.4
- Apache ActiveMQ 5.18.0 unaffected
- Apache ActiveMQ 6.0.0 unaffected

Description:

Once an user is authenticated on Jolokia, he can potentially trigger arbitr=
ary code execution.=C2=A0

In details, in ActiveMQ configurations, jetty allows
org.jolokia.http.AgentServlet to handler request to /api/jolokia

org.jolokia.http.HttpRequestHandler#handlePostRequest is able to
create JmxRequest through JSONObject. And calls to
org.jolokia.http.HttpRequestHandler#executeRequest.

Into deeper calling stacks,
org.jolokia.handler.ExecHandler#doHandleRequest is able to invoke
through refection.

And then, RCE is able to be achieved via
jdk.management.jfr.FlightRecorderMXBeanImpl which exists on Java version ab=
ove 11.

1 Call newRecording.

2 Call setConfiguration. And a webshell data hides in it.

3 Call startRecording.

4 Call copyTo method. The webshell will be written to a .jsp file.

The mitigation is to restrict (by default) the actions authorized on Joloki=
a, or disable Jolokia.
A more restrictive Jolokia configuration has been defined in default Active=
MQ distribution. We encourage users to upgrade to ActiveMQ distributions ve=
rsion including updated Jolokia configuration: 5.16.6, 5.17.4, 5.18.0, 6.0.=
0.

This issue is being tracked as AMQ-9201=20

Credit:

wangxin@threatbook.cn (finder)
wangzhendong@threatbook.cn (finder)
honglonglong@threatbook.cn (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-41678
https://issues.apache.org/jira/browse/AMQ-9201

