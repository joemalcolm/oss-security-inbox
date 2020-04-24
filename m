X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["820" "Friday" "24" "April" "2020" "16:43:45" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjWRu+545AZ-098+kh5P0Ynb1qN=BxBRc2iBRG0MU4REOg@mail.gmail.com>" "35" "[oss-security] CVE-2020-11869 qemu: integer overflow in ati_2d_blt() in hw/display/ati-2d.c could lead to DoS" nil nil nil "4" "2020042414:43:45" "[oss-security] CVE-2020-11869 qemu: integer overflow in ati_2d_blt() in hw/display/ati-2d.c could lead to DoS" (number mark "U       mcascell@red Apr 24   35/820   " thread-indent "\"[oss-security] CVE-2020-11869 qemu: integer overflow in ati_2d_blt() in hw/display/ati-2d.c could lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11869 qemu: integer overflow in ati_2d_blt() in hw/display/ati-2d.c could lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28219 invoked by uid 550); 24 Apr 2020 17:29:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30455 invoked from network); 24 Apr 2020 14:44:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587739442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=IMkMKjDHWmW6fjseE4K8VTxVAawqUIKJv1BLjymo7PU=;
	b=Dn3hm6B9l7lsjL841HgPeiBI/7acRHmtRNSQmMoXObHctQOd/2jAVIaPVByG2zffcxQugq
	3mUYzQ+XhhxRHOuXxJa8uL2CxAHyKcMS/W1oeHIYLgzL8/6oqwSaaQfSq61UdpS58Y1+UZ
	kc+yYitZlYIx4EmzHJ4+mJi1ac7j4v4=
X-MC-Unique: vuLJiKTTMZ-Iu84Dkr8PAw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=byZwmkYyJf50m8ws9qlsityBceHdci3Tr1qaWnc8iiw=;
        b=WTi1KA3OgTsqSCehcQUOeHUXRX2pULbSq1cX4jQB4g3TVWHfO4Xs/Fs4erv/nN4m3s
         hFII1e4DgImAB3t4/elGsPQTiAkt+ifbXqzsuVkQCrTtE6GEuSwt8AzKANWuewOZxiab
         R8sLUVvQeOGH5kSQ6u67X6QDGJXr8DNqk3s6XVZN79ZEBVIXMsvC62ni3X+nySfQ0LyK
         ZQuO39iixw+E32M977LLJNdbzYQ31cgP78J3otftXjbDlXhUL6kmnTlooFgNds4bO37q
         TrABVmTqxGgO06v+dJpdvQ2L72mY4/JJTpSG/5M5ftcGhNl55VuxeTnWycQSEXkcybTR
         dcSw==
X-Gm-Message-State: AGi0PubsA7fbtUdgI7pOpQsuC6Ryj7PCgZWDNQcKkfakyfLD4bB8mIPA
	NXonD5Fw1cqhsbTbgK6aol2Vogy9fO27C0iQxgvZnYaX6aeEBq28tU3mVFSeSMhnJ7o6hw2hrxi
	4T66JKtLZZBwhDHi3wh0BAvVcpkzEghSR6Bstc+84scrM
X-Received: by 2002:aa7:d513:: with SMTP id y19mr7839641edq.367.1587739436082;
        Fri, 24 Apr 2020 07:43:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypLpGF6XXeIvTqfmyji1biaItfGkzvxQNK+sLvRKLLBC4jkwDNzE906rwidNC870jgi0bzJ02vWW39+upIuAtq0=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr7839622edq.367.1587739435884;
 Fri, 24 Apr 2020 07:43:55 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Fri, 24 Apr 2020 16:43:45 +0200
Message-ID: <CAA8xKjWRu+545AZ-098+kh5P0Ynb1qN=BxBRc2iBRG0MU4REOg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: ziming zhang <ezrakiez@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000127f1205a40a652a"
Subject: [oss-security] CVE-2020-11869 qemu: integer overflow in ati_2d_blt()
 in hw/display/ati-2d.c could lead to DoS

--000000000000127f1205a40a652a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

An integer overflow flaw was found in QEMU in the way it implemented the
ATI VGA
emulation. This flaw occurs in the ati_2d_blt() routine while handling MMIO
write
operations through ati_mm_write() callback. A malicious guest could abuse
this
flaw to crash the QEMU process, resulting in a denial of service.

Upstream patch:
   ->
https://git.qemu.org/?p=3Dqemu.git;a=3Dcommit;h=3Dac2071c3791b67fc7af78b8ce=
b320c01ca1b5df7

This issue was reported by Ziming Zhang.
CVE-2020-11869 requested via -> https://cveform.mitre.org/

Thank you,

--=20

Mauro Matteo Cascella

Product Security Engineer

Red Hat <https://www.redhat.com/>
<https://www.redhat.com/>

--000000000000127f1205a40a652a--

