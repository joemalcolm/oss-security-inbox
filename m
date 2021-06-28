X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1025" "Monday" "28" "June" "2021" "09:59:59" "+0300" "Aki Tuomi" "aki.tuomi@open-xchange.com" nil "30" "[oss-security] CVE-2021-33515: Dovecot SMTP Submission service STARTTLS injection." nil nil nil "6" nil nil (number mark "U       aki.tuomi@op Jun 28   30/1025  " thread-indent "\"[oss-security] CVE-2021-33515: Dovecot SMTP Submission service STARTTLS injection.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33515: Dovecot SMTP Submission service STARTTLS injection." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20320 invoked by uid 550); 28 Jun 2021 09:59:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24154 invoked from network); 28 Jun 2021 07:00:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1624863599;
	bh=WKRticlZIqI3Q5EqcEbcBmMHOprg7dvV7hnS2SfcI2I=;
	h=Date:From:To:Subject:From;
	b=5RzSlWPVWekWhestRUySS0G3Tk2x8NyJRbvDbjSLdk5w4/c0gJvTXB3oU2B2jaUcg
	 J/9v9JfHXPBAhC0A42pN+Fr8WJDLF6ijv8twwgXtc2IZxcwbY48vx6cpAL3F8uNBLd
	 rzgOPGWC2/YmYz5b4mfDIozPeOoXGGjibCrucsx9zgQ8G8oQQBA5NCSAs+OLtdsDOz
	 jLfzRoZsT3nLLu2iJwtKin8Ipg0DWJqpnjef7Z62BIZt3VYZFoP2q135Th3MFT3VaE
	 KdDuOnEV1WZjeyF/7p6Q+LhvF1Cnj11Zyh4dgjzgbBYsBtXGGOZUrZOTQqFWkSxnVc
	 sed3vCFA+eLZg==
Date: Mon, 28 Jun 2021 09:59:59 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <921291111.13398.1624863599048@appsuite-dev-gw2.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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
Subject: [oss-security] CVE-2021-33515: Dovecot SMTP Submission service STARTTLS injection.

Open-Xchange Security Advisory 2021-06-28

Affected product: Dovecot IMAP Server
Vendor: OX Software GmbH

Internal reference: DOP-2421
Vulnerability type: Cryptographic Issues (CWE-310)
Vulnerable version: 2.3
Vulnerable component: submission
Report confidence: Confirmed
Solution status: Fixed in 2.3.x
Researcher credits: Fabian Ising and Damian Poddebniak of M=C3=BCnster Univ=
ersity of Applied Sciences.
Vendor notification: 2021-05-21
CVE reference: CVE-2021-33515
CVSS: 4.2 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:N)

Vulnerability Details:
Dovecot's lib-smtp is vulnerable to STARTTLS command injection. If more com=
mands are pipelined as plaintext after STARTTLS, those commands are run ins=
ide the TLS session.

Risk:
A MiTM attacker can inject preamble commands to be executed prior to user's=
 commands, these can be used to redirect the actual mail and other user com=
mands to attacker controlled address.
Proof of concept script exists.

Solution:
Upgrade to fixed version, or disable STARTTLS support.
