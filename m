X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1373" "Monday" "2" "May" "2016" "08:46:47" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160502124647.5F221332073@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file" "^Cc:" nil nil "5" "2016050212:46:47" "[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file" (number mark "U       cve-assign@m May  2   35/1373  " thread-indent "\"[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file\"\n") "<CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>" ("<CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20172 invoked by uid 550); 2 May 2016 12:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20154 invoked from network); 2 May 2016 12:47:00 -0000
In-Reply-To: <CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>
Message-Id: <20160502124647.5F221332073@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  2 May 2016 08:46:47 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/akheron/jansson/issues/282

> It takes a less than 100kb json file to crash the library, which is
> bad if you are receiving untrusted inputs.

>> https://github.com/akheron/jansson/blob/master/README.rst
>> Jansson is a C library for encoding, decoding and manipulating JSON data.

Use CVE-2016-4425.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXJ0ufAAoJEHb/MwWLVhi24okQALgjTPVfcfIDXtenPzhzNHRx
ypUyAed3CIVkfJC+R+ehuFEmpyAKEgO1woqy1TjIqi9U+lDGXFVa4FX98ENwFE22
ap3EpKq0ZwzeacPhm/XYOyIqmeA96nonf9NNFAhCvtpSjLxaWcrs7JbnqhCrsf1/
qBM819kLXwuO8GUtdJYVkOVWQX3e5QadqwOiU5J6b7pe8FiJBlsW32b9tANXJg7I
G1W3lYXG/nULkXGEjyj8fFlLM0icync8T4revmBXNN9AWQOxjOx7zoODy54snzSU
7vIkd79NLG623aosZp7h2bcmJdP9l1WO7SPvF8qSzLP+fq5qrBaAuR++pOvzHp7Q
Whnfdg3uP//UiIcM/bh9jLCMXDJKsFgr/Qr5DItwsltdYteN31g6m+4nYmARtOE5
HjSnU5tYzzRzc7+kWtxYZxAeRFGQ8VNIv5j/85QFoIKGrkuGs2nGfW2T44ObZfyF
Nwd/k2Pa9k3sqwTAQp3lEI0nTSUn7vlzRzAr2/QhtPqbDdeERWZWsQDlEJ5L2n0f
m+b0iQIGBXFo9Q4wBdS91Vx6NEkhWxrgWbyIExgVCnUFh/LCo4BFjI3qq+GPsnoP
hmxD/9LXa8B2tefKtjzlPBnw4rqKyCFmfzVi+LkrZqNCxid+2DEpUBr2r+CsA7wv
jQNgK1C0S/wmuJclLq4+
=4UUQ
-----END PGP SIGNATURE-----
