X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1686" "Monday" "29" "July" "2019" "11:55:34" "-0400" "Josh Thompson" "jfthomps@apache.org" "<11594027.E43Who7y30@treebeard>" "42" "[oss-security] [CVE-2018-11774] Apache VCL SQL injection attack in VM management" nil nil nil "7" "2019072915:55:34" "[oss-security] [CVE-2018-11774] Apache VCL SQL injection attack in VM management" (number mark "U       jfthomps@apa Jul 29   42/1686  " thread-indent "\"[oss-security] [CVE-2018-11774] Apache VCL SQL injection attack in VM management\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-11774] Apache VCL SQL injection attack in VM management" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5759 invoked by uid 550); 29 Jul 2019 16:04:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30381 invoked from network); 29 Jul 2019 15:56:53 -0000
From: Josh Thompson <jfthomps@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 29 Jul 2019 11:55:34 -0400
Message-ID: <11594027.E43Who7y30@treebeard>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [CVE-2018-11774] Apache VCL SQL injection attack in VM management

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2018-11774: Apache VCL SQL injection attack in VM management
 
Severity: Medium
 
Versions Affected: 2.1 through 2.5
 
Description: Apache VCL versions 2.1 through 2.5 do not properly validate form 
input when adding and removing VMs to and from hosts. The form data is then 
used in SQL statements. This allows for an SQL injection attack. Access to 
this portion of a VCL system requires admin level rights.  Other layers of 
security seem to protect against malicious attack. However, all VCL systems 
running versions earlier than 2.5.1 should be upgraded or patched.
 
Mitigation: Upgrade to 2.5.1 or apply patches from https://vcl.apache.org/
security.html
 
Credit: This vulnerability was found and reported to the Apache VCL project by 
ADLab of Venustech.
 
CVE Released: July 29th, 2019
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEI0cOQm0VAdkhDARZSNnzl+fhyFkFAl0/FvcACgkQSNnzl+fh
yFkinA/9ECNBbbzcUhhCIawkPhv3tc4w3iEKVzaY8q/cya1tco4iBqshqD1EXt+d
6MdNy3MTs9diXG/jD/hwuxl2hdtAi012fla7RjRwkq0Raoew2G08E9X6NlKCmbMr
klDoMsZWCknITnlYS91IjZevrIZnz9emJLO4ub9So8CqBzjEinsXftgPeSYHgD0U
ES1B1ThwOEaxTjoMJ3V6/kfC5Y5LLe/v9pwtZvggBY06X+4DCKt3Z/aCfvzGwPol
iGCWhO9XobIoi8Z8garw6NqCDluHPWKTzb7Et8NS1y6xiuTTWAvfctpWOlPwN+cH
1gHyqG+W9LRj2+vYdG8RCaQKAZfeUB7myfNvSIvWAAABYbku0molCC+CJZbnC/qp
vUdwde9V9fTU0jVFiMMX78zXENAWME/G4tDLfn8AQXb+EpJBTMAATqLcuzavjN5Q
GUByhNIOWABbyCDXk/0/eGjZ+QwYL2iOenVx0Si86aLBgi9u7mORqihRjcj5l85j
XijHgT5mlPyiQxE58KKUkF6Sa7cSlakO5Jpmfzfxy4gmoC3fnUQFjFOPhZsJ8NR7
jBB9VPJ65UWk/HVsuqaR8nQxM4JpcrDdaOIWgyey8ya60JRx3rWsAlmxe4ScUQyx
lChlY5iZgKGGSoY9o/wXc9etEWUkfXxQ9pBCLKg4QUTMnUzN6Ao=
=UDWM
-----END PGP SIGNATURE-----



