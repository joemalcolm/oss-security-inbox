X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["505" "Friday" "24" "April" "2015" "17:00:22" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150424150022.GC25205@suse.de>" "15" "[oss-security] CVE request: X server crash by client" nil nil nil "4" "2015042415:00:22" "[oss-security] CVE request: X server crash by client" (number mark "        meissner@sus Apr 24   15/505   " thread-indent "\"[oss-security] CVE request: X server crash by client\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25982 invoked by uid 550); 24 Apr 2015 15:00:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25959 invoked from network); 24 Apr 2015 15:00:35 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150424150022.GC25205@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Jennifer_Guild=2C_Dilip_?=
 =?iso-8859-1?Q?Upmanyu=2C_Graham_Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org
Date: Fri, 24 Apr 2015 17:00:22 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: X server crash by client
To: OSS Security List <oss-security@lists.openwall.com>,
	xorg_security@x.org

Hi,

We got notified that the fix for CVE-2014-8092 introduced the possibility
of a division by 0 when the "height" for the PutImage call is 0, leading
to X server abort.

https://bugzilla.novell.com/show_bug.cgi?id=928520

This was already fixed in January in X git.
http://cgit.freedesktop.org/xorg/xserver/commit/?id=dc777c346d5d452a53b13b917c45f6a1bad2f20b

As this is a local denial of service, but might be triggerable by images with 0 height
supplied externally, it might need a CVE.

Ciao, Marcus
