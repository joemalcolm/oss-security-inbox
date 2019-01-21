X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["707" "Monday" "21" "January" "2019" "09:23:22" "+0100" "Florian Weimer" "fweimer@redhat.com" "<87sgxmiflx.fsf@oldenburg2.str.redhat.com>" "22" "Re: [oss-security] Apache web server use after free bugs (unfixed)" "^Cc:" nil nil "1" "2019012108:23:22" "[oss-security] Apache web server use after free bugs (unfixed)" (number mark "        fweimer@redh Jan 21   22/707   " thread-indent "\"Re: [oss-security] Apache web server use after free bugs (unfixed)\"\n") "<20190121090535.227a1db9@computer>" ("<20190121090535.227a1db9@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3457 invoked by uid 550); 21 Jan 2019 08:23:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3431 invoked from network); 21 Jan 2019 08:23:37 -0000
References: <20190121090535.227a1db9@computer>
In-Reply-To: <20190121090535.227a1db9@computer> ("Hanno \=\?utf-8\?Q\?B\=C3\=B6c\?\=
 \=\?utf-8\?Q\?k\=22's\?\= message of
	"Mon, 21 Jan 2019 09:05:35 +0100")
Message-ID: <87sgxmiflx.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 21 Jan 2019 08:23:25 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Mon, 21 Jan 2019 09:23:22 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Apache web server use after free bugs (unfixed)
To: Hanno =?utf-8?Q?B=C3=B6ck?= <hanno@hboeck.de>

* Hanno B=C3=B6ck:

> threading related error
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> In addition to the ASAN use after free reports, httpd logs threading
> related errors:
>
> AH00052: child pid [pid] exit signal Aborted (6)
> apache2: tpp.c:84: __pthread_tpp_change_priority: Assertion `new_prio
> =3D=3D -1 || (new_prio >=3D fifo_min_prio && new_prio <=3D fifo_max_prio)'
> failed.

This can happen if the mutex data is corrupted, so it's possible this
also caused by a use-after-free issue (if the memory is reallocated and
overwritten before the mutex operation that causes the assertion
failure).

Did you observe this with the pool debugger only?

Thanks,
Florian
