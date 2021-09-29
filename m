X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1093" "Wednesday" "29" "September" "2021" "20:20:22" "+0200" "Przemyslaw Roguski" "proguski@redhat.com" nil "42" "[oss-security] CVE-2021-3762 quay/claircore: directory traversal when scanning crafted container image" nil nil nil "9" nil nil (number mark "U       proguski@red Sep 29   42/1093  " thread-indent "\"[oss-security] CVE-2021-3762 quay/claircore: directory traversal when scanning crafted container image\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3762 quay/claircore: directory traversal when scanning crafted container image" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21744 invoked by uid 550); 29 Sep 2021 18:33:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9431 invoked from network); 29 Sep 2021 18:20:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632939639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=i1SJosJyfd+prWQxZxPPuzhgSY+IDPbFmUaEywpeksM=;
	b=ZavLZ9JO3A2p7OnYefLLtXw90cg+MhzBLBwbGAqXA+FBX4HFwLslAOPbaSXS5NsKqwSTvv
	lNSCL65ohRgG8j8uta3rLVrcdvZExmWmzcjc78KZc22xYoKTZc2gqIUNtEuB+tPZDMcO8s
	+C9bkeRQt0Ii3QbtkOBKHyEoDPOGbnA=
X-MC-Unique: 3M-ueUIoP8S_DFltg9aVCw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=i1SJosJyfd+prWQxZxPPuzhgSY+IDPbFmUaEywpeksM=;
        b=5mcEUxhMaIz1EpAIXcvvfxG5MUJgX8ncZFmVrIU91OoF6bXJxA996D21whUmiv4zIC
         MdPawM0183nQRk0cOJYzQyCvaXHP479rG5xzviBPYeBGbJGZgPPu0RtxGDLk3ziksBJH
         9qm3It9+MYPEo9RuwJvbj9vt7VHaWmer6wIUhlsw/c/LF45Jc5FfAu1DI9zyzOpbHs6W
         fQBzwzlfSrZwgxDIzbmK9iGuleJiwnscGUve4uhKWeaHz/nCIkuS/+kq1Jb5HXMLMUr0
         THNjlVIcdAqHdWkwkOZCsUytbhYwZYJhw+Kl2W9K1ETf1uCUXpDpXZ0TtpMdenAViZrU
         d2hw==
X-Gm-Message-State: AOAM532D9sLhHYGjHi02mcwlwF+OiV8YoHvBLuw4Wn8uHGWGvCgjGoMM
	u8uF0C56h5WVTkrOzboscNhPwX9FUxil1N0lZ+IWb1kG8ckGgXdYz42LNi/aEagO+TXawRfJqDt
	HYJv3VY1UeYy+i0RbbylDkJSkFOAMFjYCOvRhBvLYcTFv
X-Received: by 2002:a25:c986:: with SMTP id z128mr1505107ybf.112.1632939633356;
        Wed, 29 Sep 2021 11:20:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGXKOHzXLHUwb4wktN6IvufxC8UkbgSTy2kzLRTZO4FkAXRa9YzMKFBwXPpE3DvghZ9sE3Jj0ooKRRSjXiqlg=
X-Received: by 2002:a25:c986:: with SMTP id z128mr1505064ybf.112.1632939632919;
 Wed, 29 Sep 2021 11:20:32 -0700 (PDT)
MIME-Version: 1.0
From: Przemyslaw Roguski <proguski@redhat.com>
Date: Wed, 29 Sep 2021 20:20:22 +0200
Message-ID: <CAGGkMiuFnMtwuUOeP7zdtf0dryKk0JLHfnHAk0uCzioKWeWKfw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=proguski@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000c2996905cd2662f3"
Subject: [oss-security] CVE-2021-3762 quay/claircore: directory traversal when scanning
 crafted container image

--000000000000c2996905cd2662f3
Content-Type: text/plain; charset="UTF-8"

Hello,

A directory traversal vulnerability was found in the ClairCore engine of
Clair.
An attacker can exploit this by supplying a crafted container image which,
when scanned by Clair, allows for arbitrary file write on the filesystem,
potentially allowing for remote code execution.

Red Hat has assigned CVE-2021-3762 to this vulnerability.
These issues have been rated Critical, with a CVSS:
9.8CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

### Affected Versions
ClairCore 0.4.6 release and higher (Clair v4.1.4 and higher)
ClairCore 0.5.3 release and higher (Clair v4.2.1 and higher)

### Fixed Versions
ClairCore v0.4.8 (shipped in Clair v4.1.6)
ClairCore v0.5.5 (shipped in Clair v4.2.3)

### Fixes
https://github.com/quay/claircore/pull/478
https://github.com/quay/clair/pull/1379
https://github.com/quay/clair/pull/1380

## Acknowledgements
Yanir Tsarimi
twitter.com/Yanir_
(Orca Security)


Best regards,
Przemyslaw Roguski

--
Przemyslaw Roguski / Red Hat Product Security

--000000000000c2996905cd2662f3--

