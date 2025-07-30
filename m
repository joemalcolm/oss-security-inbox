Received: (qmail 24180 invoked by uid 550); 30 Jul 2025 19:06:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21617 invoked from network); 30 Jul 2025 18:54:12 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1753901643; bh=FA/vpTEhZovK7tdhSeyMe3+B9cSTcEAIt37VwBnkF6g=;
	h=From:Date:Subject:To:From;
	b=pa7fjA6M1+kyTzxP+eONNTeASb0fTPQOezYDUnQ8PROBaG3G6Ztwbtg0huQaesQgs
	 QGRplGrZFZjK7DNJWHYIAZt+BhYWRulA8HqtQYUBTN9OoI8f1skDB76uIwlSGzu1K7
	 +w21xDpJo5RaZYvRH18+drtRTIs+HOy1xJHqRsf4iL6sZbZUYgpIVCJmx+VB/P2xva
	 8+po6A1FRU20q4ylM5s/Vmby0pvMcTQbcqYCrhc8F+AWjzAFUN945L3QzAns5/gtJH
	 1Y9BaHbXVzZtxJD+0NN87ybIpjnQbdnQ5uo5+aFxWIEcNW+YastYc6fgjvWsKUobIO
	 hjRdMcVwjYinQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOcM1NxbILHr6uL3oeZCD4jThQmC7ZkP/AJktlruPUGR5t+rhVFkGDV6Md2NS3InWTJwPlS1ImhhoRIMo=@lists.openwall.com
X-Gm-Message-State: AOJu0Yz2eiv4OL3efpJIDIENhTQZs9vJ+7JVHMsrxN9tN8kTUalHitPX
	iTGVeqihAIUs4fcAvpBpl129P0a+YGLMCEwaCirvHG9eOfCiwHAUrr2Yd2dBMPEmBjSA+4Xaniu
	KTd/e1VEcrUzIFIlunngW+LzmHTqvzJU=
X-Google-Smtp-Source: AGHT+IHkBNhBSWAIHMelm4binAvVA+sN6tgFRSOHY56qF8KqvwPzW0Yio0bRysIaVRjTDsN6ELMeWxfvNEUukOdLqFQ=
X-Received: by 2002:a17:906:8318:b0:af9:1063:1c1c with SMTP id
 a640c23a62f3a-af9106322c7mr107622866b.41.1753901643064; Wed, 30 Jul 2025
 11:54:03 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Wed, 30 Jul 2025 20:53:52 +0200
X-Gmail-Original-Message-ID: <CAMufup4hq2o4BoBJh10T6QEOGrJUzm6VmhRd1pXY_tAOvn3NNg@mail.gmail.com>
X-Gm-Features: Ac12FXy1W76bh7oAS0b5Pe1CmSRmiicEyOMrGa5nddP075GkTGXU_LXJBSuJv1M
Message-ID: <CAMufup4hq2o4BoBJh10T6QEOGrJUzm6VmhRd1pXY_tAOvn3NNg@mail.gmail.com>
To: user@jspwiki.apache.org, dev@jspwiki.apache.org, announce@apache.org, 
	Apache Security Team <security@apache.org>, XBOW Security <bb@xbow.com>, Hamy <0x.hamy.1@gmail.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-24854: Apache JSPWiki: Cross-Site Scripting (XSS) in JSPWiki
 Image plugin

Severity: Medium

Affected versions:

- Apache JSPWiki  before Apache JSPWiki up to 2.12.2

Description:

A carefully crafted request using the Image plugin could trigger an XSS
vulnerability on Apache JSPWiki, which could allow the attacker to
execute javascript in the victim's browser and get some sensitive
information about the victim.

Apache JSPWiki users should upgrade to 2.12.3 or later.

Credit:

The issue was separately discovered by both XBOW
(https://github.com/xbow-security, https://xbow.com) and Hamed Kohi
(finders)

References:

https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2025-24854
https://www.cve.org/CVERecord?id=CVE-2025-24854
