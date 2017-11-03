X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1626" "Friday" "3" "November" "2017" "15:39:00" "+0100" "Solar Designer" "solar@openwall.com" "<20171103143900.GA2541@openwall.com>" "29" "Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110314:39:00" "[oss-security] Security risk of server side text editing in general and vim.tiny specifically" (number mark "U       solar@openwa Nov  3   29/1626  " thread-indent "\"Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically\"\n") "<20171103141849.GA2264@openwall.com>" ("<2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local>" "<20171103141849.GA2264@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9623 invoked by uid 550); 3 Nov 2017 14:39:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8189 invoked from network); 3 Nov 2017 14:39:06 -0000
Message-ID: <20171103143900.GA2541@openwall.com>
References: <2ECE9D9EEF1F524185270138AE23265955B0BAE7@S0MSMAIL112.arc.local> <20171103141849.GA2264@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171103141849.GA2264@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 3 Nov 2017 15:39:00 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security risk of server side text editing in general and vim.tiny specifically
To: oss-security@lists.openwall.com

On Fri, Nov 03, 2017 at 03:18:49PM +0100, Solar Designer wrote:
> I am not saying things are good as they are; I think they are not.  Like
> I say, people neither know nor want to know this, and it means they
> continue to do things insecurely.  I don't currently have a solution.

The closest to a solution I came up with so far (around year 2000, but
still unimplemented) is two programs - call them give(1) and take(1) -
for users to exchange files safely.  From users' perspective, these
would go along with write(1) and talk(1).  From sysadmin's perspective,
they'd be tools to use after using an unusually safe (allocating a new
pty, filtering terminal escapes) implementation of su(1) (actually, it
should become su(8), since no safe use of a "su" by a user is possible
anyway) to access the user(s)' account(s) (to copy a file between two
users, or between a user and root).

Implementation-wise, give(1) and take(1) could either rely on having a
shared directory with /tmp-like permissions on the same filesystem with
the users' home directories (and this would be rather specialized, not
addressing the need to easily share files that are not on /home) and use
of hard links, or they'd need a daemon like talkd(8) or reuse sshd(8).

And this last possibility brings us to what we can (and I sometimes do)
use already - setting up temporary SSH keys with forced "cat < ..." or
"cat > ..." commands, and using SSH for safely exchanging files by users
of the same host, or of different hosts for this matter.  It's just
manual setup each time, and we could want to provide convenient tools to
automate that.

Alexander
