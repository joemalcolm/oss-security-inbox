X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["370" "Wednesday" "2" "December" "2020" "07:56:27" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201202065627.GB14843@suse.de>" "12" "[oss-security] Some mitigation for openssh CVE-2020-14145" nil nil nil "12" "2020120206:56:27" "[oss-security] Some mitigation for openssh CVE-2020-14145" (number mark "U       meissner@sus Dec  2   12/370   " thread-indent "\"[oss-security] Some mitigation for openssh CVE-2020-14145\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Some mitigation for openssh CVE-2020-14145" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28611 invoked by uid 550); 2 Dec 2020 06:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28590 invoked from network); 2 Dec 2020 06:56:39 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 2 Dec 2020 07:56:27 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20201202065627.GB14843@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Some mitigation for openssh CVE-2020-14145

Hi,

We reviewed the openssh CVE-2020-14145 and the openssh team commited
a partial mitigation of this issue which is included in openssh 8.4.

https://anongit.mindrot.org/openssh.git/commit/?id=b3855ff053f5078ec3d3c653cdaedefaa5fc362d

I filed a CVE update request to include above.

That said, "key/certificate pinning on first connect" is still tricky.

Ciao, Marcus
