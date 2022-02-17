X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Thursday" "17" "February" "2022" "16:35:38" "-0500" "Devon Thompson" "devthomp@redhat.com" nil "17" "[oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil "2" nil nil (number mark "U       devthomp@red Feb 17   17/689   " thread-indent "\"[oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21797 invoked by uid 550); 18 Feb 2022 08:00:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5445 invoked from network); 17 Feb 2022 21:35:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645133741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ukY0tUZpLjH2zIQpD3Ox42aFfGTLf06aDVb0+9bNVdY=;
	b=Kg7Se8GqcD39aOtHz/XCP+QnVPoySMtvLlnpEE2tWuK8Kdn4r0tGVCS1Yrd2ZRz3cZ11qZ
	Rr9z1iDZ6G7n9ouCUPo7St7awsslpTZCFpqaDW6bkAF5J2sipCjBjcZiwI8suyrO6XzJCV
	rKYDUIUb1jzg3Ur3NVy3o1Su41vlhWU=
X-MC-Unique: ptpbSzs-OxCBXtGXCUbpig-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=ukY0tUZpLjH2zIQpD3Ox42aFfGTLf06aDVb0+9bNVdY=;
        b=yj5H2zQsHhL2YKot0yrO3hTansM/Ri/wUpq7EzLZT5hKbmPJDKvMDuGogIumlYl8U7
         LCNm6dVBr3YzIjqZsX76HuXfl3pg4quY2fq6td5fjBwHu0/Fx8o4lcdGn74GvLNEsJlc
         jjYCjtvEX1zMuLVfxA6HmiWVDr+qhNqN4t//tW5/HU4lBh+wfkua1didntNw/A4h/Ikn
         f8AYvM3HNNvrgL83fP5yIypiG2nBBEqy2U25qsPPxwn/eJo4oYiyMdEVoY69N2uZQIJp
         LPCIReGCvmmXxddhFaxS1b4Iagt9wPbXLkDuP6gQcKAqsm8SH0MNt4kFIbHaSTCAdJGz
         GaIg==
X-Gm-Message-State: AOAM533gFShUboejDjdVMqG5gStGd+EXM4NuVwPUqxYh8cPmyKQY+Swz
	4WU7PUZWApHwzd6wd+1AspMA9z/4ho58tqC4QTYyB2SiYxq1fpMZZ1DJeukbkS4jFdme7WiOJ3w
	Y6276kx+59W6rq+ByBv7mIed+mY7qCHsdH+JNftQ1gr4yNuFTckXZs4REPkyYTCfwUph/T3lytl
	mp49Q5
X-Received: by 2002:a37:8702:0:b0:46d:5c16:3604 with SMTP id j2-20020a378702000000b0046d5c163604mr2974653qkd.260.1645133739325;
        Thu, 17 Feb 2022 13:35:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+gw4Z9eGwblPKw5kcwFNh8NqCwHHR3RhxZfhfrLdfflGIJcfrkxmIQZr/XM46vW4lHoTI7g==
X-Received: by 2002:a37:8702:0:b0:46d:5c16:3604 with SMTP id j2-20020a378702000000b0046d5c163604mr2974636qkd.260.1645133739029;
        Thu, 17 Feb 2022 13:35:39 -0800 (PST)
Message-ID: <cb935607-d53a-5043-ddae-54c200e6734b@redhat.com>
Date: Thu, 17 Feb 2022 16:35:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Devon Thompson <devthomp@redhat.com>
To: oss-security@lists.openwall.com
Cc: jrybar@redhat.com, gsuckevi@redhat.com
References: <d4660f03-ed92-97e1-98b3-dee46248bea6@redhat.com>
In-Reply-To: <d4660f03-ed92-97e1-98b3-dee46248bea6@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=devthomp@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------XqMC8IGPGluSEAOiztYufNL0"
Content-Language: en-US
Subject: [oss-security] CVE-2021-4115: polkit: file descriptor leak allows an unprivileged
 user to cause a crash.

--------------XqMC8IGPGluSEAOiztYufNL0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Description:
There is an error handing flaw in polkit which can allow an unprivileged user to cause polkit to crash.
The crash happens due to process file descriptor exhaustion.
NOTE: Polkit process outage duration is tied to the failing process being reaped and a new one being spawned.


References:
https://access.redhat.com/security/cve/cve-2021-4115
https://bugzilla.redhat.com/show_bug.cgi?id=2054127
https://pkgs.devel.redhat.com/cgit/rpms/polkit/commit/?h=rhel-8.6.0&id=a71b0b5bb6624858a16bfbc1e721757b243709c6

--------------XqMC8IGPGluSEAOiztYufNL0--

