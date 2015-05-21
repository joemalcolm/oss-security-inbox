X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1719" "Thursday" "21" "May" "2015" "10:16:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request: zeromq downgrade attack" nil nil nil "5" "2015052114:16:53" "[oss-security] Re: CVE Request: zeromq downgrade attack" (number mark "        cve-assign@m May 21   46/1719  " thread-indent "\"[oss-security] Re: CVE Request: zeromq downgrade attack\"\n") "<20150507144908.GA1677@kronk.local>" ("<20150507144908.GA1677@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21775 invoked by uid 550); 21 May 2015 14:17:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21747 invoked from network); 21 May 2015 14:17:04 -0000
In-Reply-To: <20150507144908.GA1677@kronk.local>
Message-Id: <20150521141653.0EB24B2E24E@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 21 May 2015 10:16:53 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: zeromq downgrade attack
To: alessandro@ghedini.me

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/zeromq/libzmq/issues/1273
> https://github.com/zeromq/zeromq4-x/commit/b6e3e0f601e2c1ec1f3aac880ed6a3fe63043e51
> https://www.debian.org/security/2015/dsa-3255

Use CVE-2014-9721.

> // Is the peer using ZMTP/1.0 with no revision number?
> if (greeting_recv [0] != 0xff || !(greeting_recv [9] & 0x01)) {
>     if (session->zap_enabled ()) {
>         // Reject ZMTP 1.0 connections if ZAP is enabled
>         error ();
> 
> if (greeting_recv [revision_pos] == ZMTP_1_0) {
>     if (session->zap_enabled ()) {
>         // Reject ZMTP 1.0 connections if ZAP is enabled
>         error ();
> 
> if (greeting_recv [revision_pos] == ZMTP_2_0) {
>     if (session->zap_enabled ()) {
>         // Reject ZMTP 1.0 connections if ZAP is enabled
>         error ();

We think there is essentially only one vulnerability, and it was fixed
by that commit, but it is somewhat confusing because of an apparent
typo in a comment. Shouldn't the "== ZMTP_2_0" test have a "Reject
ZMTP 2.0" comment?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVXehxAAoJEKllVAevmvmsbfgH/2jRFmbbcvY3qV4yGoEhupxS
xiI4z5Emf7dgQ/J06/qK4EBCBbr4UfWD9MlEWPOJF1jC5x4ILz7R44nfLtNwvv+H
weBUUI7VcCIbzs4/aIhznHExz849e9ze2wQLURaZ+v9d7tuc9QpTGfDdOqI/Mu7h
9LKrZPKmbbx6HyQVZVCf3UETiNeSndbmF/Up8A8QPIkBDDUUNiigZTj3JRXCUyuP
3MtLHGECAg5+qst2CPaLgdp64CTRinHzNXffF6kOS71CaqPPj4O5sbUAaLQBEHsw
cyvTGsFyoM2NaefGnlG06Snk7EEfANwX9whCoQneHDNDK0Fr/L5sCwd+BYdQzlI=
=rSCR
-----END PGP SIGNATURE-----
