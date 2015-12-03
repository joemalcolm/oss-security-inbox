X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["969" "Thursday" "3" "December" "2015" "22:56:32" "+0100" "Matthias Geerdsen" "matthias@vorlons.info" "<5660BA90.3080205@vorlons.info>" "27" "[oss-security] CVE request - redmine: Issues API may disclose changeset messages that are not visible" nil nil nil "12" "2015120321:56:32" "[oss-security] CVE request - redmine: Issues API may disclose changeset messages that are not visible" (number mark "U       matthias@vor Dec  3   27/969   " thread-indent "\"[oss-security] CVE request - redmine: Issues API may disclose changeset messages that are not visible\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7651 invoked by uid 550); 3 Dec 2015 22:00:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5539 invoked from network); 3 Dec 2015 21:56:44 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1449179792;
	bh=vzDKJa+gDzb+ssXcLDu1Rxs2tlky2+oJxi14+ckKFnQ=;
	h=Date:From:To:Subject:From;
	b=sUJGWG4u7S9Omb0zbXiwVVLoT1wEPNyxOe/12oklsj/aXpzx0t1mQ8CUH/kHleyxR
	 JpITPw7AI0vUUmj7wXrDeeJDm93/B3B/AHHswF7WOsJBmQ0Oaw/J5HqplXy+XPfj56
	 E96hj/W1T7NOvDQroFMjLZpOl7tzbgJd2lCEPAjc=
Message-ID: <5660BA90.3080205@vorlons.info>
Date: Thu, 03 Dec 2015 22:56:32 +0100
From: Matthias Geerdsen <matthias@vorlons.info>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request - redmine: Issues API may disclose changeset messages
 that are not visible

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID for another information disclosure issue fixed
in the latest Redmine releases (2.6.8, 3.0.6 and 3.1.2) [1]. The bug
report [2] links to the relevant diff [3].

Cheers
Matthias

[1] <http://www.redmine.org/projects/redmine/wiki/Changelog>
[2] <https://www.redmine.org/issues/21136>
[3]
<http://www.redmine.org/projects/redmine/repository/revisions/14794/diff/trunk/app/views/issues/show.api.rsb?utf8=%E2%9C%93&type=sbs>
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWYLqLAAoJEDVYuxv9Aw7qFH8IAKjfJv7Q8rBpNw7T8WagFXOT
412u2iUYtc3mJ3t87C2FI+mxmtRfyxSIWgum+SSPMHdHIqxkpVa2BGmHfA3NWbLm
Wv9zGehWl9Z9wUvfK/5/Cw1scUabQvrXJZgK3YfEKfrk3XC2DCo3SiEXECzbtoiD
Eq6OTD+jCcB7XiHQL9IMFrOxzHp8tzQ/H6rZwYIhqNVXtsAlehribQliTJCxH6D6
h7kyeFktfxL9gu6/ye0KRGF+gfdeTv9ANXeJ41xPZDSZwu41dwGSd1eOO5jOEWlU
Nfu9NJdlb76yPTVi+KJAH5vAo+Yzj5yCw/fWEyzYLPg+xSIAg+Nwb8fhaze/SXg=
=1Xvp
-----END PGP SIGNATURE-----
