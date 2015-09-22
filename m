X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1639" "Tuesday" "22" "September" "2015" "20:00:26" "+0200" "VeraCrypt Team" "veracrypt@idrix.fr" "<5601973A.5080009@idrix.fr>" "48" "[oss-security] CVE Request - TrueCrypt 7.1a and VeraCrypt 1.14 Local Elevation of Privilege" nil nil nil "9" "2015092218:00:26" "[oss-security] CVE Request - TrueCrypt 7.1a and VeraCrypt 1.14 Local Elevation of Privilege" (number mark "        veracrypt@id Sep 22   48/1639  " thread-indent "\"[oss-security] CVE Request - TrueCrypt 7.1a and VeraCrypt 1.14 Local Elevation of Privilege\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1653 invoked by uid 550); 22 Sep 2015 18:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32551 invoked from network); 22 Sep 2015 18:00:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=idrix.fr; s=mail;
	t=1442944832; bh=L9QdB+AdVXusKsV0qVdTTGbwh9cBHPqNJsIQ8TH2oYs=;
	h=To:From:Subject:Date:From;
	b=f8QlZc20rjSWypKL31TRQPf5d6kfaJgtslBpjktBVERnioIZdUadIehb5cc74Hk+r
	 yJkJ2qVZOU6BfUVn9fL2ocZNiYob3/LwNlIzwS9RmA7uf1y0Z70qCGwsO4nf+WLsOQ
	 KK5GgavieqZlfGdL06EuArLKH5OIR+glGUPq6vjA=
X-Virus-Scanned: Debian amavisd-new at ext.idrix.fr
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=idrix.fr; s=mail;
	t=1442944831; bh=L9QdB+AdVXusKsV0qVdTTGbwh9cBHPqNJsIQ8TH2oYs=;
	h=To:From:Subject:Date:From;
	b=tm+nfR/ofv72pwjz8Hcaq8WOvsaN9QayGbRfKnLeFTixFRITE7+ANfwheLBhZwZnT
	 KBTfUJCIR+goxdCm+prFfjjyGOZydWgqOzcEVRq8sjiNZypkycbfRzzJTmDkgaVqmB
	 0qUxJNfdDNRv1WTExaxQ4CYz5qrVgi5YetGzofkU=
Organization: IDRIX
Message-ID: <5601973A.5080009@idrix.fr>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Tue, 22 Sep 2015 20:00:26 +0200
From: VeraCrypt Team <veracrypt@idrix.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - TrueCrypt 7.1a and VeraCrypt 1.14 Local Elevation of
 Privilege
To: oss-security@lists.openwall.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512
 
Hi,

I would like to request two CVE identifiers for the two security issues
described below affecting TrueCrypt 7.1a (latest version) and its fork
VeraCrypt 1.14 (latest version) running on all versions of Windows.

These issues were reported by James Forshaw (Google).

Issue 1: Local Elevation of Privilege on Windows by abusing
              drive letter handling.

Issue 2: Local Elevation of Privilege on Windows caused by incorrect
              Impersonation Token Handling.

Issue 1 is critical.

A fix has already been developed. Version 1.15 of VeraCrypt will be
released soon to address those issues.

For your information, I have sent a similar CVE request to mitre.org.

Regards,
- -- 
Mounir IDRASSI
https://veracrypt.codeplex.com
https://www.idrix.fr
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
 
iQIcBAEBCgAGBQJWAZc3AAoJEOtVnHxU3dOT9FAQAJF5RtEuWnMVp8qLVKZewJuH
su6zPOuErxyJRKPTcnt2drT4/merlDN7OHYmoCB8d4KShEECM8plb71Zv6tsft28
B8Oi8BUvJxzSeFj+n5rPYTRSidtPeJr3S110gCkTS4mPcOLsqVzDSMurzye0C1QP
U6wxIRQEps+678B9inXANKMrHnE2MBCbjEz+YXHpX9Wn4uFxJFjXGhSG5ixCXwFh
yGCA9tshoCDL2WGdG7uCKRiathWZvLk25tJxH+WnSs/wVcrjBJJEww5yUcVYN+tP
1w1wUg8RK56Ostk5MUCOcjVozKfFnhEdpKSjnfzUiOOq1bQKOhkERUM4KovMQinY
mj6+bgZq2pASqZhiqZjzPOFkz1eIZevcS5onmGV9StSIpnUfeVLpj2gFM0B9dS/1
jjoQeJN6UA3ImFDNlqNcHUxGVrL6PQES+3md8o+EmnsoDluJqqSn+4j/Ik08xKnG
rtHV19GdXo8mXui4uzBSPVlfCSHdXSVMhglJx/ItltWLuj+IuH5qizbCV/h4UJ/+
ryDvK3ZjfLejVTP4AufrVF8iXmizabYLfZs8/gUdXYphbV+S2Br/HOUnj6bbOZpP
Oo1suGw1YiQHgP3OShb2+rvLwBUYgE9f3aLpx1/xqHrGuHhB719waQAjUvYF6SZw
Wtx6mytjT3HfWvHoORjd
=hbTv
-----END PGP SIGNATURE-----

