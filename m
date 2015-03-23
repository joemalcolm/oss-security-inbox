X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2072" "Sunday" "22" "March" "2015" "17:34:29" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87zj74a6wa.fsf@hope.eyrie.org>" "38" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032300:34:29" "[oss-security] CVE for Kali Linux" (number mark "        eagle@eyrie. Mar 22   38/2072  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322235730.GA24910@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<877fu8bnks.fsf@hope.eyrie.org>" "<20150322235730.GA24910@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9927 invoked by uid 550); 23 Mar 2015 00:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9909 invoked from network); 23 Mar 2015 00:34:42 -0000
In-Reply-To: <20150322235730.GA24910@openwall.com> (Solar Designer's message
	of "Mon, 23 Mar 2015 02:57:30 +0300")
Organization: The Eyrie
References: <550EE478.70005@redhat.com>
	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
	<20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com>
	<877fu8bnks.fsf@hope.eyrie.org> <20150322235730.GA24910@openwall.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Message-ID: <87zj74a6wa.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Date: Sun, 22 Mar 2015 17:34:29 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

Solar Designer <solar@openwall.com> writes:
> On Sun, Mar 22, 2015 at 04:48:51PM -0700, Russ Allbery wrote:

>> Debian is indeed moving in exactly that direction, using the
>> Valid-Until attribute of the archive metadata.  This currently isn't
>> (yet?) enabled for the main stable archive, but is for the unstable and
>> testing archives, the security archive, and the backports archive.

> How do you handle the case when a given package build remains the
> recommended version in its branch beyond the signature's initial
> Valid-Until date?  Do you issue a new signature for it?

Debian signs the entire repository state, not each individual package.
This has its pluses and minuses.  The obvious drawback is that if you come
across a Debian package outside of a repository structure, it is not,
itself, signed, so you can't verify its validity (the exception is source
packages, which have an independent signature).  The advantage of having a
global repository state signature is that you can do things like this
without difficulty.  It has the mixed advantage and disadvantage that
partial mirrors that modify the package set have to make their own
signature and all clients that talk to them have to use different keys to
verify those packages.

Basically, the signing algorithm for a Debian repository rolls up all the
hashes for each individual package in the archive and signs the whole
thing (per-architecture, so you can do partial mirrors of only certain
architectures without invalidating the overall signature).

There's been a lot of discussion of independently signing the binary
packages as well, but so far Debian hasn't bothered since there are some
challenges around key rotation since binary packages can be long-lived,
and there aren't many real benefits given the global repository signature.
Mostly just validating packages outside the repository structure, but such
a situation is inherently vulnerable to replaying old packages with known
vulnerabilities anyway.

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
