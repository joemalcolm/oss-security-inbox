X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["422" "Thursday" "6" "April" "2017" "07:44:00" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170406054400.GC32355@suse.de>" "15" "[oss-security] libxslt math.random issue" nil nil nil "4" "2017040605:44:00" "[oss-security] libxslt math.random issue" (number mark "U       meissner@sus Apr  6   15/422   " thread-indent "\"[oss-security] libxslt math.random issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8097 invoked by uid 550); 6 Apr 2017 05:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8059 invoked from network); 6 Apr 2017 05:44:16 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 6 Apr 2017 07:44:00 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20170406054400.GC32355@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] libxslt math.random issue

Hi,

CVE-2015-9019 has been assigned to use of libexslt (in libxslt) usage of "math.random" 
without initializing the randomseed.

https://bugzilla.gnome.org/show_bug.cgi?id=758400
https://bugzilla.suse.com/show_bug.cgi?id=934119

Surely, one can argue that the calling program should do srand() or similar, but its
too easy to forget.


FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/

Ciao, Marcus
