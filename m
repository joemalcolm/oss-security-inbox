X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Thursday" "3" "December" "2015" "23:26:32" "+0100" "Matthias Geerdsen" "matthias@vorlons.info" "<5660C198.9090704@vorlons.info>" "28" "[oss-security] CVE request - Redmine: open redirect vulnerability (fixed earlier this year)" nil nil nil "12" "2015120322:26:32" "[oss-security] CVE request - Redmine: open redirect vulnerability (fixed earlier this year)" (number mark "U       matthias@vor Dec  3   28/965   " thread-indent "\"[oss-security] CVE request - Redmine: open redirect vulnerability (fixed earlier this year)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17822 invoked by uid 550); 4 Dec 2015 00:27:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30484 invoked from network); 3 Dec 2015 22:26:44 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1449181592;
	bh=Z6K1b4ovs+o8arABidt85Pfxq+8XYQrFkMVPSladUao=;
	h=Date:From:To:Subject:From;
	b=r0TXxbTQ3JsnRrH64Dz5DR7ZEAGfBaTohWGSeuOTs6rYSyidkUOoBcEvEi+WsaUnh
	 +O+9/EipqR0jETnfjykwdGqYaoTbdTK8a5B9jXbGGkGBmiFvHQkjOABZrJ8gdC2juF
	 m8LJ0wI+QVoQ0SEJUYsOkmeKHHVieF1aygm5360c=
Message-ID: <5660C198.9090704@vorlons.info>
Date: Thu, 03 Dec 2015 23:26:32 +0100
From: Matthias Geerdsen <matthias@vorlons.info>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request - Redmine: open redirect vulnerability (fixed earlier
 this year)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID for an open redirect vulnerability fixed
in the Redmine releases 2.6.7, 3.0.5 and 3.1.1 [1,2]. Commit can be
found at [3], the ticket is still private [4].

Cheers
Matthias

[1] <http://www.redmine.org/news/101>
[2] <http://www.redmine.org/projects/redmine/wiki/Security_Advisories>
[3]
<https://github.com/redmine/redmine/commit/032f2c9be6520d9d1a1608aa4f1d5d1f184f2472>
[4] <https://www.redmine.org/issues/19577>
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWYMGUAAoJEDVYuxv9Aw7qNSsH/2Iwpxy3Rwj1m63zIWdvUOMv
VpQ1DUF3jGW6g378R5XhDzfiJ3E6vi0BLfzZ026JItaxcHG7OzbNGPobuxDIfjmH
c68/W2lZ7pMfBkIDyg4qCzNJFm4bjdzQdMWY2syVwP4hZoWrZIHbwWonbcMGXeXc
u9oGi6cpm0FOpVCOu6bzcYRRhIwcm3M7NtKPmdKS3Cwr00rlh0Iae4Ie+pP6H8nE
0fHoB6xa2xwQZ8+cDvgtGqwQvZQlHLB9r0lFSKC/OWjdO3eZPToYBhNwp57FECuF
Bo+CDK1XJH11lLxzNc8hXtaLeF3pYh/DZRFJFrLLO7OLOTIvHZ95jObmbSsJoDU=
=wuHV
-----END PGP SIGNATURE-----
