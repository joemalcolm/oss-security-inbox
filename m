X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1368" "Monday" "23" "March" "2015" "10:56:35" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<550FC733.1050800@openwall.com>" "28" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032307:56:35" "[oss-security] CVE for Kali Linux" (number mark "        ch3root@open Mar 23   28/1368  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<87zj74a6wa.fsf@hope.eyrie.org>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<877fu8bnks.fsf@hope.eyrie.org>" "<20150322235730.GA24910@openwall.com>" "<87zj74a6wa.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21509 invoked by uid 550); 23 Mar 2015 07:56:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20467 invoked from network); 23 Mar 2015 07:56:48 -0000
Message-ID: <550FC733.1050800@openwall.com>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com>	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>	<20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com>	<877fu8bnks.fsf@hope.eyrie.org> <20150322235730.GA24910@openwall.com> <87zj74a6wa.fsf@hope.eyrie.org>
In-Reply-To: <87zj74a6wa.fsf@hope.eyrie.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Mon, 23 Mar 2015 10:56:35 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 23.03.2015 03:34, Russ Allbery wrote:
> Debian signs the entire repository state, not each individual package.
> This has its pluses and minuses.  The obvious drawback is that if you come
> across a Debian package outside of a repository structure, it is not,
> itself, signed, so you can't verify its validity (the exception is source
> packages, which have an independent signature).

You can to accompany the package with Release{,.gpg} (or just InRelease) 
files. Kinda fat detached signature. I do it when I download files like 
hd-media/boot.img.gz for installer.

> The advantage of having a
> global repository state signature is that you can do things like this
> without difficulty.  It has the mixed advantage and disadvantage that
> partial mirrors that modify the package set have to make their own
> signature and all clients that talk to them have to use different keys to
> verify those packages.
>
> Basically, the signing algorithm for a Debian repository rolls up all the
> hashes for each individual package in the archive and signs the whole
> thing (per-architecture, so you can do partial mirrors of only certain
> architectures without invalidating the overall signature).

I'm not sure what you mean here. Presumably you can have any subset of 
the packages and they will be happily verified against Release file?

-- 
Alexander Cherepanov
