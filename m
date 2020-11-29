X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3054" "Sunday" "29" "November" "2020" "16:53:12" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" "<20201129165312.64bd840f@fabiankeil.de>" "79" "[oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil "11" "2020112915:53:12" "[oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" (number mark "U       freebsd-list Nov 29   79/3054  " thread-indent "\"[oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17607 invoked by uid 550); 29 Nov 2020 18:17:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5365 invoked from network); 29 Nov 2020 15:54:39 -0000
Date: Sun, 29 Nov 2020 16:53:12 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20201129165312.64bd840f@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_//Hdd7fNlrGZpyPZLw4BqREu";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] Multiple memory leaks fixed in Privoxy 3.0.29 stable

--Sig_//Hdd7fNlrGZpyPZLw4BqREu
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

               Announcing Privoxy 3.0.29 stable
--------------------------------------------------------------------

Privoxy 3.0.29 stable fixes a couple of memory leaks and introduces
https inspection which allows to filter encrypted requests and
responses.

--------------------------------------------------------------------
ChangeLog for Privoxy 3.0.29
--------------------------------------------------------------------

- Security/Reliability:
  - Fixed memory leaks when a response is buffered and the buffer
    limit is reached or Privoxy is running out of memory.
    Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.
    Sponsored by: Robert Klemme
  - Fixed a memory leak in the show-status CGI handler when
    no action files are configured. Commit c62254a686.
    OVE-20201118-0002.
    Sponsored by: Robert Klemme
  - Fixed a memory leak in the show-status CGI handler when
    no filter files are configured. Commit 1b1370f7a8a.
    OVE-20201118-0003.
    Sponsored by: Robert Klemme
  - Fixes a memory leak when client tags are active.
    Commit 245e1cf32. OVE-20201118-0004.
    Sponsored by: Robert Klemme
  - Fixed a memory leak if multiple filters are executed
    and the last one is skipped due to a pcre error.
    Commit 5cfb7bc8fe. OVE-20201118-0005.
  - Prevent an unlikely dereference of a NULL-pointer that
    could result in a crash if accept-intercepted-requests
    was enabled, Privoxy failed to get the request destination
    from the Host header and a memory allocation failed.
    Commit 7530132349. CID 267165. OVE-20201118-0006.
  - Fixed memory leaks in the client-tags CGI handler when
    client tags are configured and memory allocations fail.
    Commit cf5640eb2a. CID 267168. OVE-20201118-0007.
  - Fixed memory leaks in the show-status CGI handler when memory
    allocations fail. Commit 064eac5fd0 and commit fdee85c0bf3.
    CID 305233. OVE-20201118-0008.

- General improvements:
[...]

-----------------------------------------------------------------
About Privoxy:
-----------------------------------------------------------------

Privoxy is a non-caching web proxy with advanced filtering capabilities for
enhancing privacy, modifying web page data and HTTP headers, controlling
access, and removing ads and other obnoxious Internet junk. Privoxy has a
flexible configuration and can be customized to suit individual needs and
tastes. It has application for both stand-alone systems and multi-user
networks.

Privoxy is Free Software and licensed under the GNU GPLv2.

[...]

Home Page:=20
   https://www.privoxy.org/

--Sig_//Hdd7fNlrGZpyPZLw4BqREu
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCX8PD6AAKCRAFiohV/3dU
nYLIAKCAuMw3tdjOXgvxq+FAgV9HIjrGdgCghxqbzoQT7Qjoy2YSjDIj1pCuxjU=
=ZIHJ
-----END PGP SIGNATURE-----

--Sig_//Hdd7fNlrGZpyPZLw4BqREu--
