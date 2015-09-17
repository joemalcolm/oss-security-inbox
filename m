X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["406" "Thursday" "17" "September" "2015" "14:23:33" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150917122333.GB23283@suse.de>" "14" "[oss-security] CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091712:23:33" "[oss-security] CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        meissner@sus Sep 17   14/406   " thread-indent "\"[oss-security] CVE Request: remote triggerable use-after-free in rpcbind\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13695 invoked by uid 550); 17 Sep 2015 12:23:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13668 invoked from network); 17 Sep 2015 12:23:46 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150917122333.GB23283@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: steved@redhat.com
Date: Thu, 17 Sep 2015 14:23:33 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: remote triggerable use-after-free in rpcbind
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

One of our customers saw rpcbind crashing on a remote security scan.
Olaf Kirch identified and fixed the problem:

http://www.spinics.net/lists/linux-nfs/msg53045.html
https://bugzilla.suse.com/show_bug.cgi?id=946204

It so far has not been integrated into rpcbind upstream.

This is a use-after-free, so at least remote denial of service.
We have not researched further exploitability.

Ciao, Marcus
