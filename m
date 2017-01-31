X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Tuesday" "31" "January" "2017" "15:09:58" "+0100" "nikola.sc@keemail.me" "nikola.sc@keemail.me" "<Kbor4aA--3-0@keemail.me>" "23" "[oss-security] CVE request: multiples vulnerabilities in libplist" nil nil nil "1" "2017013114:09:58" "[oss-security] CVE request: multiples vulnerabilities in libplist" (number mark "U       nikola.sc@ke Jan 31   23/774   " thread-indent "\"[oss-security] CVE request: multiples vulnerabilities in libplist\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32061 invoked by uid 550); 31 Jan 2017 14:19:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17755 invoked from network); 31 Jan 2017 14:10:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=keemail.me;
	s=20161216; t=1485871798;
	bh=a2fj6G11oFFA5aTEFMHJdt6EA72ppEIWs1ogOIzi58c=;
	h=Date:From:To:Subject:From;
	b=EKcT2LcTPTAToh3O57kxUm+8wlCWhtp18lZ9oKWCekUtvjszZ23gUEZA6P1KoIPIa
	 LsEV1yt8c7HYyf2Jw3BOKyWgHug4HEp5yzTOysuSOXqNIdtsKr+u2oKVTYBY1kfHVD
	 z+kIp46LKaQ4wT+6VsKdUpP+5vx1LNWyxZrJkDmQvikk12nJvYIKFUSR/k3YR9Zx55
	 RWX8C7KZ64tfxM8b0n5/SyPQs0viVgECs6hHfRwmMmD+Ld3arzbq2hdYC2a5ZWSYRp
	 aiY0QbMgbRSjeB0623Z6JhR8BdCwJMlKQWb4TayrAKJgIWyNNRSVApdrWnjNMz/6Kj
	 q19XGsJMbaGEA==
Date: Tue, 31 Jan 2017 15:09:58 +0100 (CET)
From:  <nikola.sc@keemail.me>
To:  <oss-security@lists.openwall.com>
Message-ID: <Kbor4aA--3-0@keemail.me>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_109_792482958.1485871798938"
Subject: [oss-security] CVE request: multiples vulnerabilities in libplist

------=_Part_109_792482958.1485871798938
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fixed in libplist, a library to handle Apple Property List format in binary=
 or XML.=C2=A0Debian and Ubuntu are using vulnerable versions.https://githu=
b.com/libimobiledevice/libplist
Public issues:heap-buffer-overflow in parse_dict_node
https://github.com/libimobiledevice/libplist/issues/89
memory allocation errorhttps://github.com/libimobiledevice/libplist/issues/=
88

heap-buffer-overflow=C2=A0CVE-2017-5545 used in
https://github.com/libimobiledevice/libplist/issues/87

issue in plist_free_data plist.c:185
https://github.com/libimobiledevice/libplist/issues/86

Regards, Nikola
--
Nikola s.c=

------=_Part_109_792482958.1485871798938--
