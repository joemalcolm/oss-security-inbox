X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Sunday" "5" "November" "2017" "18:59:59" "+0100" "Solar Designer" "solar@openwall.com" "<20171105175959.GA13011@openwall.com>" "39" "Re: [oss-security] Fw: Security risk of vim swap files" "^Cc:" nil nil "11" "2017110517:59:59" "[oss-security] Fw: Security risk of vim swap files" (number mark "        solar@openwa Nov  5   39/1888  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171105171704.GA9438@256bit.org>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28275 invoked by uid 550); 5 Nov 2017 18:01:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26528 invoked from network); 5 Nov 2017 18:00:29 -0000
Message-ID: <20171105175959.GA13011@openwall.com>
References: <20171102212916.GC23769@256bit.org> <20171103163936.cevlb7ghcwkln6x2@jwilk.net> <20171105171704.GA9438@256bit.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171105171704.GA9438@256bit.org>
User-Agent: Mutt/1.4.2.3i
Cc: Bram@Moolenaar.net
Date: Sun, 5 Nov 2017 18:59:59 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Sun, Nov 05, 2017 at 06:17:04PM +0100, Christian Brabandt wrote:
> On Fr, 03 Nov 2017, Jakub Wilk wrote:
> 
> > In general, what vim does (copying mode bits) in not enough to ensure that
> > the swapfile is readable only by the users who had access to the original
> > file. It would have to copy also group ownership and ACLs.
> 
> I think patch https://github.com/vim/vim/releases/tag/v8.0.1263 fixes 
> the group ownership problem.

That's some effort and code complexity for a fix that is not even trying
to address the problem Hanno pointed out. :-(  What we really need is
simply forcing the permissions to 0600 no matter what.  I do notice that,
non-surprisingly, Bram said:

| Why would a web server expose and serve such a file?  That clearly is
| the problem, not that Vim happens to create swap files (and undo and
| backup files, depending on your configuration).
| 
| You probably also create new files and copies of files that should not
| be served.  If you care about security, the web server must always use
| whitelisting, only serve files that were intentionally made public.

This makes sense, yet Vim can and should also do its part to make things
safer when that does not conflict with its other goals nor introduce
complexity.  Simply using mode 0600 is a win-win: addresses the problem
Hanno reported for the common special case of web server running as a
different user than the file owner, does not break any functionality,
and makes Vim's code simpler.

Yes, let's also force 0600 for "undo and backup files", please.

Even without a web server or whatever other external interaction
aspects, copying the original file's permissions and/or obeying umask is
just wrong in this case because those files are created implicitly,
often without the user's intent and knowledge, and because they might
stay around for longer than the original file does.

Alexander
