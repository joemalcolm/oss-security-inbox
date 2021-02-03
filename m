X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2666" "Wednesday" "3" "February" "2021" "12:05:55" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20210203120555.5ffc809e@fabiankeil.de>" "65" "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil "2" "2021020311:05:55" "[oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" (number mark "U       freebsd-list Feb  3   65/2666  " thread-indent "\"Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable\"\n") "<20201129165312.64bd840f@fabiankeil.de>" ("<20201129165312.64bd840f@fabiankeil.de>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13389 invoked by uid 550); 3 Feb 2021 11:16:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11604 invoked from network); 3 Feb 2021 11:12:30 -0000
Date: Wed, 3 Feb 2021 12:05:55 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210203120555.5ffc809e@fabiankeil.de>
In-Reply-To: <20201129165312.64bd840f@fabiankeil.de>
References: <20201129165312.64bd840f@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/er0hk59D0PJNef7aEXllfLT";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: Re: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29
 stable

--Sig_/er0hk59D0PJNef7aEXllfLT
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2020-11-29:

>                Announcing Privoxy 3.0.29 stable
> --------------------------------------------------------------------
>=20
> Privoxy 3.0.29 stable fixes a couple of memory leaks and introduces
> https inspection which allows to filter encrypted requests and
> responses.
>=20
> --------------------------------------------------------------------
> ChangeLog for Privoxy 3.0.29
> --------------------------------------------------------------------

Here are the updated ChangeLog entries with CVEs:

- Security/Reliability:
  - Fixed memory leaks when a response is buffered and the buffer
    limit is reached or Privoxy is running out of memory.
    Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.
    CVE-2020-35502.
    Sponsored by: Robert Klemme
  - Fixed a memory leak in the show-status CGI handler when
    no action files are configured. Commit c62254a686.
    OVE-20201118-0002. CVE-2021-20209.
    Sponsored by: Robert Klemme
  - Fixed a memory leak in the show-status CGI handler when
    no filter files are configured. Commit 1b1370f7a8a.
    OVE-20201118-0003. CVE-2021-20210.
    Sponsored by: Robert Klemme
  - Fixes a memory leak when client tags are active.
    Commit 245e1cf32. OVE-20201118-0004. CVE-2021-20211.
    Sponsored by: Robert Klemme
  - Fixed a memory leak if multiple filters are executed
    and the last one is skipped due to a pcre error.
    Commit 5cfb7bc8fe. OVE-20201118-0005. CVE-2021-20212.
  - Prevent an unlikely dereference of a NULL-pointer that
    could result in a crash if accept-intercepted-requests
    was enabled, Privoxy failed to get the request destination
    from the Host header and a memory allocation failed.
    Commit 7530132349. CID 267165. OVE-20201118-0006. CVE-2021-20213.
  - Fixed memory leaks in the client-tags CGI handler when
    client tags are configured and memory allocations fail.
    Commit cf5640eb2a. CID 267168. OVE-20201118-0007. CVE-2021-20214.
  - Fixed memory leaks in the show-status CGI handler when memory
    allocations fail. Commit 064eac5fd0 and commit fdee85c0bf3.
    CID 305233. OVE-20201118-0008. CVE-2021-20215.

Fabian

--Sig_/er0hk59D0PJNef7aEXllfLT
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYBqDlAAKCRAFiohV/3dU
nbVgAJ9edYp5lLkr0IJQ4N5IhPkQZySzEwCaAszGbtQaZRegY4K2MVwqKdm02rc=
=CrIY
-----END PGP SIGNATURE-----

--Sig_/er0hk59D0PJNef7aEXllfLT--
