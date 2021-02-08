X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["860" "Monday" "8" "February" "2021" "10:11:05" "+0100" "Marcus Meissner" "meissner@suse.de" "<20210208091105.GF17977@suse.de>" "22" "[oss-security] Remote code execution in connman" nil nil nil "2" "2021020809:11:05" "[oss-security] Remote code execution in connman" (number mark "U       meissner@sus Feb  8   22/860   " thread-indent "\"[oss-security] Remote code execution in connman\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Remote code execution in connman" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30038 invoked by uid 550); 8 Feb 2021 09:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30001 invoked from network); 8 Feb 2021 09:11:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 8 Feb 2021 10:11:05 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20210208091105.GF17977@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Remote code execution in connman

Hi,

Tesla has reported a remote (adjacent network) code execution flaw in
connman, a lightweight network manager, to our SUSE colleage and
connman upstream maintainer Daniel Wagner,

https://git.kernel.org/pub/scm/network/connman/connman.git/

https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=e4079a20f617a4b076af503f6e4e8b0304c9f2cb

Mitre has assigned CVE-2021-26675.

The commit fixes a stack buffer overflow that can be used to execute code by network adjacent attackers.

https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=a74524b3e3fad81b0fd1084ffdf9f2ea469cd9b1
https://git.kernel.org/pub/scm/network/connman/connman.git/commit/?id=58d397ba74873384aee449690a9070bacd5676fa

Mitre has assigned CVE-2021-26676

Remote stack information leak which can be used to help execute CVE-2021-26675 reliably.

Ciao, Marcus
