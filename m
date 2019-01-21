X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3615" "Monday" "21" "January" "2019" "09:05:35" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190121090535.227a1db9@computer>" "108" "[oss-security] Apache web server use after free bugs (unfixed)" "^Date:" nil nil "1" "2019012108:05:35" "[oss-security] Apache web server use after free bugs (unfixed)" (number mark "        hanno@hboeck Jan 21  108/3615  " thread-indent "\"[oss-security] Apache web server use after free bugs (unfixed)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5646 invoked by uid 550); 21 Jan 2019 08:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5596 invoked from network); 21 Jan 2019 08:05:51 -0000
Message-ID: <20190121090535.227a1db9@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Jan 2019 09:05:35 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Apache web server use after free bugs (unfixed)
To: oss-security@lists.openwall.com

Apache use after free bugs
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

While doing some fuzz testing on the apache httpd server
with address sanitizer we regularly observed use after free
bugs. We originally observed these issues in the http2
module, but we were also able to reproduce them without
http2 enabled, so either we're facing multiple bugs or
there's an underlying bug in the core apache code.

Originally we used fuzzing payloads to trigger this bug,
but we later observed that sending random garbage in
parallel is enough to trigger the bug.

We reported this behavior to the apache security team for the first
time in June 2018. The apache developers did not seem to take the=20
issue as seriously as we had expected.=20

It was pointed out to us that some fixes already in their code may
fix the issue, however we are still able to reproduce these bugs in
the latest version (2.4.37).

The apache developers indicated to us that they'd not consider
these security issues unless we can show a practical exploit.
Due to the complexity of the apache code base and our lack
of specialization in binary memory exploitation we feel unable
to do this. It is, however, our belief that use after free bugs=20
should generally be seen as potential security bugs.

For this reason, we have chosen to share this information with the
community and hope others will continue the analysis.

apr pool allocator
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

For memory allocations apache http uses the apr library's
pool allocator that allows reserving a larger chunk of
memory as a pool and do memory allocations within that pool.
This can, and in our case does, hide memory safety issues.

apr has an option --enable-pool-debug=3Dyes that will cause
a single malloc call for each memory allocation, allowing
the use of memory safety checkers like ASAN.

The apache developers suggested that our ASAN reports may stem
from an incompatibility between the pool debugger and the http2
module. However we were later able to reproduce these issues
without the http2 module.

We were also able to reproduce these issues with valgrind and
without the pool allocator.


threading related error
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In addition to the ASAN use after free reports, httpd logs threading
related errors:

AH00052: child pid [pid] exit signal Aborted (6)
apache2: tpp.c:84: __pthread_tpp_change_priority: Assertion `new_prio
=3D=3D -1 || (new_prio >=3D fifo_min_prio && new_prio <=3D fifo_max_prio)'
failed.

We found a ten year old bug in the Apache bug tracker
mentioning such errors:
https://bz.apache.org/bugzilla/show_bug.cgi?id=3D46185

It was closed as "INVALID".


asan stack traces
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We share asan stack traces from these bugs at
  https://github.com/hannob/apache-uaf/tree/master/asan


reproduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To reproduce the issue:

1. Compile apr with the pool debugger and address sanitizer.

2. Compile apache with address sanitizer.

3. Run a command like this to send random garbage to the server:
for x in $(seq 1 50); do for i in $(seq 1 1000); do head -n
10 /dev/urandom | nc 127.0.0.1 80 & done; sleep 5; done

The bugs appear very irregularly, you may need to
"attack" it for a while.


Hanno B=C3=B6ck
Craig Young (Tripwire VERT)

Thanks to Markus Vervier and Luis Merino of X41 D-SEC GmbH for double
checking.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
