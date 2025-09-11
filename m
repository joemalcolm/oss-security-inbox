Received: (qmail 5892 invoked by uid 550); 11 Sep 2025 15:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26063 invoked from network); 11 Sep 2025 13:05:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757595935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=t/wpM5h9diNKGWFSouR0xWMPeMeYmdKu5HtbCjy2XyQ=;
	b=a1Z8Yj7kyHIuwYbgH7GZENjabzvxUQqo6WQv1+g2VTP2tZ5OBptoJkIue7/WRz9R+8O6SA
	yvqSKfmlBRTsbe+jhcR3NY9yUhuXNPrRt1zwvKI4tunsDIjcSjQHL08fd5OxFJxHZYozKf
	XZJzGtWUSF6TT3Q++xqx/dKSJ7qDZs0=
X-MC-Unique: iD3g0_WaPoytdvLr5cAaig-1
X-Mimecast-MFC-AGG-ID: iD3g0_WaPoytdvLr5cAaig_1757595933
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757595932; x=1758200732;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t/wpM5h9diNKGWFSouR0xWMPeMeYmdKu5HtbCjy2XyQ=;
        b=RZpoN8MG/U/Wk4tF7t6+FapH2SS1t0oc6yG3U+EbvlwUXmtiz2p6Y0wl4GUI7e4/k+
         BckzHrj4wbqpmOs13XQxSA+gT9FrsZ1jcw/P9ZrTapTXL4e6Jzjgz7rrYnm6J9ANUcda
         MP6qssDs90zTiu8zGXjnRJRwMQ5/ftd8i2cyx8QxUy1HcL/9V56+svVeHNGwg0mX1+DB
         wep14vrbcTwYCM5YNBLIfawYK1V0HVO2P+HRMsEoV+zslBWletHeTysfKe+2uaG1s4aJ
         V3e5dHruNNj/VMjOrrhOvB1219rNPRpGP0LAp3uv3nohKyc5a4rzs1Qv7othAX8n2Y51
         dgLQ==
X-Gm-Message-State: AOJu0Yx8zZ7DNtk1/+FTMuVYGJhDwDbB6yL0HsfwRiK0uNLtPukVzlv6
	h2afKluXIyTZBZh9Wu36GBcoOE5bJmbBeEW2AOlVJcuXo5ct4bt/yg4302xbgiXt5jW0KF9qiAu
	zqeN34WHqhpZtcISC6F/go5dBZhykUBVmlfGxJXDLhWcLZQtsVHfgwfXGejGIyiVDJr9B5j1Hqp
	cGVTN6stvRdM+2hp7TSTyfSHaI5Tzy3q0yruyxntGqcKynrrlz8nHz
X-Gm-Gg: ASbGncua4dc1iuPu/Ix1ObF6d/L6vHQmWi9S7Prd3F2eo4Se2p9uVRpRDI1od9gsy8o
	FejDVzZkMc9AJ0B8IX1UQAi9luYjmw9mmRiPYVgjAIourLO6FgtsoTulWUVscC6yIhK/4mff/Aw
	QfIwNNSbJPgviLfPjBwQWTU5oSRM8am1K3BelIaO/KzIrxfCFhX4MLcgKKKK8rwIOkwqTD2QJDC
	HkpdmM1b8q++l4BwWCVKqnvXiFnDXScuI2R2eXI6WE7n+XKGDbPTyYj4nh8b2rZwyN0hlq63Q4+
	6q3tNh1lANWoP1GEsKBOEYt06NgFNmdOz2PThA==
X-Received: by 2002:a5d:64c3:0:b0:3ce:f9b7:4db with SMTP id ffacd0b85a97d-3e642f92844mr14124375f8f.24.1757595932056;
        Thu, 11 Sep 2025 06:05:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDiqcjAjLGjy1rXQ3W76jdpt+47QWALOLDxz51NsVKSc/V5lcu71hp/EzRgPAFnaycZwVMhQ==
X-Received: by 2002:a5d:64c3:0:b0:3ce:f9b7:4db with SMTP id ffacd0b85a97d-3e642f92844mr14124339f8f.24.1757595931452;
        Thu, 11 Sep 2025 06:05:31 -0700 (PDT)
Message-ID: <84d27667-812b-4cde-8d26-132296ae25cf@redhat.com>
Date: Thu, 11 Sep 2025 15:05:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bGlDGYVRQGrej6E4A60bZKhR0_NKeu_WmppiIVj1138_1757595933
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-58060 cups: Authentication bypass with AuthType Negotiate

Hi all,

there is important security vulnerability in CUPS:


    Description


      Summary

When the |AuthType| is set to anything but |Basic|, if the request 
contains an |Authorization: Basic ...| header, the password is not checked.


      Details

When the |Authorization| header is set to |Basic|, but in 
|scheduler/auth.c| |cupsdAuthorize| |type| is not |CUPSD_AUTH_BASIC|, 
the step with checking the password is skipped.


      PoC

- Configure CUPS with |DefaultAuthType Negotiate|.
- Start CUPS
- curl -v -X PUT -d 'haha' -H "Authorization: Basic $(echo -n root:x | 
base64)" http://127.0.0.1:631/admin/conf/cupsd.conf
- cat /etc/cups/cupsd.conf
haha


      Impact

Authentication bypass. Any configuration that allows an |AuthType| that 
is not |Basic| is affected.

Versions lower than 2.4.3 are affected in less serious way - if attacker 
provides valid credentials for Basic authentication  and cupsd requires 
Kerberos authentication on resource (and vice versa), the attack is 
still possible because cupsd ignores its own authentication settings if 
the creds are valid. In those cases, the prerequisite for the attack is 
the attacker would obtain allowed user credentials/Kerberos ticket, 
which is more difficult.

Patch
https://github.com/OpenPrinting/cups/commit/595d691075b1d39



Have a nice day,


Zdenek Dohnal

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

