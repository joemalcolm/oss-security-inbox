X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["293" "Thursday" "9" "June" "2016" "17:06:29" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160609150629.GC7655@suse.de>" "9" "[oss-security] CVE Request: haproxy remote denial of service via reqdeny" nil nil nil "6" "2016060915:06:29" "[oss-security] CVE Request: haproxy remote denial of service via reqdeny" (number mark "U       meissner@sus Jun  9    9/293   " thread-indent "\"[oss-security] CVE Request: haproxy remote denial of service via reqdeny\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5459 invoked by uid 550); 9 Jun 2016 15:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5440 invoked from network); 9 Jun 2016 15:06:41 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 9 Jun 2016 17:06:29 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20160609150629.GC7655@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: haproxy remote denial of service via reqdeny

Hi,

This is a remote denial of service against haproxy (uncontrollable crash).

http://git.haproxy.org/?p=haproxy-1.6.git;a=commit;h=60f01f8c89e4fb2723d5a9f2046286e699567e0b

The problem was apparently introduced in haproxy 1.6.0, and is fixed in git (which will become 1.6.6).

Ciao, Marcus
