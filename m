X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2569" "Tuesday" "28" "April" "2015" "11:04:00" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<553FBD80.4000809@redhat.com>" "62" "[oss-security] Limited DoS in mailman (requires non standard config)" nil nil nil "4" "2015042817:04:00" "[oss-security] Limited DoS in mailman (requires non standard config)" (number mark "        kseifried@re Apr 28   62/2569  " thread-indent "\"[oss-security] Limited DoS in mailman (requires non standard config)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22215 invoked by uid 550); 28 Apr 2015 17:04:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22197 invoked from network); 28 Apr 2015 17:04:15 -0000
Message-ID: <553FBD80.4000809@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="35LrVEHj3on93j69ua30oL1vwfCvdTtcT"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 28 Apr 2015 11:04:00 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Limited DoS in mailman (requires non standard config)
To: mailman-security@python.org,
        "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--35LrVEHj3on93j69ua30oL1vwfCvdTtcT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So I recently ran into a flaw in mailman where I had imported a text
list of email addresses of people that wanted to sign up. It turns out
one of the addresses was in the form "user@domain.tld/random", not sure
how that snuck in but anyways. When sending email to this list it fails
due to that address being present:

from mailman posts log:

Apr 28 16:46:23 2015 (29704) post to testing from testing-request@XXX,
size=3D1786, message-id=3D<mailman.0.1430239582.16535.testing@XXX>, 1 failu=
res

from smtp-failure log:

smtp-failure:Apr 28 16:46:44 2015 (29704) All recipients refused:
{'kurt@seifried.org/foo': (501, '5.1.3 Bad recipient address syntax')},
msgid: <CAEo5KB7F3LNCv7Q09ppqBRgUZTaGizyRHx1WS81w8K7S8Yhk7A@YYY>

So obviously any list configured to require confirmation will not be
affected by this, but lists using import via file or web interface could
potentially be affected (if you get a "dirty" list), or lists that are
require admin approval only and not confirmation (e.g. the admin doesn't
notice it when they hit accept).

Overall I don't think this is a security vulnerability, if you have
"require confirmation" and clean any address prior to import it cannot
be triggered, but it would be nice to have this hardened I think.


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--35LrVEHj3on93j69ua30oL1vwfCvdTtcT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVP72AAAoJEBYNRVNeJnmTi6EP/j1BLSK9+n3+6VBE6ZRgI6jN
HAaNQ22SYSwMK1pyeM+SkPWa2DQGjmCIETX+NlQOSjjZ1eMQbDNxaVxnYoDaU0PC
+ZQKoeZ6l+B6fo03ul4JBUfGYuuxOKraeXfsmj+NS3r5rwaGKN4d8rphcX/AkhT5
qkYX0M9RGdR9oTH9qkdWwGxvckjKGlbun+Q7D/lvj8vGYtuFn/w+8HO8mSeP0cI8
P3D9za1uFqxJVcMmYVYFdDmm4FW9rncqW1tL5G4ntigFOzrHkNgVqgeFfUddc7sU
nNDbvARiAwFtZGYNjOnTycDzCM6gq2nAoOcY9+0vpUBAkOvtaLrb1JmN7icMDlRZ
VTQzsXsCeH2EmDe1cpMcHIdBLxEuY0Vv1VadM58T38Tui5ojjaYwmj42sJtXLQ6D
emFzDrbBjOj57XK2RzKxFpZCe9XAM8OqtYtemCYNjTWfRkATFaJf0vBGbANrsl3n
93UclxQxDPBDQckIzKgisF3qJvc+y490UJ9P9Obp0vegxeX8TjOAzGoRbZrRRO5l
+XOryZfODdDlN5z/UN+343HT7tSvoMSAf1pzPk7B+r46dLK58tx3tzVSNvUSe3zW
N4Hzzu8j6JVQhecCPsQId0oUnd/haAyxXbNNl9lBrtWqgMQ+7+o1SPaF65A1Sbtw
VCAbw7oyCojyO+zhfuYU
=l4rc
-----END PGP SIGNATURE-----

--35LrVEHj3on93j69ua30oL1vwfCvdTtcT--
