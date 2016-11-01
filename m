X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1247" "Tuesday" "1" "November" "2016" "14:17:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: RCE in Zabbix 2.2 to 3.0.3" nil nil nil "11" "2016110118:17:05" "[oss-security] Re: RCE in Zabbix 2.2 to 3.0.3" (number mark "U       cve-assign@m Nov  1   36/1247  " thread-indent "\"[oss-security] Re: RCE in Zabbix 2.2 to 3.0.3\"\n") "<877f8na318.fsf@redhat.com>" ("<877f8na318.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5687 invoked by uid 550); 1 Nov 2016 18:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5669 invoked from network); 1 Nov 2016 18:17:16 -0000
From: <cve-assign@mitre.org>
To: <mprpic@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <877f8na318.fsf@redhat.com>
Message-ID: <d99995e4f5284443bbb2f7d7e4b9c004@imshyb02.MITRE.ORG>
Date: Tue, 1 Nov 2016 14:17:05 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: RCE in Zabbix 2.2 to 3.0.3

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.exploit-db.com/exploits/39937/
> Zabbix 2.2 < 3.0.3 - API JSON-RPC Remote Code Execution

> /api_jsonrpc.php

> "method": "script.update",

> "command": ""+cmd+""

Use CVE-2016-9140.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYGNtZAAoJEHb/MwWLVhi2DQkQALB8gccuZBXkOAwXv3ekuCpi
cNjh+qEd3pJxkd0EgmeQknO084oLV1rRn6Ss2Uh5FtBOaQJ5K/oiCjcarZ4bT8ro
oZnBndJwXEVaI1UsH+6ustwZoZSr7dGjw82w82wwVnayGFRMbmWuJNFdPtXUxuKf
5BWzXo4ZqlZbp5XuGJegm7gbAL56LYTkiMmb5yo+nN/7wApHc0cK8WaXkMW+LXB7
qlUVefp/uvzG9Ma8Z9TvJnrgAoyCe2L8j2Y2CvZ28TUA4ugg7OaYpZkx/TWf883p
KSyCiFsomfMwrkKKSZ5c8pFAzOtUdvyVYvgHH9YklhaH6P3s0RZM+DRfmC63rVIG
kcKN3asrGcP7lawreVsSCZCmMOzwhsmMiRilFmeJ+Tk369T0+B8ZxzgTFQ3QGk6t
+gWS2P6LAAsHfz0YKf/ROoPdKxd6QmagYsfRGQWE/Qc2quH1zBFypjQ3JDWji7Mb
5REW4en6zQiaTfJMJpwtSyVPjTpNflIXaMysLWRarm6ca3rWZACIe1Wa1quN/Fj+
rr07YAG9J8MOraHxaR7/ynn+8rBws0QpGEFrorL9IXUfONpWRxvX1gL2T//6QA6N
67lISYiiR4+9vrpC4Ioa7tqUHJZeZU6bPeBBQLcF9S9slkpJPSpp4CUNY/5E3bcs
HOZHKY2M77oOr5Hv9UGw
=yO7W
-----END PGP SIGNATURE-----
