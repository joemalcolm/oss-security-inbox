X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["384" "Wednesday" "11" "October" "2017" "15:03:53" "+0200" "Marcus Meissner" "meissner@suse.de" "<20171011130353.GD667@suse.de>" "15" "[oss-security] Linux kernel: alsa: use-after-free in /dev/snd/seq CVE-2017-15265" nil nil nil "10" "2017101113:03:53" "[oss-security] Linux kernel: alsa: use-after-free in /dev/snd/seq CVE-2017-15265" (number mark "U       meissner@sus Oct 11   15/384   " thread-indent "\"[oss-security] Linux kernel: alsa: use-after-free in /dev/snd/seq CVE-2017-15265\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30491 invoked by uid 550); 11 Oct 2017 13:04:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30256 invoked from network); 11 Oct 2017 13:04:06 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 11 Oct 2017 15:03:53 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20171011130353.GD667@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Linux kernel: alsa: use-after-free in /dev/snd/seq CVE-2017-15265

Hi folks,

This kernel issue is being published without embargoe.
(came via security@kernel.org to Takashi@SUSE);

Reported by Michael23 Yu.

https://bugzilla.suse.com/show_bug.cgi?id=1062520

Proposed Patch:
http://mailman.alsa-project.org/pipermail/alsa-devel/2017-October/126292.html

A use-after-free window in /dev/snd/seq, Mitre has assigned CVE-2017-15265 to it.

Ciao, Marcus
