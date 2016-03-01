X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["621" "Tuesday" "1" "March" "2016" "11:53:37" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "17" "[oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030118:53:37" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        kseifried@re Mar  1   17/621   " thread-indent "\"[oss-security] Re: CVE's for SSLv2 support\"\n") "<20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" "<20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3385 invoked by uid 550); 1 Mar 2016 18:53:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3353 invoked from network); 1 Mar 2016 18:53:49 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=26zSdRs9SlcJLKuuCKxEKWbiFzwODXkJ3uKJZK18DKw=;
        b=TegtXYh64vZipL6aXmKcYOvJcxt+PK79Ebq9hvlP014z+U0/WW21HKZoHG8huYn04/
         QrppfBKA7AJevmMkWXWXDSkMLUI4BXc10zn/nzDfhnMoHANk+Oxp+bCkhUkjfpM9jNZV
         7RTOYrawETPpXWIwrD/omndCcUqjyukQa3ThTAIMfT15cdruBSjtgv1PQlyMzrmYHtCt
         y32DCmRUsFCkx6wrzZnAPn5PyWLeL72893yQlZF65vkg78edu1fOP9yxLZJjbMkCZeFc
         UO1Sp4QVN9cgyRQiHlbVBRnLxVRdH/rmT7Z7vElYEyUo5uBAgMuHil3sGSFCt3JqpT+5
         uLug==
X-Gm-Message-State: AD7BkJIO6FS9bwNzIqHauuYRpcNlFNnNAS52cqlqwz/Fls8vI27YzZglSH6MM0ZPwXs1PSZhdPmO4eYR7jtwHo79
MIME-Version: 1.0
X-Received: by 10.13.235.7 with SMTP id u7mr12555812ywe.97.1456858417749; Tue,
 01 Mar 2016 10:53:37 -0800 (PST)
In-Reply-To: <20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>
References: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
	<20160301184339.B62C3ABC04A@smtpvmsrv1.mitre.org>
Message-ID: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0873067aaa92052d014864
Cc: oss-security <oss-security@lists.openwall.com>
Date: Tue, 1 Mar 2016 11:53:37 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE's for SSLv2 support
To: CVE ID Requests <cve-assign@mitre.org>

--94eb2c0873067aaa92052d014864
Content-Type: text/plain; charset=UTF-8

Ok let me simplify:

If a crypto library (e.g. OpenSSL, NSS) supports AND enables SSLv2 by
default should it receive a CVE? Essentially we'd be saying "SSLv2 is so
bad, that supporting/enabling it by default in a crypto library is CVE
worthy" (essentially under the CVE assignment for "product makes a security
claim that it fails to do properly").

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0873067aaa92052d014864--
