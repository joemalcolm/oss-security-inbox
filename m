X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["760" "Monday" "6" "November" "2017" "22:14:32" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171106211432.pfwrhchhbrncqggo@jwilk.net>" "16" "Re: [oss-security] Security risk of vim swap files" "^Date:" nil nil "11" "2017110621:14:32" "[oss-security] Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  6   16/760   " thread-indent "\"Re: [oss-security] Security risk of vim swap files\"\n") "<20171106200050.GA19402@openwall.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>" "<20171101181209.GB22752@openwall.com>" "<20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>" "<20171106200050.GA19402@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21631 invoked by uid 550); 6 Nov 2017 21:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21610 invoked from network); 6 Nov 2017 21:14:51 -0000
Message-ID: <20171106211432.pfwrhchhbrncqggo@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
 <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
 <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
 <20171101180222.5j6wqmmqakwvu72q@jwilk.net>
 <20171101181209.GB22752@openwall.com>
 <20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>
 <20171106200050.GA19402@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171106200050.GA19402@openwall.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 15041741284276098982
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrheeggddugeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Mon, 6 Nov 2017 22:14:32 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of vim swap files
To: oss-security@lists.openwall.com

* Solar Designer <solar@openwall.com>, 2017-11-06, 21:00:
>I don't know what state glibc was in with regard to honoring, ignoring, 
>or unsetting TMPDIR in SUID programs in 1998-1999.

glibc's tempnam() did inadvertently honor TMPDIR in setuid/setgid 
programs, but the bug was fixed in 1996:
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=d68171edce96cb59b5cb869f6a82afcc50db00be

In 2000, glibc started unsetting TMPDIR in such programs:
https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=74955460c5b9f23d7783395ce2478f5b7c5fd876

Curiously, Hurd implementation of tmpfile() seems to honor TMPDIR:
https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/mach/hurd/tmpfile.c;h=8bcfb81a104f37f271b18fe2eea3d40f7d101634;hb=HEAD#l40

-- 
Jakub Wilk
