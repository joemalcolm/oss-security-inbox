X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Sunday" "26" "August" "2018" "18:04:50" "+1000" "Damien Miller" "djm@mindrot.org" "<alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>" "26" "Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" "^Date:" nil nil "8" "2018082608:04:50" "[oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473" (number mark "        djm@mindrot. Aug 26   26/1278  " thread-indent "\"Re: [oss-security] About OpenSSH \"user enumeration\" / CVE-2018-15473\"\n") "<20180825100149.GA2596@openwall.com>" ("<alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org>" "<20180824182942.GA932@openwall.com>" "<alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org>" "<20180825100149.GA2596@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20420 invoked by uid 550); 26 Aug 2018 10:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16192 invoked from network); 26 Aug 2018 08:05:05 -0000
In-Reply-To: <20180825100149.GA2596@openwall.com>
Message-ID: <alpine.BSO.2.21.1808261758080.76507@haru.mindrot.org>
References: <alpine.BSO.2.21.1808241046220.67512@haru.mindrot.org> <20180824182942.GA932@openwall.com> <alpine.BSO.2.21.1808251030060.32421@haru.mindrot.org> <20180825100149.GA2596@openwall.com>
User-Agent: Alpine 2.21 (BSO 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.73 on UQ Mailhub
X-Scanned-By: MIMEDefang 2.75 on 130.102.60.17
X-UQ-FilterTime: 1535270693
Date: Sun, 26 Aug 2018 18:04:50 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] About OpenSSH "user enumeration" /
 CVE-2018-15473
To: oss-security@lists.openwall.com

On Sat, 25 Aug 2018, Solar Designer wrote:

> This could mean an extra getpwnam(3) call, which is a slightly greater
> timing leak than what's present in one call. That may be further
> mitigated by always doing two calls. Of course, this won't be anywhere
> near timing-safe anyway.
>
> Now, it can be tricky to pick a specific fallback username in
> OpenSSH-portable that we'd be OK with all non-existent usernames to
> behave similarly to. "root" may somewhat likely have unusual password
> hash (like it historically did on OpenBSD); "nobody" likely has its
> password locked (but maybe that's OK - it is in fact common for SSH
> users to have only public keys setup, and no passwords). Maybe there
> should be a way to override this dummy username in sshd_config.

That sounds like a fair amount of complexity in return for scant
benefit: at best you dodge a few (IMO uninteresting) bugs, but now you
are guaranteed to have all your authz code exposed to a the attacker.

Moreover, using a "real fake" account gives a timing / system behaviour
baseline too. It might be harder to discern, but techniques for making
remote observations of subtle system side-channels are scarily well-
developed, and I'm sure that it would be pretty easy to spot if people
applied them.

-d
