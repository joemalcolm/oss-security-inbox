X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["895" "Saturday" "11" "March" "2017" "21:11:30" "+0000" "Craig Small" "csmall@debian.org" "<CALy8Cw6aiwPBKyW_ObB8OmBdxwWm5ypFUVCg6hbbJGE4oBuczw@mail.gmail.com>" "23" "Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" nil nil nil "3" "2017031121:11:30" "[oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2" (number mark "U       csmall@debia Mar 11   23/895   " thread-indent "\"Re: [oss-security] CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2\"\n") "<CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>" ("<CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>" "<8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>" "<CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24362 invoked by uid 550); 11 Mar 2017 21:13:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23935 invoked from network); 11 Mar 2017 21:11:53 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0k/SSbzLVaknkY01OT47Joy2Ja2uUNcPyVtb9WzLaKU=;
        b=IBWsPVM8LB/yuynHvVgqNcdLiaig5wfp3A+6NM7ImrLU70Wh41mdT0N7CZ5a/k6hNz
         F5tiQ5WsaXr2lalPxLy1RXm/PnH0AUlS73tB/yPeQvrMQXKlI2eyMT09zrCWEDcr4rxo
         TTO1+qYn/BLddPQhCYJCxggba8uQA1tWtoUPXaYCV/o+bpwcg/SHhL5c9VHV7ViHFCqz
         6fIQFAV3gTA1Muwh1xb67KGrzS4cMNs5NDMOTE0iQ5Pf6YUSMNlWfxCeJNj5ZFnxCEzc
         0G1syJnieKibkBKOFAX6EbEWz7bO/docYDbMhSKX+tpaeJOidVaC1hEkP1dWhalZ9VB8
         GFUw==
X-Gm-Message-State: AMke39nTdjg5YgtBTUeMGVzCRVRAetE3AvLwkHa7Xtv4umjxKcx3a93pxeOTHipB0D7hww==
X-Received: by 10.31.153.74 with SMTP id b71mr9327816vke.73.1489266702008;
        Sat, 11 Mar 2017 13:11:42 -0800 (PST)
X-Received: by 10.176.65.198 with SMTP id 64mr12843504uap.40.1489266701313;
 Sat, 11 Mar 2017 13:11:41 -0800 (PST)
MIME-Version: 1.0
References: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
 <8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com> <CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>
In-Reply-To: <CANO=Ty0eb=oUz+F5o3jxt=RxXD4WSiDJeGm_m3MmUw0sfdzg_g@mail.gmail.com>
From: Craig Small <csmall@debian.org>
Date: Sat, 11 Mar 2017 21:11:30 +0000
X-Gmail-Original-Message-ID: <CALy8Cw6aiwPBKyW_ObB8OmBdxwWm5ypFUVCg6hbbJGE4oBuczw@mail.gmail.com>
Message-ID: <CALy8Cw6aiwPBKyW_ObB8OmBdxwWm5ypFUVCg6hbbJGE4oBuczw@mail.gmail.com>
To: Kurt Seifried <kseifried@redhat.com>, oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a114f4e2eb59ad1054a7aeca3
Subject: Re: [oss-security] CVE Request: Wordpress: 6 security issues in
 Wordpress 4.7 2

--001a114f4e2eb59ad1054a7aeca3
Content-Type: text/plain; charset=UTF-8

Hi Kurt,
  As someone who seems to ask about the CVEs for wordpress the most I'll
put my hand up to raise the CVEs for wordpress. I am only the Debian
packager for wordpress so if the wordpress project itself wants to raise
these CVEs then I'm all for handing it over to them.

Annoyingly, the mitre website breaks if you enter more than 2 requests in
(or it doesn't like something I typed). Something deep in
ScriptResource.axd gives a 500 error, so it will take a while to key all 6
in. This also explains why all 6 were not entered in one go.

 - Craig

>
> --
Craig Small (@smallsees)   http://dropbear.xyz/     csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

--001a114f4e2eb59ad1054a7aeca3--
