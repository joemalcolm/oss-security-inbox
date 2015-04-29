X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2827" "Wednesday" "29" "April" "2015" "17:19:45" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE policy clarification request" nil nil nil "4" "2015042921:19:45" "[oss-security] Re: CVE policy clarification request" (number mark "        cve-assign@m Apr 29   57/2827  " thread-indent "\"[oss-security] Re: CVE policy clarification request\"\n") "<5540B675.6020402@treenet.co.nz>" ("<5540B675.6020402@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11693 invoked by uid 550); 29 Apr 2015 21:20:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11648 invoked from network); 29 Apr 2015 21:19:58 -0000
In-Reply-To: <5540B675.6020402@treenet.co.nz>
Message-Id: <20150429211945.3129D6C0056@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 29 Apr 2015 17:19:45 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE policy clarification request
To: squid3@treenet.co.nz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> My observation of Mitre allocations has been that when a bug B is only
> acting because of another A exploited first the CVE gets assigned to
> the A. In this case the client willingness to accept fake certificate
> makes it vulnerable to mistakes in the proxy.
> 
> Is my observation correct or does the server validation bug get a CVE
> assignment anyway?

We feel that you are eligible to have a CVE ID for the "server cert
validation was a bit naive" issue if you would like to have one.

Here, behavior B is the "server cert validation was a bit naive"
issue. Behavior A is "the client is known to accept one blatantly fake
server certificate." However, there might be scenarios in which
behavior A is intended. For example, maybe an organization has unusual
requirements that are well addressed by the "ssl_bump client-first"
choice. In particular, the organization physically disconnects all
untrusted systems, as well as the external network connection, at a
time when the client accepts the fake certificate, thereby ensuring
that the client is using an expected fake certificate. The client
users are trained to accept fake certificates at that instant of time,
and at no other times. The client users are, however, relying on Squid
to do proper server cert validation at all times. If Squid is not
doing proper server cert validation, then you can report that as a
Squid vulnerability and have a CVE ID. Should we proceed with sending
that CVE ID?

The different scenario that you may have been recalling involves a
"behavior A" that could not ever be intended. For example, suppose
that a backend server can supply a crafted HTTP response header that
causes Squid to download and install a cryptography library from an
arbitrary untrusted location. Because the attacker can control this
library, server cert validation can be spoofed. (If the usual library
is installed, server cert validation can't be spoofed.) Here, there
can't be a separate CVE ID for a server cert validation problem: that
problem could never stand on its own as independently relevant, and
could never be independently fixed.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQUpyAAoJEKllVAevmvmsNaIIAL9YuZKuTrX6VKgyYrL/5Dlc
Oak7xGprYhxqCy4YDg3qQv6NMCJbMwLvMboQ//s22jE7xBJSYxfBz4E6m3hGg32X
3da6N+SoCbjtFSulucyVNILE4N5wfS2Jad1aNZgmbnZn/xuxJWBcTPzUYcITVXIG
DWHfpp9ebjaMUrDZyFLkpJaGOdXTbEGvQSyVmlt2h8eL/5lUEGRYuaUWkvTjL6qG
qZAJPz9TnyNHOxtJ/nZ7tRmmJDyXeXubRZlkB3/9aLLjMABgCxZWFStsPs0zN2Ap
6FHrghIed28FBn2vkH4ShG8z65rs8Y7GtKM9ojxEyA1KwpDFO01ZKRXAiZb2hL0=
=5f0Z
-----END PGP SIGNATURE-----
