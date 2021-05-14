X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["956" "Friday" "14" "May" "2021" "14:55:13" "-0400" "Ana McTaggart" "amctagga@redhat.com" nil "39" "[oss-security] CVE-2021-3509: Ceph: Cross Site Scripting via token Cookie" nil nil nil "5" nil nil (number mark "U       amctagga@red May 14   39/956   " thread-indent "\"[oss-security] CVE-2021-3509: Ceph: Cross Site Scripting via token Cookie\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3509: Ceph: Cross Site Scripting via token Cookie" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1386 invoked by uid 550); 14 May 2021 19:21:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27768 invoked from network); 14 May 2021 18:55:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621018528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=f16XCns5LsdArXAoAO/x2mAsiDXrn+EZb4ciP3vWXco=;
	b=PuBVd5J8crcjZk9NKK6qZowpJfAGdLlvw5jQdZZx23JALgJnTW8DzUCpIta6hvomRjDYLI
	wPpvE9/3r4d40Pci879PyXrISXT7zdweZfIOdGIX9547MypcRdVoeO8q3gXNkLXXCCewUM
	LnUuDQOChcxvKA2rUkuyazCXZ1F+e9o=
X-MC-Unique: -90gnWmqMgi8BvFCyjJPng-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=f16XCns5LsdArXAoAO/x2mAsiDXrn+EZb4ciP3vWXco=;
        b=etVE5Dbq6d6vvOju4rPkbvM6TQNP5qdOCKxNqj1AwohKtKfXVSvl4UzkowU/xjfZqy
         22FgvqZehcPi4oTr2LVk1wjhWhcnAPCn/na+oy7evzSZmS81XQGd3/2Sh6ZO6Hxy3jnP
         mGicJccKjaAaFTC7Tf0oJeMOpj2A2t1yp3J5ZJg6W9/lZuyRxlRiKy5OafrKFxnAq+6J
         sFtJLjjDSlM5FSdf3pMue2HsVkJ5iujSnUXXfUPi8u7KXAZtAxP0TX/kQDQUGxv/aqQc
         iHw10k01v/MQNgj0CG0El477q7rF1h4011AwezhpCM+7xaHt3xQmKyMwpkPItrODG3r7
         sLKQ==
X-Gm-Message-State: AOAM531Z4JltHQtg9YUcY3ajmkPwDmEz/DBNP0ML/8tp4Y2FusoZGK5T
	SHVBNKPEbpnD5TQRCf52bZrpo4RYWWV0z4tHprkY+DJGyPJQ4ycCdiEoIGJYh45CcQrWvzC4O1q
	a+9GBX3m52+tdgIUvJAnXm/HshEpmOknXise1OBAhy8/o
X-Received: by 2002:a05:6214:a62:: with SMTP id ef2mr48254018qvb.31.1621018524460;
        Fri, 14 May 2021 11:55:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxkCyWH327hG0GI3XMtITik37pXaynJwfdPKIL2zzl07eyHJGU39p+3ou8enIAomtWY0ONeMdRqW47Wee/xBr0=
X-Received: by 2002:a05:6214:a62:: with SMTP id ef2mr48253993qvb.31.1621018524170;
 Fri, 14 May 2021 11:55:24 -0700 (PDT)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Fri, 14 May 2021 14:55:13 -0400
Message-ID: <CABBoSthTBNKwjLs40gL6n7KZ9ojiSomYyNVdG=1Jfr7eN6ha1w@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004ecc7a05c24ec937"
Subject: [oss-security] CVE-2021-3509: Ceph: Cross Site Scripting via token Cookie

--0000000000004ecc7a05c24ec937
Content-Type: text/plain; charset="UTF-8"

Hello,

A flaw was found in the Red Hat Ceph Storage Dashboard. In response to
CVE-2020-27839, the JWT token was moved  from localStorage to an httpOnly
cookie. However, token cookies are used in the body  of the HTTP response
for the documentation, ensuring that the vulnerability remains.

We have assigned it a CVE of CVE-2021-3509, and released patches for it.

Nautilus:
https://github.com/ceph/ceph/commit/adda853e64bdba1288d46bc7d462d23d8f2f10ca
Octopus:
https://github.com/ceph/ceph/commit/7a1ca8d372da3b6a4fc3d221a0e5f72d1d61c27b
Pacific:
https://github.com/ceph/ceph/commit/af3fffab3b0f13057134d96e5d481e400d8bfd27

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs

--0000000000004ecc7a05c24ec937--

