X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Friday" "7" "April" "2017" "12:29:13" "-0400" "Denis Magda" "dmagda@apache.org" "<B39FC5C0-9AC5-4E84-A450-AFF690B74D9C@apache.org>" "35" "[oss-security] [CVE-2016-6805] Arbitrary File Read due to eXternal Xml Entity attack in Apache Ignite" nil nil nil "4" "2017040716:29:13" "[oss-security] [CVE-2016-6805] Arbitrary File Read due to eXternal Xml Entity attack in Apache Ignite" (number mark "U       dmagda@apach Apr  7   35/1323  " thread-indent "\"[oss-security] [CVE-2016-6805] Arbitrary File Read due to eXternal Xml Entity attack in Apache Ignite\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9313 invoked by uid 550); 7 Apr 2017 16:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4068 invoked from network); 7 Apr 2017 16:29:28 -0000
From: Denis Magda <dmagda@apache.org>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <B39FC5C0-9AC5-4E84-A450-AFF690B74D9C@apache.org>
Date: Fri, 7 Apr 2017 12:29:13 -0400
Cc: oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
To: user@ignite.apache.org,
 dev@ignite.apache.org,
 announce@apache.org,
 Pierre Ernst <pernst@salesforce.com>,
 security <security@apache.org>
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] [CVE-2016-6805] Arbitrary File Read due to eXternal Xml Entity attack
 in Apache Ignite

[CVE-2016-6805] Arbitrary File Read due to eXternal Xml Entity attack in Ap=
ache Ignite

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Ignite 1.0.0-RC3 to 1.8

Description:
Apache Ignite uses an update notifier component to update the users about n=
ew project releases that include additional functionality, bug fixes and pe=
rformance improvements. To do that the component communicates to an externa=
l PHP server (http://ignite.run) where it needs to send some system propert=
ies like Apache Ignite or Java version. This feature is enabled by default =
and used to send sensitive data over HTTP by mistake, such as installation =
folders or environment variables stored in Java system properties. The seco=
nd issue is because TLS is not used between the application and the PHP ser=
ver, a Man-in-the-middle attack is possible and a malicious actor could alt=
er the response coming from the ignite.run server. This response is parsed =
by the Apache ignite component as XML, and a XXE attack can be triggered.

Both issues mentioned above were fixed as a part of Apache Ignite 1.9 relea=
se. The relevant commits with the changes:

Mitigation:
Users must upgrade to Apache Ignite 1.9 or later versions or disable the up=
date notifier.

Credit:
Pierre Ernst, Salesforce




