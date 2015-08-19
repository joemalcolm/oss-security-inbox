X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Wednesday" "19" "August" "2015" "11:49:45" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150819094945.GD6584@suse.de>" "34" "[oss-security] CVE Request: more php unserializing issues" nil nil nil "8" "2015081909:49:45" "[oss-security] CVE Request: more php unserializing issues" (number mark "U       meissner@sus Aug 19   34/963   " thread-indent "\"[oss-security] CVE Request: more php unserializing issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20295 invoked by uid 550); 19 Aug 2015 09:49:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20274 invoked from network); 19 Aug 2015 09:49:58 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150819094945.GD6584@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 19 Aug 2015 11:49:45 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: more php unserializing issues
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

I am not sure these have CVE ids yet:

https://bugs.php.net/bug.php?id=70068
Dangling pointer in the unserialization of ArrayObject items
	impact: remote code execution


https://bugs.php.net/bug.php?id=70166
https://bugs.php.net/bug.php?id=70155 (dup)
Use After Free Vulnerability in unserialize() with SPLArrayObject

https://bugs.php.net/bug.php?id=70168
Use After Free Vulnerability in unserialize() with SplObjectStorage

https://bugs.php.net/bug.php?id=70169
Use After Free Vulnerability in unserialize() with SplDoublyLinkedList


These look like they can be exploited for code execution.


https://bugs.php.net/bug.php?id=70019
Files extracted from archive may be placed outside of destination directory

(indirect reference also  https://msisac.cisecurity.org/advisories/2015/2015-091.cfm
 and the php release notes
 http://php.net/ChangeLog-5.php#5.4.44
 http://php.net/ChangeLog-5.php#5.5.28
 http://php.net/ChangeLog-5.php#5.6.12
)

Ciao, Marcus
