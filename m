X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Thursday" "17" "November" "2016" "18:25:03" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<c8eb591fa67d43db9f8d7543008a59c2@imshyb02.MITRE.ORG>" "46" "[oss-security] Re: CVE Request: teeworlds: possible remote code execution on teeworlds client" nil nil nil "11" "2016111723:25:03" "[oss-security] Re: CVE Request: teeworlds: possible remote code execution on teeworlds client" (number mark "U       cve-assign@m Nov 17   46/2049  " thread-indent "\"[oss-security] Re: CVE Request: teeworlds: possible remote code execution on teeworlds client\"\n") "<20161116193356.jmopa3xpg6yeg3eq@eldamar.local>" ("<20161116193356.jmopa3xpg6yeg3eq@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7634 invoked by uid 550); 17 Nov 2016 23:25:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7610 invoked from network); 17 Nov 2016 23:25:15 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161116193356.jmopa3xpg6yeg3eq@eldamar.local>
Message-ID: <c8eb591fa67d43db9f8d7543008a59c2@imshyb02.MITRE.ORG>
Date: Thu, 17 Nov 2016 18:25:03 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: teeworlds: possible remote code execution on teeworlds client

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/teeworlds/teeworlds/commit/ff254722a2683867fcb3e67569ffd36226c4bc62
> https://anonscm.debian.org/cgit/pkg-games/teeworlds.git/commit/?id=bf5e8e2c457013571b02dc97f9ed9f409efdd947
> https://bugs.debian.org/844546
> https://www.teeworlds.com/?page=news&id=12086

> 0.6.4 released ...
> the security vulnerability is worse, attacker
> controlled memory-writes and possibly arbitrary code execution on the
> client, abusable by any server the client joins.

> - if(Unpacker.Error())
> + if(Unpacker.Error() || NumParts < 1 || NumParts > CSnapshot::MAX_PARTS || Part < 0 | Part >= NumParts || PartSize < 0 || PartSize > MAX_SNAPSHOT_PACKSIZE)

Use CVE-2016-9400.

Our guess is that neither github.com/teeworlds nor anonscm.debian.org
intended to commit this with a bitwise OR between "Part < 0" and
"Part >= NumParts" above. On first glance, though, the code seems to have
the same effect regardless of whether "Part < 0 | Part >= NumParts" or
"Part < 0 || Part >= NumParts" is used.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYLjvOAAoJEHb/MwWLVhi2PcEQAJxCENetx/MZu5IHhvHMrk8k
Bh4sKUbbV5OkxA2k/AY0uEG68f/WqPEsk1q/IDCow//eh56xlgYiEnAxkdYa29vv
CheoWqqiQJfrKCPIruhxahDVfE6hNRzK3pCMo15SMKfddTHH8hyViYxKVhwKvaYr
LGWondROY8hCOli8btfNJlxVqaX24LI8OoEjvvKPZxvBkcehgHKFTibsEIi9evHj
y9XsSoeTxAefRYmkv18q5w3WWKv8TUeFTW9mcRgRueqNVW7aFsysmG/cbz4BBDtm
5Q+/ipLwx+AazZS8FHZKFvVJtYkwno6C7AzyCezzCCG+UOc1gv8ojqCYLF7r+c+V
RaT0TkDQkjam3J2IZXewPo7wQUuqMMQI92N0fhHwVXKiKsolyUeAJPUgaF13ZOt8
EPy5MuvTT9wca42EKWwyLdp8Wz2I0JSk26hmUQ3XrQD8Desoc0/yUmsQR6NDtIr+
ZR9wT6ChD5hS6gMbPJ6AcPyY3juCXOZVNYrWPc8TzxTn3LfcVgHlscGNB4HW/tc6
Cq7BJNTGvbbRSgFo0lrL1y9pFPKuZiflfo4HuYmdh7hN/PW67H1DAyMOpEDzTE0F
/l0NpMnKmFytfDM3ysm4DXSdEaGh+/JATbdxMmHKdxwcfBipmz7msDIf+ACGJwQI
UN89aY0tNp011ztELlBR
=HGX3
-----END PGP SIGNATURE-----
