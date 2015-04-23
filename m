X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["870" "Thursday" "23" "April" "2015" "15:16:23" "+0100" "Stephane Chazelas" "stephane.chazelas@gmail.com" "<20150423141623.GC7753@chaz.gmail.com>" "28" "[oss-security] Re: open(2) with side effects" nil nil nil "4" "2015042314:16:23" "[oss-security] Re: open(2) with side effects" (number mark "        stephane.cha Apr 23   28/870   " thread-indent "\"[oss-security] Re: open(2) with side effects\"\n") "<5538EEDB.50308@redhat.com>" ("<5538EEDB.50308@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16205 invoked by uid 550); 23 Apr 2015 14:20:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16187 invoked from network); 23 Apr 2015 14:20:29 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <20150423141623.GC7753@chaz.gmail.com>
References: <5538EEDB.50308@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 90.200.233.133
Content-Disposition: inline
In-Reply-To: <5538EEDB.50308@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 23 Apr 2015 15:16:23 +0100
From: Stephane Chazelas <stephane.chazelas@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: open(2) with side effects
To: oss-security@lists.openwall.com

2015-04-23 15:08:43 +0200, Florian Weimer:
> How common are file names on Linux which, when just opened and closed
> (maybe with fstat or fgetattr inbetween), trigger side effects, such as
> tape rewind?
[...]

Depends what you mean by side effect.

named pipes come to mind.

If a process is blocked on open() with O_RDONLY or O_WRONLY on a
named pipe, then when another process comes along and does the
symmetric (O_WRONLY or O_RDONLY) open(), the first process is
unblocked, and when you close() it, the other process will see
eof() on the fd or get a SIGPIPE if it writes...

Opening /dev/ptmx causes a new pts to be allocated. I'd expect
many other devices to allocate something upon an open.

Opening any file gets you closer to the limit of number of open
files.

Opening a file prevents its disk space from being reclaimed upon
the last unlink...

-- 
Stephane

