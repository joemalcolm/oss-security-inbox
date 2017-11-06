X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Monday" "6" "November" "2017" "21:15:53" "+0100" "Solar Designer" "solar@openwall.com" "<20171106201553.GA20542@openwall.com>" "30" "Re: [oss-security] Fw: Security risk of vim swap files" "^Cc:" nil nil "11" "2017110620:15:53" "[oss-security] Fw: Security risk of vim swap files" (number mark "        solar@openwa Nov  6   30/1261  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171106071158.GC9438@256bit.org>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>" "<20171106071158.GC9438@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7627 invoked by uid 550); 6 Nov 2017 20:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6089 invoked from network); 6 Nov 2017 20:16:01 -0000
Message-ID: <20171106201553.GA20542@openwall.com>
References: <20171102212916.GC23769@256bit.org> <20171103163936.cevlb7ghcwkln6x2@jwilk.net> <20171105171704.GA9438@256bit.org> <20171105175959.GA13011@openwall.com> <20171106071158.GC9438@256bit.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171106071158.GC9438@256bit.org>
User-Agent: Mutt/1.4.2.3i
Cc: Bram@Moolenaar.net
Date: Mon, 6 Nov 2017 21:15:53 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Sun, Nov 05, 2017 at 07:03:07PM -0700, Kurt Seifried wrote:
> Also you're all still ignoring umask =(. Please, when you create a new
> file, check the umask and subtract it to make sure you're abiding by the
> user's wishes.

Ignoring umask may be OK if the program sets the most restrictive
permissions it can work with, and I suppose in this case that's 0600.

On Mon, Nov 06, 2017 at 08:08:49AM +0100, Christian Brabandt wrote:
> On So, 05 Nov 2017, Jakub Wilk wrote:
> > Couldn't vim create swapfiles with mode 0600 and be done with it?
>
> Because then users of the group could not recover the file anymore,
> although they are able to read the original file.

That's the behavior I would expect.

On Mon, Nov 06, 2017 at 08:11:58AM +0100, Christian Brabandt wrote:
> On So, 05 Nov 2017, Solar Designer wrote:
> > Yes, let's also force 0600 for "undo and backup files", please.
> 
> Backup files and undo files are not created by default, only when Vim is 
> configured to do so. Also the undofile does not leak any information, 
> because as soon as the original file has been slightly altered, the undo 
> information is discarded.

Thanks for the additional detail.  None of this feels like a reason not
to set all of those files to 0600.

Alexander
