X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["606" "Wednesday" "1" "April" "2015" "10:34:19" "+0200" "William Robinet" "william.robinet@conostix.com" "<20150401083419.GS18273@zorglub.office.conostix.com>" "25" "[oss-security] CVE-2015-1845, CVE-2015-1846 - unzoo - Buffer overflow & Infinite loop" nil nil nil "4" "2015040108:34:19" "[oss-security] CVE-2015-1845, CVE-2015-1846 - unzoo - Buffer overflow & Infinite loop" (number mark "        william.robi Apr  1   25/606   " thread-indent "\"[oss-security] CVE-2015-1845, CVE-2015-1846 - unzoo - Buffer overflow & Infinite loop\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20366 invoked by uid 550); 1 Apr 2015 08:34:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20325 invoked from network); 1 Apr 2015 08:34:50 -0000
X-Virus-Scanned: Debian amavisd-new at conostix.com
Message-ID: <20150401083419.GS18273@zorglub.office.conostix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Date: Wed, 1 Apr 2015 10:34:19 +0200
From: William Robinet <william.robinet@conostix.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1845, CVE-2015-1846 - unzoo - Buffer overflow & Infinite
 loop
To: oss-security@lists.openwall.com

Dear oss-security list,

Two issues have been fixed in the "unzoo" package from Fedora EPEL.

CVE-2015-1845 unzoo:
    Buffer overflow in EntrReadArch()
    https://bugzilla.redhat.com/show_bug.cgi?id=1207645

CVE-2015-1846 unzoo:
    Infinite loop due to incorrect pointers handling in ExtrArch()/ListArch()
    https://bugzilla.redhat.com/show_bug.cgi?id=1207647


William
(Please note I'm not a member of the list)

-- 
GPG Key ID/Fingerprint:
    74C7A949/B509 4137 1353 A3FC 6A87  AA06 003F A3DF 74C7 A949

Conostix S.A.
4, Rue d'Arlon
L-8399 Windhof (Koerich)
T. +352 26 10 30 61
F. +352 26 10 30 62
