X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1039" "Wednesday" "14" "December" "2016" "08:19:09" "+0000" "Sona Sarmadi" "sona.sarmadi@enea.com" "<3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>" "33" "[oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>  " "^CC:" nil nil "12" "2016121408:19:09" "[oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>" (number mark "        sona.sarmadi Dec 14   33/1039  " thread-indent "\"[oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>  \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14330 invoked by uid 550); 14 Dec 2016 08:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14312 invoked from network); 14 Dec 2016 08:19:22 -0000
Thread-Topic: vulnerable version: 4.8.12 and previous versions but xml file
 says: cpe:/o:linux:linux_kernel:4.8.12"/>  
Thread-Index: AdJV4ryQSk7MwcypQTKM1/RdzVvfHA==
Message-ID: <3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [172.16.142.231]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Wed, 14 Dec 2016 08:19:09 +0000
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] vulnerable version: 4.8.12 and previous versions but xml file says:
 cpe:/o:linux:linux_kernel:4.8.12"/>  
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Hi all,

It seems that nvd.xml files (e.g. nvdcve-2.0-2016.xml) does not list vulner=
able versions correctly. One example is the following CVE. Vulnerable versi=
ons are according to the link below "linux kernel 4.8.12 and previous versi=
ons":

https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2016-8655=20

      Race condition in net/packet/af_packet.c in the Linux kernel through =
4.8.12 ..


Vulnerable software and versions
+ Configuration 1
* OR
*=A0cpe:/o:linux:linux_kernel:4.8.12 and previous versions

While in the xml file it just mention "cpe:/o:linux:linux_kernel:4.8.12"

nvdcve-2.0-2016.xml:
..
<entry id=3D"CVE-2016-9919">
    <vuln:vulnerable-configuration id=3D"http://nvd.nist.gov/">
      <cpe-lang:logical-test operator=3D"OR" negate=3D"false">
        <cpe-lang:fact-ref name=3D"cpe:/o:linux:linux_kernel:4.8.12"/>=20=20
      </cpe-lang:logical-test>
    </vuln:vulnerable-configuration>
    <vuln:vulnerable-software-list>
      <vuln:product>cpe:/o:linux:linux_kernel:4.8.12</vuln:product>

Cheers
//Sona
