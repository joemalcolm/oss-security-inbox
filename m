Received: (qmail 10205 invoked by uid 550); 2 May 2026 14:01:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10184 invoked from network); 2 May 2026 14:01:10 -0000
Date: Sat, 2 May 2026 10:01:00 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <afYDnAYav7qJndlr@netmeister.org>
References: <87mryiinrq.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mryiinrq.fsf@gmail.com>
Subject: Re: [oss-security] uutils coreutils CVEs

Collin Funk <collin.funk1@gmail.com> wrote:

> We can see that uutils 'mkfifo' creates the fifo with world readable and
> writable permissions and then uses chmod() 


>     umask(000)                              = 002
>     umask(002)                              = 000
>     mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) = 0

Minor difference, and not disputing the race condition
here, but doesn't this initially yield a fifo with
mode 664, not 666 due to the umask(002) right before?

Ie., not _world_ writable (although _group_ writable),
even prior to chmod(2).

-Jan
