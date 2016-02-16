X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2281" "Tuesday" "16" "February" "2016" "09:45:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160216144501.833566C08BD@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" nil nil nil "2" "2016021614:45:01" "[oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service" (number mark "U       cve-assign@m Feb 16   57/2281  " thread-indent "\"[oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service\"\n") "<56C27FE3.5030104@treenet.co.nz>" ("<56C27FE3.5030104@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26411 invoked by uid 550); 16 Feb 2016 14:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26389 invoked from network); 16 Feb 2016 14:45:14 -0000
From: cve-assign@mitre.org
To: squid3@treenet.co.nz
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56C27FE3.5030104@treenet.co.nz>
Message-Id: <20160216144501.833566C08BD@smtpvmsrv1.mitre.org>
Date: Tue, 16 Feb 2016 09:45:01 -0500 (EST)
Subject: [oss-security] Re: CVE request: Squid HTTP Caching Proxy 3.5.13, 4.0.4, 4.0.5 denial of service

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.squid-cache.org/Advisories/SQUID-2016_1.txt

> Patch for 3.5 is
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13981.patch>.
> 
> Patch for 4.0 is
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13981.patch>.

Is this correct or do you mean the 4.0 patch is
http://www.squid-cache.org/Versions/v4/changesets/squid-4-14538.patch instead?


> A remotely triggerable denial of service has been found in Squid
> proxy. The proxy incorrectly handles server TLS failure which almost
> always results in crashing the entire proxy. Denying service for all
> other clients using it.

>   Bug 4437: Fix Segfault on Certain SSL Handshake Errors
>   
>   Squid after an unsuccessful try to connect to the remote server may make two
>   concurrent retries to connect to the remote SSL server, calling twice the
>   FwdState::retryOrBail() method, which may result to unexpected behaviour.
>   
>   Prevent this by just closing the connection to the remote SSL server inside
>   FwdState::connectedToPeer method on error and instead of calling the
>   FwdState::retryOrBail method, just allow comm_close handler to retry the
>   connection if required.
> 
> src/FwdState.cc

Use CVE-2016-2390.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWwzVEAAoJEL54rhJi8gl5CEcQAJnr/8JJbM4e1Q/o8w3AVYk0
FUPc250Qj0z4l5Nq8j8OSx5GsLIx9uVe3NnLe50uPYlF0bdM+AEEbi4e6EJSvtdx
772jj6N/QArkrbf4qTKWtXS812mxLW6CPewOIk+ldMeAKMKUIh3ePuST3RByxJqi
3oZGzyQbo2MoDQgXVRQFH6uXo1+4dHqmZfOQjLiaXNEFark248mK+DELCM5P5tB6
F9ATtcaXuqxj5jwGKm9gZUk5uDP9Ed15Wn020fi5saWDYiFJXF3XeaeURzvTnrS2
AaKgC0Kvw6gwOams+FIxp8NQtP4XSZMefqRNeoAZdeuV76xZOXWLV9ki2RAEIsWF
p8qfV1bvdY/+seQ4QUqkm/VmRKc3gHecBSSsnmV+YNa213fzcGXYBfP2nTIFTgwF
cQ7ycLbMEAGwHWava8t6TJF8mE1+oWNejKBwOMPkJMI9v+mCe364V401+KIYms+a
6qSbk3iuBoHVm3H7Z1ikcJRW92XKX9LaXTVx5JH5B9p+DRryB9u+zgC8VKAWLOAn
5t4W3JrliAZluSpc7++6TTqOuFOBEsfJ6l66UEv5Xgoj3BhRBEFkflbYedOLfCap
apjOXQhV5G1H48Pm6bVStDyRE3JQEbxefGkCwOJDAYOWVqULQ0yACpmng14TjQOR
RVX4OJ1VZboeNcSMFh4H
=evrD
-----END PGP SIGNATURE-----
