X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["801" "Thursday" "14" "April" "2016" "13:44:36" "-0400" "Naser Farhadi" "n4ser.farhadi@gmail.com" "<BF077EF2-CBB6-4357-A69C-94778080D73E@gmail.com>" "31" "[oss-security] Re: CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution" nil nil nil "4" "2016041417:44:36" "[oss-security] Re: CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution" (number mark "U       n4ser.farhad Apr 14   31/801   " thread-indent "\"[oss-security] Re: CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution\"\n") "<68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>" ("<68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29896 invoked by uid 550); 14 Apr 2016 17:47:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27754 invoked from network); 14 Apr 2016 17:44:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:mime-version:subject:date:references:to:in-reply-to;
        bh=SUoqDzGC5iwCIo49VY+7gYRF2AD/lBMvhczfFYq2Bvs=;
        b=rVmybZiLcEPjDD3y8zv047DQWqXGvhvtYdo2m/JqHomdPlyCoGcnUJH4+80A0zaxDN
         SOrBgzNkCJOjS0brsqBPBxCM8+LU+Busubepn1C9vITKJ8t2zwIqKeS1A0yFoTWHZXGs
         V5VpMtt8ryiItEwmam9cJXKvya3GkrNYqllVJf4xm2Q6RWc0UKEemLM7dTB0gWxlfJSh
         gOdwTryN8cUSR3OPKJo2yfOY8a1/mknxevBX4u0cqTulJ/HyJDPDHtabQbOOcSc4PLCi
         kqdSCN2/i2w+CGGUgfjfyvgDyTU0VotNb9IFEoGNgwC9GrHuAI4IE8yKOlpVAQSGBZ02
         D7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :references:to:in-reply-to;
        bh=SUoqDzGC5iwCIo49VY+7gYRF2AD/lBMvhczfFYq2Bvs=;
        b=OQIZL88dcikWlO4uaRXBgP3zw7x2q+Ehj768+HWgzpafH99U4czt6aBHqXn5N5fjnY
         x0Nz/c389rAEQzdLyHr6JJiwBbDWb/GBxSCwAIvECDQCaeXfD8kbQcpmvt/a8vkRJ/e2
         Nz5WO3TtrHFWxSphPSBcjAj4kLdw58iCj0our9NBm0/9u/XP5owzT/g95ZvUGVKF4pdr
         /2PZSKQ2N+ar9vLFHiBOFp2xhsRWXS7caKAVbvhwklOVnLgKUljng/tjT5hFc1KfM+yO
         6e45byVkBORPVfPIP4iN0TRoV27bkOS15TkRvouevjXJZTwV2kS7xII1+KiNNPdzOOHq
         wpKw==
X-Gm-Message-State: AOPr4FUMan4vnmwj/B2pQv3v3uzC2O6+zoYVtLgUe/CutlJbecZJWcVVsYA87JBkDhkFsQ==
X-Received: by 10.112.219.101 with SMTP id pn5mr6674750lbc.62.1460655883018;
        Thu, 14 Apr 2016 10:44:43 -0700 (PDT)
From: Naser Farhadi <n4ser.farhadi@gmail.com>
Content-Type: multipart/alternative; boundary="Apple-Mail=_31FEE6B5-6C0C-4E4C-8A7F-813BB4F38D60"
Message-Id: <BF077EF2-CBB6-4357-A69C-94778080D73E@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Date: Thu, 14 Apr 2016 13:44:36 -0400
References: <68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Re: CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution

--Apple-Mail=_31FEE6B5-6C0C-4E4C-8A7F-813BB4F38D60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Note:
-----------------
Exploit only works if PHP JSON extension is not installed.

> On Apr 14, 2016, at 1:26 PM, Naser Farhadi <n4ser.farhadi@gmail.com> wrot=
e:
>=20
> Hi
>=20
> OpenCart is prone to a remote code-execution vulnerability.
>=20
> https://www.exploit-db.com/exploits/39679/ <https://www.exploit-db.com/ex=
ploits/39679/>
> http://seclists.org/bugtraq/2016/Apr/61 <http://seclists.org/bugtraq/2016=
/Apr/61>
> https://github.com/opencart/opencart/issues/4220 <https://github.com/open=
cart/opencart/issues/4220>
>=20
> Could a CVE please be assigned to this issue?
>=20
> Regards,
> Naser



--Apple-Mail=_31FEE6B5-6C0C-4E4C-8A7F-813BB4F38D60--
