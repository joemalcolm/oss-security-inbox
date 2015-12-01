X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1174" "Tuesday" "1" "December" "2015" "13:29:00" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20151201132900.118a4061@redhat.com>" "23" "Re: [oss-security] race condition checking digests/checksums in sudoers" "^Cc:" nil nil "12" "2015120112:29:00" "[oss-security] race condition checking digests/checksums in sudoers" (number mark "        thoger@redha Dec  1   23/1174  " thread-indent "\"Re: [oss-security] race condition checking digests/checksums in sudoers\"\n") "<20151110002314.GU18245@li141-249.members.linode.com>" ("<20151110002314.GU18245@li141-249.members.linode.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10043 invoked by uid 550); 1 Dec 2015 12:29:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10025 invoked from network); 1 Dec 2015 12:29:17 -0000
Message-ID: <20151201132900.118a4061@redhat.com>
In-Reply-To: <20151110002314.GU18245@li141-249.members.linode.com>
References: <20151110002314.GU18245@li141-249.members.linode.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: oss-security@lists.openwall.com
Date: Tue, 1 Dec 2015 13:29:00 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] race condition checking digests/checksums in
 sudoers
To: Alyssa Milburn <amilburn@zall.org>,
        "Todd C. Miller"
 <Todd.Miller@courtesan.com>

On Tue, 10 Nov 2015 00:23:14 +0000 Alyssa Milburn wrote:

> Recent releases of sudo (since 1.8.7) support SHA-2 digests in the sudoers
> file, which the documentation states "may be useful in situations where the
> user invoking sudo has write access to the command or its parent directory".
> 
> The sudoers plugin performs this digest verification while matching rules,
> and later independently calls execve() to execute the binary. This results
> in a race condition if the digest functionality is used as suggested (in
> fact, the rules are matched before the user is prompted for a password, so
> you have quite some time to replace the binary from underneath sudo).
> 
> I'm not sure whether this problem is interesting enough to announce or not;
> I imagine this functionality isn't widely used, but it's clearly unsafe to
> use in such situations right now, and it seems like it would be a can of
> worms (at best) to make it completely safe.

Was any fix for this issue already applied, or is any fix planned at
all?  Looking at upstream hg and changelog, it does not seem there's
any change related to this report yet.

-- 
Tomas Hoger / Red Hat Product Security
