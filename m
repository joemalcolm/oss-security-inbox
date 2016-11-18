X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["570" "Friday" "18" "November" "2016" "17:31:19" "+0100" "Marcus Meissner" "meissner@suse.de" "<20161118163119.GQ11402@suse.de>" "18" "[oss-security] CVE Request: gstreamer plugins " nil nil nil "11" "2016111816:31:19" "[oss-security] CVE Request: gstreamer plugins" (number mark "U       meissner@sus Nov 18   18/570   " thread-indent "\"[oss-security] CVE Request: gstreamer plugins \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21825 invoked by uid 550); 18 Nov 2016 17:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21807 invoked from network); 18 Nov 2016 17:09:44 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 18 Nov 2016 17:31:19 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20161118163119.GQ11402@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: gstreamer plugins 

Hi,

I am not sure if someone assigned CVEs for those:

1. Bufferoverflow in VMNC decoder in gstreamer plugins:
	https://scarybeastsecurity.blogspot.de/2016/11/0day-poc-risky-design-decisions-in.html

   Simple fix in:
	https://cgit.freedesktop.org/gstreamer/gst-plugins-bad/commit/gst/vmnc/vmncdec.c?id=4cb1bcf1422bbcd79c0f683edb7ee85e3f7a31fe


2. Missing bounds check in NSF decoder in gstreamer plugins
	http://scarybeastsecurity.blogspot.de/2016/11/0day-exploit-compromising-linux-desktop.html

	
   Only in gstreamer 0.10, dropped in newer versions.

Ciao, Marcus
