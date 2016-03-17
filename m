X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1122" "Thursday" "17" "March" "2016" "11:42:59" "-0400" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzxf43GJp=bBNvCUi-4ELt7UA6i9vWm_pKW-nG4g2s0DTg@mail.gmail.com>" "40" "[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" nil nil nil "3" "2016031715:42:59" "[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" (number mark "U       christopher. Mar 17   40/1122  " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting\"\n") "<CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>" ("<CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>" "<CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19526 invoked by uid 550); 17 Mar 2016 15:43:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19458 invoked from network); 17 Mar 2016 15:43:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5ghywNCxU9+YmmRwVoNYysRJEaSm+xlwUz3fw/bJp9k=;
        b=ue0frMoHgwX0yPjFIB0NOJ2d5uOfJVZBX+WUv8uzBxCsrPr8qX2tg5VE9ISAVtW7I2
         rJRQdS6B98Hf/KHF297gzVzsC+FtmmNqtqczTrMQha3QqO0/HxljtD/J+K/B80JXtbnb
         eBG3TM8mmqbJutJppE2NKjKgjM7bBCcSJChgHaPsb+nXYpSLemFUMPC9ZpUTCwoTtj0k
         7LZ0xO/CwHp+n0pOFb78GqsQnSZTnva/aoD0+Wzyw3ZDv2O4FhrEcIyrTdOnJGeGMfN4
         YjnBC1kmcZ4loaIGwWuOBM9y+ThvzTkcEtLIAfeKgakRhoUwVdDD0rfo9LqJGkv7wubi
         vM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5ghywNCxU9+YmmRwVoNYysRJEaSm+xlwUz3fw/bJp9k=;
        b=Z7rHmikINMxuPYxQiCqW42z8da7vrzPAfTLM5ozx68O+7S3Px+UqqotIlr6CWaP9Ri
         A1O5FHOtftRBJEQXzXtD+L6Xqvhlgf4FsB3pYoeVjgEAuEpFyG2vu+WoO/MWCWCO52ZX
         34CXPxr265scwJ1j1WydBmrpYwis2KfYGgbn4h/+1x20ZNOqAlDhh4946U4+5MSzAsnd
         mjad6d9k+LG+OlkC/uJlZWTp0UIAiR7kJ5gSB8yZTb+An3Dn8IOT5uSxgOH1HbuXyhKw
         eXTqXPQ9RHUlTndP2MQzo8c3XYDxLq3ojPkhkWuMRhu+IsD67iY+5Z88fXHdNOnvc+Qm
         49YA==
X-Gm-Message-State: AD7BkJL2rFyCSB9QgzX58rC4pSbzzyQaUhA9WXOd5IfKjhpZi3RUDowTMCa2JM9RaNmqdMoR0H7Byi9dQt7Vbg==
X-Received: by 10.129.33.133 with SMTP id h127mr4732774ywh.169.1458229408867;
 Thu, 17 Mar 2016 08:43:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>
References: <CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>
 <CABtfiZbb8y9uuQT8=zrAaTi8znTjXXBqGPZBdDa4yxiaw3OO-g@mail.gmail.com>
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Thu, 17 Mar 2016 11:42:59 -0400
Message-ID: <CACHnxzxf43GJp=bBNvCUi-4ELt7UA6i9vWm_pKW-nG4g2s0DTg@mail.gmail.com>
To: users@activemq.apache.org
Cc: dev@activemq.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a11429262ead0cf052e407d02
Subject: [oss-security] Re: [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting

--001a11429262ead0cf052e407d02
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for pointing that out, I have fixed the announcement.

On Thu, Mar 17, 2016 at 11:25 AM, Derek Mahar <derek.mahar@gmail.com> wrote:

> The security advisory announcement claims that ActiveMQ 5.13.1 and
> older versions are affected and that ActiveMQ 5.13.2 fixes the issues.
>
> On 10 March 2016 at 07:45, Christopher Shannon
> <christopher.l.shannon@gmail.com> wrote:
> > There following security vulnerability was reported against Apache
> > ActiveMQ 5.13.0 and older versions.
> >
> > Please check the following document and see if you=E2=80=99re affected =
by the
> issue.
> >
> >
> http://activemq.apache.org/security-advisories.data/CVE-2016-0782-announc=
ement.txt
> >
> > Apache ActiveMQ 5.13.1 and newer with appropriate fixes was released and
> > available for upgrade.
>
>
>
> --
> Derek Mahar
> 1.514.316.6736 Home
> 1.514.316.7348 Mobile
> 1.514.461.3650 x230 Work
> 102-1365 boulevard Ren=C3=A9-L=C3=A9vesque Est
> Montr=C3=A9al QC H2L 2M1
> Canada
>

--001a11429262ead0cf052e407d02--
