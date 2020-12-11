X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1012" "Friday" "11" "December" "2020" "11:21:40" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-qZiFB+5NPZCJyTPUY=VkJjmei1J1E+rovApaqQ5+3yqg@mail.gmail.com>" "33" "[oss-security] CVE-2020-27825 kernel: use-after-free in the ftrace ring buffer resizing logic due to a race condition" nil nil nil "12" "2020121105:51:40" "[oss-security] CVE-2020-27825 kernel: use-after-free in the ftrace ring buffer resizing logic due to a race condition" (number mark "U       rkeshri@redh Dec 11   33/1012  " thread-indent "\"[oss-security] CVE-2020-27825 kernel: use-after-free in the ftrace ring buffer resizing logic due to a race condition\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-27825 kernel: use-after-free in the ftrace ring buffer resizing logic due to a race condition" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32733 invoked by uid 550); 11 Dec 2020 08:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31918 invoked from network); 11 Dec 2020 05:52:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607665917;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=4/ZJk8PibXQ4BkfcK6q8Hfqc3omXYTFO38wWcFR32dg=;
	b=dBewWmoLUnydeocrIE8CHV/ClxxjSD6yve5WiImNj0dw4V2bAyCGOmPjRuvutql8GQn6TR
	hvGVQkGd2sinqSxtKOCgXsnhbVuBnmPK6M78BrR44sXpUTtOgXnGGbyLQfG6CfAfBXXi5p
	RDE3/JYiab43gKhKi7J59XPp/xQcszY=
X-MC-Unique: TeOA0AcEPSu9oyiNKG8MgA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4/ZJk8PibXQ4BkfcK6q8Hfqc3omXYTFO38wWcFR32dg=;
        b=fDrT9t+igEHtEaw9iDpY9CuvVZMyCWpiM6lBiO8wxw1o16HY5G0XjQN0ci/ICGdZ2u
         kjFhFbQqj21cWnrNU/vGymBXjqFP0nuxXurtQk/Xv7IVsxyP3lAkic8j0Pe4yJPM1vdX
         HeFccdg4rh2b474qABGQx8dKZuTgYZl2bvNYrtvSf3yeKV0WoTfsyJBQN6WmklVZYFxU
         8vaRoSDuT9ofE+o3v/oRhGAd8uBBXJW/b19D4qeZAgAFfVDLnMEi5ESQQgWFfk8UJIHq
         Qd3NqUVQ0WTEmB4JVHkBVkwtkmcn6ZSBExMp0qvEh3whIp97q9rBNepqaMf0jqYBF/Jt
         vddA==
X-Gm-Message-State: AOAM533DoSlwYRtZslebgULOv/tYTqVVJwTYwmudT4o5TcQynVUGhDmP
	n/QEeFL8av+1lkm3eFqUJUrZlvd05uIXh9eFlGP0Vd8yLOs+G8lzOl99UIdo/jHGAWFSFLm/DIU
	GO5kaFcfqvOPyzFToiCX3C+mmDre1Ktg4Rw4tm+04QIwy
X-Received: by 2002:a05:651c:1255:: with SMTP id h21mr4782859ljh.8.1607665911192;
        Thu, 10 Dec 2020 21:51:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwWiADBctNqHonLxEOXaFdUmLxpkK/PTzOXc/zwFMsw0EOe9L72zMGzMjInPrK4k4pph4wVFiVMWn4I0joYgVc=
X-Received: by 2002:a05:651c:1255:: with SMTP id h21mr4782854ljh.8.1607665910961;
 Thu, 10 Dec 2020 21:51:50 -0800 (PST)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Fri, 11 Dec 2020 11:21:40 +0530
Message-ID: <CAKx+4-qZiFB+5NPZCJyTPUY=VkJjmei1J1E+rovApaqQ5+3yqg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008a6a7c05b629e3c0"
Subject: [oss-security] CVE-2020-27825 kernel: use-after-free in the ftrace
 ring buffer resizing logic due to a race condition

--0000000000008a6a7c05b629e3c0
Content-Type: text/plain; charset="UTF-8"

Hello Team,

Red Hat has identified a vulnerability with the following details.

A use-after-free flaw was found in kernel/trace/ring_buffer.c in Linux
kernel. There was a race problem in trace_open and resize of cpu buffer
running parallely on different cpus, may cause a denial of service problem
(DOS). This flaw could even allow a local attacker with special user
 privilege to a kernel information leak threat.


'CVE-2020-27825'  was assigned by Red Hat.

Acknowledgements: Adam 'pi3' Zabrocki

Thank you Adam for bringing this to our attention, and your hard work.


Reference:
https://github.com/torvalds/linux/commit/bbeb97464eefc65f506084fd9f18f21653e01137#diff-446a57a3a8781d7d3fb410eb7162dd2002dd363bf1ea936c4fd10397660033e0

Thank You. Regards
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--0000000000008a6a7c05b629e3c0--

