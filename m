X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3217" "Tuesday" "31" "January" "2017" "14:05:50" "-0500" "Leo Famulari" "leo@famulari.name" "<20170131190550.GA16979@jasmine>" "94" "[oss-security] Bugs fixed in libevent 2.1.6" nil nil nil "1" "2017013119:05:50" "[oss-security] Bugs fixed in libevent 2.1.6" (number mark "U       leo@famulari Jan 31   94/3217  " thread-indent "\"[oss-security] Bugs fixed in libevent 2.1.6\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15780 invoked by uid 550); 31 Jan 2017 19:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9337 invoked from network); 31 Jan 2017 19:06:03 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:message-id:mime-version:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=eG/
	7O2fNYD9f4vk+AdeY8OJz88s=; b=Kvq6ib3Lg60ZdrcBPaCLJ5Yrt6KZ6ss9xfv
	ZVVMHV/TiHIjuUk4u50U/XEEkqsqN4A4L56W1P4eorEB67+S+3d19xxunEWbNUTF
	VOrpx64ab/qddmQao9Xrj2kxhRFgikjZSvowL04Gm4keEajukM1Ntbnplae5GxFC
	Wlk2FYYQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=eG/7O2fNYD9f4vk+AdeY8OJz88s=; b=ZSZtC
	HfGph7SyoJnV43/fJfeEpvRTNte09eK1AqC4y5W5SFLluE/fb3qchRPcl5WJ/I53
	cD77MJNjbQkC+W2iiOtE8cNk8f8haN1SmmkmiXuEllxxFpTwDAtKcg4nbSn2Q0+F
	hodE4OaH3nHXRfbo7HmupCT++9L1KQN2/wuBDg=
X-ME-Sender: <xms:D-CQWNYfJhSSxmnv-RqjIbvorF5wLID1BAf0rf2pbpMEb7IQ1vOCGQ>
X-Sasl-enc: i5OClpibGKlIgHd2ok0sNdvjcoG+ZrCl1S4QdDtUpoLH 1485889551
Date: Tue, 31 Jan 2017 14:05:50 -0500
From: Leo Famulari <leo@famulari.name>
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <20170131190550.GA16979@jasmine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: [oss-security] Bugs fixed in libevent 2.1.6

--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Libevent 2.1.6 fixed three bugs that may have security implications. Can
you assign CVE IDs as appropriate?

Below I quote from the upstream bug reports:

1) libevent dns remote stack overread vulnerability
------
the name_parse() function in libevent's DNS code is vulnerable to a
buffer overread.

971         if (cp != name_out) {
972             if (cp + 1 >= end) return -1;
973             *cp++ = '.';
974         }
975         if (cp + label_len >= end) return -1;
976         memcpy(cp, packet + j, label_len);
977         cp += label_len;
978         j += label_len;

No check is made against length before the memcpy occurs.
[...]
azat closed this in 96f64a0 on Feb 1, 2016
------
https://github.com/libevent/libevent/issues/317

2) libevent (stack) buffer overflow in evutil_parse_sockaddr_port()
------
in evutil.c:

1798     char buf[128];
...
...
1809     cp = strchr(ip_as_string, ':');
1810     if (*ip_as_string == '[') {
1811         int len;
1812         if (!(cp = strchr(ip_as_string, ']'))) {
1813             return -1;
1814         }
1815         len = (int) ( cp-(ip_as_string + 1) );
1816         if (len > (int)sizeof(buf)-1) {
1817             return -1;
1818         }
1819         memcpy(buf, ip_as_string+1, len);

Length between '[' and ']' is cast to signed 32 bit integer on line
1815. Is the length is more than 2<<31 (INT_MAX), len will hold a
negative value. Consequently, it will pass the check at line 1816.
Segfault happens at line 1819.
[...]
azat closed this in 329acc1 on Feb 1, 2016
------
https://github.com/libevent/libevent/issues/318

3) out-of-bounds read in search_make_new()
------
The DNS code of Libevent contains this rather obvious OOB read:

3122 static char *
3123 search_make_new(const struct search_state *const state, int n, const char *const base_name) {
3124     const size_t base_len = strlen(base_name);
3125     const char need_to_append_dot = base_name[base_len - 1] == '.' ? 0 : 1;

If the length of base_name is 0, then line 3125 reads 1 byte before the
buffer. This will trigger a crash on ASAN-protected builds.
[...]
azat closed this in ec65c42 on Mar 24, 2016
------
https://github.com/libevent/libevent/issues/332

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAliQ4A4ACgkQJkb6MLrK
fwiFfxAAjMk+I6rECCfs+eCONsp3Ym/UbRgxUqItG4f78gfF/F4pLXdGNqA5O7PA
8scThJRxzoxQcOpwUm9u+/HNUPdQ+eIXMj8TqfPas8MzDVZ/aQfL1E+kYeN/CNSJ
+lTQajNj8TdT3KAOIE/cIJs5f8bYQhUBpZt0dbCV/PqVNBNCo158+FyQrlLHntaW
VyEjOwmS54Pcg7OxL7zVJCjhLdmANbJPYK5utAZcvJ0sTkaKwP6i07fLMASQQRRa
J14Rj2iAPjk0hwzBULGRAE3JCbjr82HKfZacjFxMVpPIdV+eaGHGV56Dn2IHbPuc
dsLWP7Q1Lv3QeWoKkC93R7p1kGEXRs1X8H7CHTuJxf45pl0rYI6azc++tCxHTcCR
3Zv4qFRH4DJ0zK6e8+lciLl6mO/DuTS6HFMuuOCx6pATtBcyCQgn70cutEu/fb+h
quxMbYy64hUIfw99/l8N4gFXfhv59tx17S08tdGueKqGnVLTBXXWpmD13o21urEx
YLvRI5UIbFI9P676kVnbavG4Jq6WAXRoA9nZgF2Q0ZKsNLgk9ifWKt+liGAfpppe
46SLV+67tyzGOCDT7WVTqDcv+79tOqWT/j9DK6KTFPrKCFi+JBNUp+wDNyPosqnT
4D19oekEP7AULxYW0BH+oNllXkSXG/o2WrrhA50tjaRYs4Q6s/c=
=GVpP
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--
