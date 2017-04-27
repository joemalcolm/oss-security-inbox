X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["579" "Thursday" "27" "April" "2017" "17:46:51" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170427154651.GE21243@suse.de>" "16" "[oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042715:46:51" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        meissner@sus Apr 27   16/579   " thread-indent "\"[oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30135 invoked by uid 550); 27 Apr 2017 15:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30110 invoked from network); 27 Apr 2017 15:47:04 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170427154651.GE21243@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 27 Apr 2017 17:46:51 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: OSS Security List <oss-security@lists.openwall.com>

Hi,

Canonical has reported CVE-2017-8291 to ghostscript, a ghostscript code execution with -dSAFER to the ghostscript team.

With PS/EPS being processed also from the network with -dSAFER, this would count
for remote code execution.

The ghostscript bug is https://bugs.ghostscript.com/show_bug.cgi?id=697808
and had some more comments but was made private a bit after I last accessed it.

I captured the first comment at least in our bug.
https://bugzilla.suse.com/show_bug.cgi?id=1036453

The problem is I think around a type confusion in the rsdparams command.

Ciao, Marcus
