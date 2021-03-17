X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["724" "Wednesday" "17" "March" "2021" "11:21:23" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "25" "[oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil "3" nil nil (number mark "U       rkeshri@redh Mar 17   25/724   " thread-indent "\"[oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12033 invoked by uid 550); 17 Mar 2021 09:59:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8011 invoked from network); 17 Mar 2021 05:51:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615960301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Dl21UYEOkRSLtgtiTkxfJy1knbQgsfW7wuEnwl8LwsI=;
	b=UjPJcUTd1BXXZv0h7cUt6tG5Inoh8GyuV3aHXkFAvSXsAATTg0YXj37UDDPiqO7OERUX3p
	oB1gM2I8sa/o0lZOLf8NpXECeGeTEJkusCgIgeM5/abjWo/WyjF/1nYTxhHys7okRJR0mJ
	3hQsDc0GeIv1sFcWlQuekGFvLvc6wtY=
X-MC-Unique: LDyUFE-YN0qli5lCJPvEQA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Dl21UYEOkRSLtgtiTkxfJy1knbQgsfW7wuEnwl8LwsI=;
        b=cXuJ8O/DOfq2xwaEZKH/jBHQca6uXmAIszjaJad8DkovhAhZYahaL1JeyrO1bFFjmH
         AUrzll0dUStHmEmmH+Np0u62l+BB2bg7QVFYzEFIuo5UVwGT5TGweSbO2cx8paRvUfJC
         x66YVohZqF8DB5jHBjZa5qmrAVey2T/SAaWkrHxAOuwQnBpXdGUaJ17sUjdTIhHdA3VE
         5FKUwQzsBKQ6R8pAHpXNU3lSOG8UknamerPypDAozXmaqt/8hgncjVhJC0BcuyySzrJW
         DNltabI56wqmBNz6npy/A5AeP639lTFky2LNJh57MgobpNLalGJpfuowRu4WiZDBf4jD
         NeGg==
X-Gm-Message-State: AOAM530UFeU+bNGM4LBZ2RltnFPf/uSejVEqvYhLs9n2T7ILqe3jNPVr
	U3eAeSebeX/B3fnQAvc0z3/4rksNx71HIfnxz0lHm+LH5PP5kMzfyhDTqXmiQbeUrh0LQZExDB7
	IAtw+HOqDX4tbOBTvaAlbjOZZgNOHgFO5HODpN/iaSBFQ
X-Received: by 2002:a05:6512:b09:: with SMTP id w9mr1308363lfu.319.1615960294391;
        Tue, 16 Mar 2021 22:51:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtWLzMpcqMghF/T6PKDAQ4/ng8JX3arkMyXf4APKQo4rG8uksVCad9yDi2cSyxMRbEjNKkkH7Q15gwEkvCjns=
X-Received: by 2002:a05:6512:b09:: with SMTP id w9mr1308350lfu.319.1615960294114;
 Tue, 16 Mar 2021 22:51:34 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Wed, 17 Mar 2021 11:21:23 +0530
Message-ID: <CAKx+4-oZ3YabEpWXYSs8LccRc8PcC_o2fbg7V5FpLT+nVBn66w@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004d59ae05bdb513a5"
Subject: [oss-security] CVE-2021-3428 Linux kernel: integer overflow in ext4_es_cache_extent

--0000000000004d59ae05bdb513a5
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A flaw was found in the Linux kernel. A denial of service problem is
identified if an extent tree is corrupted in a crafted ext4 filesystem in
fs/ext4/extents.c in ext4_es_cache_extent. Fabricating an integer overflow,
A local attacker with a special user privilege may cause a system crash
problem which can lead to an availability threat.

'CVE-2021-3428' was assigned by Red Hat.

References:
https://bugzilla.suse.com/show_bug.cgi?id=1173485

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--0000000000004d59ae05bdb513a5--

