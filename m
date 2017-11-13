X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Monday" "13" "November" "2017" "15:53:36" "+0100" "Solar Designer" "solar@openwall.com" "<20171113145336.GA23241@openwall.com>" "36" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017111314:53:36" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "        solar@openwa Nov 13   36/1880  " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") "<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5958 invoked by uid 550); 13 Nov 2017 14:55:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5402 invoked from network); 13 Nov 2017 14:53:40 -0000
Message-ID: <20171113145336.GA23241@openwall.com>
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 13 Nov 2017 15:53:36 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically
To: oss-security@lists.openwall.com

On Fri, Nov 03, 2017 at 11:07:14AM +0000, Fiedler Roman wrote:
> PS: POC for vim.tiny on Ubuntu Xenial to overwrite arbitrary files as user root when editing file in directory owned by other user is available on request, disclosure after one week or if list discussion indicates other timing.

Please post this PoC in here ASAP.  Right now, you're in violation of
distros list policy for having posted the PoC in there yet not made it
public on oss-security within 7 days after posting about the issue
itself in here.  Please correct this.  (To me this is also an example of
misuse of the distros list, and then of the ability to delay posting the
PoC - creating administrative work for all of us out of thin air.)

The policy:

http://oss-security.openwall.org/wiki/mailing-lists/distros#list-policy-and-instructions-for-reporters

"If you shared exploit(s) that are not an essential part of the issue
description, then at your option you may slightly delay posting them to
oss-security but you must post the exploits to oss-security within at
most 7 days"

Also, it looks like Gentoo and Amazon failed to track this and remind
you on November 10.  They should have, as per:

http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back

"12. If exploit(s) were shared on the list, make sure that either
they're included in the oss-security posting along with the issue detail
or the posting includes an announcement of planned later posting of the
exploits (with the delay being within list policy), and in the latter
case also make sure that the later posting is in fact made as planned,
and remind the reporter if not - primary: Gentoo, backup: Amazon"

So at least this worked as an almost failed test of our handling of this
little administrative task.  Maybe on some other occasion it would be
actually important, so let's debug and fix it now.

Alexander
