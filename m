X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1378" "Tuesday" "19" "May" "2020" "08:29:05" "+0530" "Hardik Vyas" "hvyas@redhat.com" "<CAOo2v=DTvPoytxQ8QiEQuYvw2A+Us0ZVRmkuGr4zgQNMHAf=7Q@mail.gmail.com>" "40" "[oss-security] CVE-2020-10736 ceph: authorization bypass in monitor and manager daemons" nil nil nil "5" "2020051902:59:05" "[oss-security] CVE-2020-10736 ceph: authorization bypass in monitor and manager daemons" (number mark "U       hvyas@redhat May 19   40/1378  " thread-indent "\"[oss-security] CVE-2020-10736 ceph: authorization bypass in monitor and manager daemons\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10736 ceph: authorization bypass in monitor and manager daemons" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15630 invoked by uid 550); 19 May 2020 08:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24169 invoked from network); 19 May 2020 02:59:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589857160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=e6SFTuDDS3WlzgrZpvCk2AJ+lzfr9j7SmOxtGX/dfa0=;
	b=KcYOlrsrtnd1dMQxvaodVsxcWWAUT0FmQ0OLHnUAGtRKoonsXFniwmknUdWD8kDzU2rEac
	V2NrHgawiuJLTq7l7H6h0PyZYAl6tmGH+36I82CZOHuj+Yt5Y3zTCCXPCU9YxdDdv1vQUW
	jxrbiy180XjLv0xm4e9UA4ArkAL2+ks=
X-MC-Unique: eczWmJbMObqhF0tHBVhl9g-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=e6SFTuDDS3WlzgrZpvCk2AJ+lzfr9j7SmOxtGX/dfa0=;
        b=AOyZ9ocxJaDR76Wivg8D9wY5smXwzSlSokNg1hX6MmrKMYiNfG4dFRhgRmag6FdYgd
         EbxU44t/U2lvBRezDqFeHVfOh2ydRvO25G/7D68cZYwcnGmfYml0iaNnlpgVFvjnrP4y
         vDE2ZQxOMwaogyNRMy+LmG2XnxzR2AwZSzOeczRSm+S1/VviXN4ZF0koI88Jlo2NMoGx
         dZkeoLDC24CMejfVCq0heQVkOmnuEO0Z23sMw66/Q1dk3Q0pusJrbKnssPDnUYxe6vr4
         Gm5+9aJN4cCepv+RrkjazSyttfVo44878lL/LYh2CnOdBEjnn6jWekGSg+Z2NdLgFK+T
         E3og==
X-Gm-Message-State: AOAM533yWS4cxYbh/iXFLJ7YN6OX7ONey4fwSmvldPzGYDON4L6+OV3M
	aBzILN/OYxC8Q4M7Q/xludc/EgsZt6Wll8j0dtzlVzgHGg2Ks/WXEFzRYKafsNW/VDJjkc3Ggiw
	AlL22Su/Fs7eHZvBDw/ggs0Lcubtjdmf5vgYiCkh9eEFD
X-Received: by 2002:aed:3788:: with SMTP id j8mr19347724qtb.113.1589857157252;
        Mon, 18 May 2020 19:59:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyflj30GcSXHXNb5UxtpI5ooUob3dK0vqQRAQwv8Hv+2sjSUiSjfoXObnYtPnYD/YxDaIiAAIwUFco6QmcPOnI=
X-Received: by 2002:aed:3788:: with SMTP id j8mr19347706qtb.113.1589857156904;
 Mon, 18 May 2020 19:59:16 -0700 (PDT)
MIME-Version: 1.0
From: Hardik Vyas <hvyas@redhat.com>
Date: Tue, 19 May 2020 08:29:05 +0530
Message-ID: <CAOo2v=DTvPoytxQ8QiEQuYvw2A+Us0ZVRmkuGr4zgQNMHAf=7Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000014cc1805a5f777d6"
Subject: [oss-security] CVE-2020-10736 ceph: authorization bypass in monitor and manager daemons

--00000000000014cc1805a5f777d6
Content-Type: text/plain; charset="UTF-8"

Hello,

An authorization bypass vulnerability was found in Ceph versions 15.2.0 and
later, where the ceph-mon and ceph-mgr daemons do not properly restrict
access, resulting in gaining access to unauthorized resources. This flaw
allows an authenticated client to modify the configuration and possibly
conduct further attacks.

In ceph-mon daemon, the "kludge" for older clients in handle_command()
allows any authenticated client access to the three whitelisted commands.
An attacker with "mon r" caps can exploit this, e.g. to change
configuration parameters using injectargs. For ceph-mgr daemon, in
handle_command(MCommand), messages are queued to adminsocket without access
checks if fsid is present. This can be exploited by an attacker without
manager caps to run any MCommand including "config set".

CVE-2020-10736 has been assigned for this flaw. Octopus v15.2.2 release
announcement : https://ceph.io/releases/v15-2-2-octopus-released/

Upstream patches:

[master]
https://github.com/ceph/ceph/commit/c7e7009a690621aacd4ac2c70c6469f25d692868
[v15.2.2]
https://github.com/ceph/ceph/commit/f2cf2ce1bd9a86462510a7a12afa4e528b615df2

Credit: Olle Segerdahl

Regards,
-- 

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381

--00000000000014cc1805a5f777d6--

