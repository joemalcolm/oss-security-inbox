X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1057" "Thursday" "6" "July" "2017" "13:33:36" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170706113336.GI5923@suse.de>" "28" "[oss-security] X.Org X Server stack overflow and information leak" nil nil nil "7" "2017070611:33:36" "[oss-security] X.Org X Server stack overflow and information leak" (number mark "U       meissner@sus Jul  6   28/1057  " thread-indent "\"[oss-security] X.Org X Server stack overflow and information leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25934 invoked by uid 550); 6 Jul 2017 11:33:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25909 invoked from network); 6 Jul 2017 11:33:48 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 6 Jul 2017 13:33:36 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20170706113336.GI5923@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] X.Org X Server stack overflow and information leak

Hi,

This issue got lost under the Qualys noise :(

https://bugzilla.suse.com/show_bug.cgi?id=1035283

CVE-2017-10971:
	The endianess handling for X Events assumed a fixed size of X Event structures and
	had a specific 32 byte stack buffer for that. 

	However "GenericEvents" can have any size, so if the events were sent in the wrong
	endianess, this stack buffer could be overflowed easily.

	So authenticated X users could overflow the stack in the X Server and with the X 
	server usually running as root gaining root prileveges.

	https://cgit.freedesktop.org/xorg/xserver/commit/?id=ba336b24052122b136486961c82deac76bbde455
	https://cgit.freedesktop.org/xorg/xserver/commit/?id=8caed4df36b1f802b4992edcfd282cbeeec35d9d
	https://cgit.freedesktop.org/xorg/xserver/commit/?id=215f894965df5fb0bb45b107d84524e700d2073c


CVE-2017-10972:
	https://cgit.freedesktop.org/xorg/xserver/commit/?id=05442de962d3dc624f79fc1a00eca3ffc5489ced

	An information leak out of the X server due to an uninitialized stack area when swapping
	event endianess.

Ciao, Marcus
