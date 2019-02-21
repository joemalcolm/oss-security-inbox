X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Thursday" "21" "February" "2019" "13:57:50" "+0100" "Marcus Meissner" "meissner@suse.de" "<20190221125750.GC869@suse.de>" "22" "[oss-security] Kernel local root in SCTP / CVE-2019-8956" "^Date:" nil nil "2" "2019022112:57:50" "[oss-security] Kernel local root in SCTP / CVE-2019-8956" (number mark "        meissner@sus Feb 21   22/625   " thread-indent "\"[oss-security] Kernel local root in SCTP / CVE-2019-8956\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13321 invoked by uid 550); 21 Feb 2019 12:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12276 invoked from network); 21 Feb 2019 12:58:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190221125750.GC869@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 21 Feb 2019 13:57:50 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Kernel local root in SCTP / CVE-2019-8956
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

CVE-2019-8956 

Secunia just announced this a local root in SCTP:

	https://secuniaresearch.flexerasoftware.com/secunia_research/2019-5/

There was a SCTP local root in the kernel due to a association list
corruption.

https://lore.kernel.org/netdev/20190201141522.GA20785@kroah.com/

In sctp_sendmesg(), when walking the list of endpoint associations, the
association can be dropped from the list, making the list corrupt.
Properly handle this by using list_for_each_entry_safe()

Fixes: 4910280503f3 ("sctp: add support for snd flag SCTP_SENDALL process in sendmsg")

This issue is in 4.17 up to 5.0rc6.

Ciao, Marcus
