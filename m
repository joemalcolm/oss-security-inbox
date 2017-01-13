X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1632" "Thursday" "12" "January" "2017" "21:55:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<1480d3e5f57745ad9aa55870d4dfecaa@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"" "^CC:" nil nil "1" "2017011302:55:40" "[oss-security] Re: CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"" (number mark "        cve-assign@m Jan 12   41/1632  " thread-indent "\"[oss-security] Re: CVE Request: Zabbix: SQL injection vulnerabilities in \"Latest data\"\"\n") "<20170112054238.GA8011@lorien.valinor.li>" ("<20170112054238.GA8011@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27870 invoked by uid 550); 13 Jan 2017 02:55:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27846 invoked from network); 13 Jan 2017 02:55:52 -0000
In-Reply-To: <20170112054238.GA8011@lorien.valinor.li>
Message-ID: <1480d3e5f57745ad9aa55870d4dfecaa@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Thu, 12 Jan 2017 21:55:40 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Zabbix: SQL injection vulnerabilities in "Latest data"
To: <carnil@debian.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> failure to sanitize input in the toggle_ids
> array in the latest.php page.

> https://support.zabbix.com/browse/ZBX-11023
> https://bugs.debian.org/850936

Use CVE-2016-10134.

The scope of this CVE does not include the "2016 Sep 07 18:41" comment
of "could it be that jsrpc.php was affected, too ? if so, the
changelog entry should probably be changed to either include all
affected endpoints, or at least not exclusively mention latest data."
If there is an exploitable problem other than with the
latest.php?toggle_ids[]= attack vector, then it should have a separate
CVE ID.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYeEEHAAoJEHb/MwWLVhi2wiQQAIoA6FoGK0U52GblRjFJb0qJ
soeC2NSeZjhWpg+Dani9mXeU1gN0RoGC1W07vw0J/NFlAqlFU0CzqwUnP1mZEYjQ
u/aRgtwg4w4m1RgBb6amqFPSzsr5J1QzXy8F5siG8mEjjECNWBIpnILZxmW0dB+3
1NJIBlFVLahL8XFvT2RO4FD0EwORoB7gOrjF2Xu9kmVdHcMRk+QLHV/rnrbsDvUu
pqaYZF5qfbkZe4rsoPNFtjAOXroLJZu8GDoqVIORZykrVtD15ZVHpLBi9UCKEX9s
/98rfaOg5QAhqgPz+jGQhjegHb8xGOiy92ABfSSzF+9QMxIC/Jpuh88NIJQz4MUZ
Te0GIzoh+LFhlqyEc+eVPfZPvwlfM3XI//lPUZ+C4A0ottLFqYrBN0MGZWHLpYuF
kUugUMSg4Y5oHt8jeA0EH/rGQjryAr7knOr8y9p9w6j8cveE9ccFpCWFUnL0hH1k
QGJTEJmmEpBZMk2we0XMsw3HpCCeezo6j2mnjiExNhSnkKm+t2ggw5w5EEc01zH7
wAQnJnfyND8axxGGLFXJfYhwGV1jGnqxz4aIoLBsfrCPjbtCWLv47FZEZ8A1LxIr
Zj88Js9+iWOEWpOGK1ZkUVkW081cANaVjJQRFx6drTQD55hOZm3PqhSW2pfzA5K5
nf24yUXhAvv/RNu+Cgwc
=zHnG
-----END PGP SIGNATURE-----
