X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["645" "Monday" "7" "January" "2019" "08:43:40" "+0100" "Marcus Meissner" "meissner@suse.de" "<20190107074340.GA14850@suse.de>" "17" "[oss-security] New pagecache based sidechannel attack published" "^Date:" nil nil "1" "2019010707:43:40" "[oss-security] New pagecache based sidechannel attack published" (number mark "U       meissner@sus Jan  7   17/645   " thread-indent "\"[oss-security] New pagecache based sidechannel attack published\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21748 invoked by uid 550); 7 Jan 2019 07:43:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21713 invoked from network); 7 Jan 2019 07:43:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190107074340.GA14850@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 7 Jan 2019 08:43:40 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] New pagecache based sidechannel attack published
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

https://www.theregister.co.uk/2019/01/05/boffins_beat_page_cache/
https://arxiv.org/abs/1901.01161

Daniel Gruss, Erik Kraft, Trishita Tiwari, Michael Schwarz, Ari Trachtenberg, Jason Hennessey, Alex Ionescu, Anders Fogh
have published a paper describing side channels attacks using OS pagecache statistics, allowing looking at
things like keystroke timing and others.

This affects not just Linux, but also Windows and potentially other OS.

Linux mainline patch:
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=574823bfab82d9d8fa47f422778043fbb4b4f50e

I have requested a Linux specific CVE.

Ciao, Marcus
