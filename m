X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["532" "Friday" "7" "April" "2017" "13:50:40" "-0400" "Frank Ch. Eigler" "fche@redhat.com" "<87d1cods3z.fsf@redhat.com>" "18" "[oss-security] Re: libxslt math.random issue" nil nil nil "4" "2017040717:50:40" "[oss-security] Re: libxslt math.random issue" (number mark "U       fche@redhat. Apr  7   18/532   " thread-indent "\"[oss-security] Re: libxslt math.random issue\"\n") "<87inmhek30.fsf@redhat.com>" ("<20170406054400.GC32355@suse.de>" "<455b67a9-6d14-b374-8140-51546a53738d@redhat.com>" "<87inmhek30.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10211 invoked by uid 550); 7 Apr 2017 17:55:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5485 invoked from network); 7 Apr 2017 17:50:54 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A2CBE9D404
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fche@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A2CBE9D404
From: fche@redhat.com (Frank Ch. Eigler)
To: oss-security@lists.openwall.com
References: <20170406054400.GC32355@suse.de>
	<455b67a9-6d14-b374-8140-51546a53738d@redhat.com>
	<87inmhek30.fsf@redhat.com>
Date: Fri, 07 Apr 2017 13:50:40 -0400
In-Reply-To: <87inmhek30.fsf@redhat.com> (Frank Ch. Eigler's message of "Thu,
	06 Apr 2017 09:34:11 -0400")
Message-ID: <87d1cods3z.fsf@redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 07 Apr 2017 17:50:42 +0000 (UTC)
Subject: [oss-security] Re: libxslt math.random issue


Florian Weimer wrote:

> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/
>
> The C standard does not allow it.
>
> =E2=80=9D
> If rand is called before any calls to srand have been made, the same
> sequence shall be generated as when srand is first called with a seed
> value of 1.
> =E2=80=9D

Yes, but that does not imply that srand(1) needs to resolve to a
build-constant value.  https://gitlab.com/fche/randomer salts it with a
snippet from /dev/urandom, and stays POSIX-compatible & restartable.

- FChE
