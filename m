X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["986" "Tuesday" "27" "June" "2017" "16:58:30" "-0700" "Denis Magda" "dmagda@apache.org" "<49E4F353-A157-4F25-B5D3-CFF0A89339A6@apache.org>" "36" "[oss-security] [CVE-2017-7686] Apache Ignite Information Disclosure" nil nil nil "6" "2017062723:58:30" "[oss-security] [CVE-2017-7686] Apache Ignite Information Disclosure" (number mark "U       dmagda@apach Jun 27   36/986   " thread-indent "\"[oss-security] [CVE-2017-7686] Apache Ignite Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1837 invoked by uid 550); 28 Jun 2017 00:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19799 invoked from network); 27 Jun 2017 23:58:43 -0000
From: Denis Magda <dmagda@apache.org>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <49E4F353-A157-4F25-B5D3-CFF0A89339A6@apache.org>
Date: Tue, 27 Jun 2017 16:58:30 -0700
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] [CVE-2017-7686] Apache Ignite Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:

* Apache Ignite 1.0.0-RC3 to 2.0

Impact:

Apache Ignite Might Transfer Sensitive Information to 3rd Party Domain

Description:

Apache Ignite uses an update notifier component to update the users about n=
ew project releases that include additional functionality, bug fixes and pe=
rformance improvements. To do that the component communicates to an externa=
l PHP server (http://ignite.run) where it needs to send some system propert=
ies like Apache Ignite or Java version. Some of the properties might contai=
n user sensitive information.

Mitigation:

* The domain (http://ignite.run) was moved to ASF and the server was brough=
t down. No data transfer longer happens by default. No extra actions are ne=
eded on the end user side.

Credit:

The vulnerability was discovered by:=20

* Makoto Yui of Treasure Data, Inc.

References:

* http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7686=
