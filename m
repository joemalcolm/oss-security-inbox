X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1052" "Wednesday" "13" "May" "2015" "12:22:19" "+0000" "Jason Geffner" "jason@crowdstrike.com" "<ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>" "20" "[oss-security] VENOM - CVE-2015-3456" nil nil nil "5" "2015051312:22:19" "[oss-security] VENOM - CVE-2015-3456" (number mark "        jason@crowds May 13   20/1052  " thread-indent "\"[oss-security] VENOM - CVE-2015-3456\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19762 invoked by uid 550); 13 May 2015 12:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13966 invoked from network); 13 May 2015 12:22:33 -0000
Thread-Topic: VENOM - CVE-2015-3456
Thread-Index: AdCNdrOLH6y+5iGkRi64PgCdPhvzeA==
Message-ID: <ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.100.0.9]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Wed, 13 May 2015 12:22:19 +0000
From: Jason Geffner <jason@crowdstrike.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] VENOM - CVE-2015-3456
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

VENOM, CVE-2015-3456, is a security vulnerability in the virtual floppy dri=
ve code used by many computer virtualization platforms. This vulnerability =
may allow an attacker to escape from the confines of an affected virtual ma=
chine (VM) guest and potentially obtain code-execution access to the host. =
Absent mitigation, this VM escape could open access to the host system and =
all other VMs running on that host, potentially giving adversaries signific=
ant elevated access to the host's local network and adjacent systems.

Exploitation of the VENOM vulnerability can expose access to corporate inte=
llectual property (IP), in addition to sensitive and personally identifiabl=
e information (PII), potentially impacting the thousands of organizations a=
nd millions of end users that rely on affected VMs for the allocation of sh=
ared computing resources, as well as connectivity, storage, security, and p=
rivacy.

Please see http://venom.crowdstrike.com/ for further details.

Sincerely,
Jason Geffner
Sr. Security Researcher, CrowdStrike
