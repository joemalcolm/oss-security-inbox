X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["919" "Friday" "5" "February" "2021" "20:27:57" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>" "36" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil "2" "2021020514:57:57" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" (number mark "U       rkeshri@redh Feb  5   36/919   " thread-indent "\"[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5618 invoked by uid 550); 5 Feb 2021 14:59:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4005 invoked from network); 5 Feb 2021 14:58:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612537094;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=XmYq3eRwHzrCa1NfQB02rGa51YBCF6p/93AzCqsnKDw=;
	b=CN6TFu3jukWfsCl8Vuau4/1c22KpcTGk4Pqyztdl1qaQWEwIA6xUVlbZNaeSBpung9rLtn
	Bm0hq2FBzsjFT8dRM5tbqE1hozKa7mp97E13po7baQgwwHgYXkyDYOaIi/kmp5DrnPiyEl
	aq7zz8VQoHUl14x7VjqpnUGY7ZiIoVk=
X-MC-Unique: XQbvABMPOiCRAfCQP125Rw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XmYq3eRwHzrCa1NfQB02rGa51YBCF6p/93AzCqsnKDw=;
        b=D0eyRAmYlhfMIQ90+D+sgFt02aRKqZ0JpQsyhuMyQbYt0kSMgC0RvqZzHpj14ZchwQ
         Z/FJCY6Awb1UHYZY6RMd/Pecx9E3WYdEIZwXDkzEKUG4Yo1RYMO3CCnAan+CToB42Ow8
         V9HahkLwLTStH0TXMZIbYqz83p6TNgw+F0d6ICZmNEUSSWTw6liMMQ4vB5AfIsD21A68
         ZIhRr2jwifkYLkT+ZF5Dth6t4m9Qr7NXycPquH+B9+hIMURXtcLEa5v1zzkueCYR/mUz
         MWZzRsl67UxntXEHdcMF1dz8sOZXiIZ88JcgZ5AmUGP4SgFTAl9P/Mv+BfRhfA4yuOMz
         8FPQ==
X-Gm-Message-State: AOAM530TQl8xR0tf0t2QgKzMs2XzPHoxUmOZhkmlbFpOJVc8ZHYriNuG
	DSGyG/E/OUNlGCrZxj0Og6gHL7y+tlcz1o/MeYfhEJHPRBXOM1ijeObxw2YzlRoEc7b8hhEKkLJ
	RmbUtKLptu2SPTNWmkPkYhg5rAUDGkgmZHgCYbsbFU1xB
X-Received: by 2002:a05:6512:6c4:: with SMTP id u4mr2646264lff.63.1612537089191;
        Fri, 05 Feb 2021 06:58:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzqIL/biGV4PQx7rUEbKgP4wV4iiTXu5UinqHld2T9EAEcVmcCF564uwrPMvgebWthEpxU+oAiXo89W8vZkJac=
X-Received: by 2002:a05:6512:6c4:: with SMTP id u4mr2646263lff.63.1612537089015;
 Fri, 05 Feb 2021 06:58:09 -0800 (PST)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Fri, 5 Feb 2021 20:27:57 +0530
Message-ID: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000060d6dd05ba980c19"
Subject: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature

--00000000000060d6dd05ba980c19
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A use-after-free flaw was found in the io_uring in Linux kernel, where a
local attacker with a user privilege could cause a denial of service
problem on the system

The issue results from the lack of validating the existence of an object
prior to performing operations on the object by not incrementing the file
reference counter while in use.

The highest threat from this vulnerability is to data integrity,
confidentiality and system availability.


'CVE-2021-20226' was assigned by Red Hat.

This issue was reported by Ryota Shiga of Flatt Security Team.


Reference:

https://www.zerodayinitiative.com/advisories/ZDI-21-001/


Thanks and Regards
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--00000000000060d6dd05ba980c19--

