X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["783" "Thursday" "17" "March" "2016" "11:25:28" "-0400" "Derek Mahar" "derek.mahar@gmail.com" "<CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>" "27" "[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" nil nil nil "3" "2016031715:25:28" "[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" (number mark "U       derek.mahar@ Mar 17   27/783   " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting\"\n") "<CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>" ("<CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11898 invoked by uid 550); 17 Mar 2016 15:42:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32244 invoked from network); 17 Mar 2016 15:25:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-transfer-encoding;
        bh=T91evl4A7jLECWdVcqw/IwvFftkt+CeMSxtTZKLCPl8=;
        b=0AIN7yDq6pyE0jEjdPxSO0T2Gc4hSRBBHvCZUDObTOXvhba5XTtM/17HEUBZMLweSt
         Ma7nrI4AGYsvnuKukx+xCCRPkkgkwXRem7b24p4Vrg9ikTF2gugmiJyw//suY6O9FikB
         y0cUT6f4vO4hhUYPy1IQ2+OiAKiUronyfxOq4kbcC5UeezHrqHZrAep23utC4Tu+AXmW
         wzEA4q9XEnmHbD001HFN7dPiTUIG8WXQTy5O4ffT1vTWuX9rw21TG9ArpzBDHixYK5YG
         1sS79aOigcNGx0DPzV+tipPYdxpaN8Jc8IEMJj57hT637JoS0twQ0FWl2kyl+GMCCBRV
         Xxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-transfer-encoding;
        bh=T91evl4A7jLECWdVcqw/IwvFftkt+CeMSxtTZKLCPl8=;
        b=VCUrdH8KAJDBQnzYOsbl47c86ZroXpJzH5lNf8xaCRF3B+X1Uduc2x9XFbHRrz+j/9
         HUudWeC35Fg6VP8XtgYGKyxQkBWTN1NZD+kTesUqHwvN2ifeRs6moURH3tV40qU5Gbv2
         MiDXA1B0FIh9/lnlrrZsyUd5E6+rCFp5UGIoDAABRvJHZ8KPnURI45RWkwpTzha9FAkd
         mTnocSWbC2YcqZ8Mxnz2QRPldgbuBYxqivi10nkRPhIDXSQlmd7WuFQ7TqEMlOynYxKY
         BDet6UB2adVUZ3IgN35v58JOsS/fV5s5XCJJvj22t20Iow50J7zSNGQBx6YvmBDsfMLm
         dBjw==
X-Gm-Message-State: AD7BkJJCNZbygBH1saizC5tRsBd4Dm5eqvRgxVAXxRhm2Fyujf+vo2CAnxCmUJvLjuZNyapzN7yqghDMZDD0bQ==
MIME-Version: 1.0
X-Received: by 10.31.56.133 with SMTP id f127mr12195811vka.56.1458228328393;
 Thu, 17 Mar 2016 08:25:28 -0700 (PDT)
In-Reply-To: <CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>
References: <CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>
Date: Thu, 17 Mar 2016 11:25:28 -0400
Message-ID: <CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>
From: Derek Mahar <derek.mahar@gmail.com>
To: users@activemq.apache.org
Cc: dev@activemq.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting

The security advisory announcement claims that ActiveMQ 5.13.1 and
older versions are affected and that ActiveMQ 5.13.2 fixes the issues.

On 10 March 2016 at 07:45, Christopher Shannon
<christopher.l.shannon@gmail.com> wrote:
> There following security vulnerability was reported against Apache
> ActiveMQ 5.13.0 and older versions.
>
> Please check the following document and see if you=E2=80=99re affected by=
 the issue.
>
> http://activemq.apache.org/security-advisories.data/CVE-2016-0782-announc=
ement.txt
>
> Apache ActiveMQ 5.13.1 and newer with appropriate fixes was released and
> available for upgrade.



--=20
Derek Mahar
1.514.316.6736 Home
1.514.316.7348 Mobile
1.514.461.3650 x230 Work
102-1365 boulevard Ren=C3=A9-L=C3=A9vesque Est
Montr=C3=A9al QC H2L 2M1
Canada
