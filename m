X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1280" "Monday" "28" "June" "2021" "10:02:07" "+0300" "Aki Tuomi" "aki.tuomi@open-xchange.com" nil "34" "[oss-security] CVE-2020-28200: Dovecot Pigeonhole Sieve excessive resource usage" nil nil nil "6" nil nil (number mark "U       aki.tuomi@op Jun 28   34/1280  " thread-indent "\"[oss-security] CVE-2020-28200: Dovecot Pigeonhole Sieve excessive resource usage\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-28200: Dovecot Pigeonhole Sieve excessive resource usage" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31852 invoked by uid 550); 28 Jun 2021 10:00:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25839 invoked from network); 28 Jun 2021 07:02:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1624863727;
	bh=r8Osq9pmRh5n09E4BP+M5GNchJQb06K9nWtU+cTgYf4=;
	h=Date:From:To:Subject:From;
	b=E7AxhTa2GUfFx4SkXx5Xm5mbyzX1odsBkPP8mnEqbazOW/IPjXjw7wzhofMKZIbVo
	 1t5zswTbq9cEdLEFC8aqGgYAVSrZRwjeLhmD7D4SRjAkzZrP9mFz9CBiO9bMylmjeH
	 HrkphozB9RZLG/jKmGqcW4Riq6ALMpDeRoaejWgDnUzfUWmzZKZETVlyagLeY3+zxT
	 42yWAlIRaXeU6bO48WHo0eby9EMkT/GN6fdY9vXzxDlB8R+Gpk3m903j6orNrHBn4V
	 vrnfizyc8JJWv8h/I194u6SViTNeOLiub8Jsn1FrbnwuCaSB0KvwGkI2d1V1ah6eJx
	 3Q0vTadCvZMyg==
Date: Mon, 28 Jun 2021 10:02:07 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1174037964.13457.1624863727539@appsuite-dev-gw2.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev0
X-Originating-Client: open-xchange-appsuite
Autocrypt: addr=aki.tuomi@open-xchange.com; prefer-encrypt=mutual; keydata=
 mQENBFb7bukBCACpK7GFwH/gyL0oF8t91WM7S+UjuQ1vOQZg2eoCUHi4ILpm1Kae4UeZLB2XVbeph+k
 29BIQbo+Hjv6rq6JzPfKIZCRLLrkMD1MtA0YB7ZYiACywLrATAdAMJ6sRq+DL5RlrA2CvviTifz6DwE
 nbqI+ckcKggsY2gywHs5muDw+n5TwLiL0V9IU478vg7OUWzMZ42toTmeTW2MtsIAE5xbnjZ58LUSZR2
 CNO8SAtDHYI558ACkS0wHBAoRFNv27IPr3cebiPsIglSEIBr0R1F1Twbgm6mWVBhK+smDgGxmmuAhH6
 boSaKWoWAq+tNf+6oXnr3/D0IPtR8c/bZobtvWG3ABEBAAG0J1R1b21pLCBBa2kgPGFraS50dW9taUB
 vcGVuLXhjaGFuZ2UuY29tPokBPgQTAQIAKAIbAwUJEswDAAUCW2P/aAYLCQgHAwIGFQgCCQoLBBYCAw
 ECHgECF4AACgkQGTtjY7NEQgYmMwf9G5U0+vKJB+f3Vl8rjPqlXmUZu4waf6pig5lLCrgu56ZkqEDmj
 axmxXAah7JZ6dD/66kzlQzKQPYpLor0KnTZgm8XZr+MtqLK8DMF/4+iljADvkS4nfJuX3LbdafPyuk4
 x+GIa+6NJ+y34jZ284Oesj+FtPOevthR9rDmnc2KQjBD30ceKsadxIKqWPYPqPESQ0PyMu9tOaWNdGn
 tx8LvO3LlspZ2DzEh5rregFKtO01jR9ai5r3mbUrQqwzWLxJztBYjds8D5VAiCBeivUxetDqhoPr3Cy
 KHStc5GfgHvazjG34H+CShReqIylfR4mwc654qkmVQfPMMUTaa677n8bkBDQRW+27pAQgAosZdRB8tu
 i65tjna4iYKPHqcNDZUXOUuPLTucYc2tY2v67POGr44gOZNzuQWKyXRSBs+Q2zJHcbccPe0ZEptkOCO
 wdhhvBwZLKa6nI9jnJ0K+szT2NbD0YkvaIDALA9pVGMJqa88wvkkocf/I5fkdTk6xuLp8AamRXvcPZu
 UPo/s2PXQV4u+gtKdX1FmaHiBg1oQhtoDWZO04H74r9fyPPs499ra9iNckSlZP51OUFBbV/RmbtEC03
 1r4iXUAgiL0nQ1mNpRIW+PU/5beX/4YwYeCpzy7g0XfMaJoMWDamRdXgzkXK6IJIxwo/89M8qPW+Bkh
 88yAennI2SsEvniXQARAQABiQExBBgBAgAbBQJW+27pAhsMBAsJCAcGFQoJCAsCBQkSzAMAAAoJEBk7
 Y2OzREIGCm8IAIZkj5FClx8EmPy1caC+CNv1mVrC2YhKY9Zh255JUtt+Xp6tshN6IOr+saNkcwgUghx
 mx6+asZXPDHTqhXoswPi28k1uCY7n4gvh3jlS7a0HeI0sy2RCsrkIaQD2uSt+ju9fpEM2aOXQHGT/x6
 gZhJ7Uwu+JfDnCB7CBFjVnRaV2/87Y0ZImfhIMPYRzwOyWW6KR+JPIutyZAWo9c7mmjKbySLXhqgZar
 iMJU+RQF5/daQsiRJKP1IkC/Ncy/iZSnGvPIRZjvQxtrz+4xexZX6NjG7IbKAwmbo1t27cF3hE4Heja
 kF5bLOhznVWubhjXp1J6pL9fymHmG2tZPsgwXcA=
Subject: [oss-security] CVE-2020-28200: Dovecot Pigeonhole Sieve excessive resource usage

Open-Xchange Security Advisory 2021-06-28

Affected product: Dovecot IMAP Server
Vendor: OX Software GmbH

Internal reference: DOV-4159 
Vulnerability type: Uncontrolled Resource Consumption (CWE-400)
Vulnerable version: ancient
Vulnerable component: sieve
Report confidence: Confirmed
Solution status: Fix available
Researcher credits: Innokentii Sennovskii from BI.ZONE (rumata)
Vendor notification: 2020-09-23
CVE reference: CVE-2020-28200
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Vulnerability Details:
Sieve interpreter is not protected against abusive scripts that claim excessive resource usage.
Fixed by limiting both the CPU system+user time per single script execution and cumulatively over
several script runs within a configurable timeout period. Sufficiently large CPU time usage is
summed in the Sieve script binary and execution is blocked when the sum exceeds the limit within that time.
The block is lifted when the script is updated after the resource usage times out.

Risk:
Attacker can cause uncontrolled CPU resource consumption to cause partial or complete denial of service.

Steps to reproduce:
Use sufficiently CPU intensive regular expression.

Solution:
Install patched version of Dovecot

Workaround:
Disable sieve "regex" extension.
