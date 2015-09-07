X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1660" "Monday" "7" "September" "2015" "14:51:24" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150907125124.GH5993@suse.de>" "42" "[oss-security] CVE Request: PHP remote exploits (even more)" nil nil nil "9" "2015090712:51:24" "[oss-security] CVE Request: PHP remote exploits (even more)" (number mark "U       meissner@sus Sep  7   42/1660  " thread-indent "\"[oss-security] CVE Request: PHP remote exploits (even more)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7329 invoked by uid 550); 7 Sep 2015 12:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7307 invoked from network); 7 Sep 2015 12:51:37 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 7 Sep 2015 14:51:24 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>, security@php.net,
	cve-assign@mitre.org
Message-ID: <20150907125124.GH5993@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: PHP remote exploits (even more)

Hi,

the last patch of PHP remote exploits have no CVEs assigned yet, but here are even more.

Please assign CVEs.

http://php.net/ChangeLog-5.php#5.4.45

	https://bugs.php.net/bug.php?id=70172	Use After Free Vulnerability in unserialize() 
		Given attacker input to unserialize() we should consider this a security issue.

	https://bugs.php.net/bug.php?id=70219	Use after free vulnerability in session deserializer
		Same.

	https://bugs.php.net/bug.php?id=70388	SOAP serialize_function_call() type confusion / RCE
		Definitely, even the summary has enough indication for me.

	https://bugs.php.net/bug.php?id=70365	yet another use-after-free vulnerability in unserialize() with SplObjectStorage
		I would also say this can be attacker driven, so needs a CVE.

	https://bugs.php.net/bug.php?id=70366	yet another use-after-free vulnerability in unserialize() with SplDoublyLinkedL
		Same.
	
	https://bugs.php.net/bug.php?id=69782	NULL pointer dereference
		Denial of service, these queries might be fed from remote.

Perhaps CVEs also for:
	https://bugs.php.net/bug.php?id=70385	Buffer over-read in exif_read_data with TIFF IFD tag byte value of 32 bytes

	Questionable. It seems no crash was observed, so no denial of service. At most a information leak.

	https://bugs.php.net/bug.php?id=70312 	HAVAL gives wrong hashes in specific cases

	Questionable. I am not sure this is attacker driveable or if an attacker could do anything with this.


	https://bugs.php.net/bug.php?id=70345

	Various PCRE issues caused by the regexp string. There has been a tendency to either declare this CVE worthy or
	declare that its not attacker driven usually.

Ciao, Marcus
