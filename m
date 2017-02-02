X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1304" "Thursday" "2" "February" "2017" "00:59:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<51f7a1977f294a68846e574193cabf17@imshyb01.MITRE.ORG>" "33" "[oss-security] Re: mp3splt: NULL pointer dereference in free_options (options_manager.c)" nil nil nil "2" "2017020205:59:24" "[oss-security] Re: mp3splt: NULL pointer dereference in free_options (options_manager.c)" (number mark "U       cve-assign@m Feb  2   33/1304  " thread-indent "\"[oss-security] Re: mp3splt: NULL pointer dereference in free_options (options_manager.c)\"\n") "<1903146.QE5K2f7Vg6@blackgate>" ("<1903146.QE5K2f7Vg6@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22371 invoked by uid 550); 2 Feb 2017 05:59:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22322 invoked from network); 2 Feb 2017 05:59:36 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1903146.QE5K2f7Vg6@blackgate>
Message-ID: <51f7a1977f294a68846e574193cabf17@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:59:24 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: mp3splt: NULL pointer dereference in free_options (options_manager.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/02/01/mp3splt-null-pointer-dereference-in-free_options-options_manager-c
> 
> AddressSanitizer: SEGV on unknown address 0x000000000000
> 
> free_options ... mp3splt-2.6.2/src/options_manager.c:61:9

Use CVE-2017-5851.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscIAAoJEHb/MwWLVhi2QuMQAI1wmYRXOAdKbWAu3qbjyjAb
T6US40viwx/oHi6vz/LMSeZOEOdBpCVb+p67SoZbCWtKVPkBDBdoQX6luiMM64Or
mkR1rzVD99EX+9LrNM6SGVn1JM3O/9G3WYMnPx7fkXldic/1hx826fXlV8fzQ0VN
mzxPSi60y62c9FE9oacn9gcyasI678uKkEKeEA8WzJckkyRTDkvL/See/V7krPo8
GhGy1M5yh+SUK2v5h5bgM4vgSzKECfKSeIqFS3Ziv0exOltoBmHU85HB+dDHQeLr
Zg+sQeTwn6lJ23K+lr63gQNiPW2V9zuqpK5HSsA4wP56Ri/HFh+bKJfH13Y9THdU
K0ErdvQI/29qC/FnSYpGnWmLByQWCNCBl7wjFu9fWvYz7wdNeCmnWSONoU44U2PY
p5ueXHMQHVenw5+R9a/NwsSZjo2bx9qvTnGWqtptBuw/Lo4XoVhlqu5lMd8qAzoy
pQXL9ufZU7EsMZkY97SkVhe0BumTnNhzama6gJD13EaaqSw1xSJF0qrL5cbFmY01
RsmkN+N2nsA8CNZddEkbpo2nU/DhKIs+lphd3n7alUT8x5kIfvbCP5V5cUuDdhzU
aia9elERz3ZTiJHYoa9bzjiQOaqcZmiM+IEo5S0R/eZYDZE8eAw5AiKMIzKDVbaX
w6TyohVjszylCxwbnomj
=E74c
-----END PGP SIGNATURE-----
