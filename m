Received: (qmail 20365 invoked by uid 550); 26 Jul 2022 11:13:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18269 invoked from network); 25 Jul 2022 23:52:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cmlh-id-au.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=/eWVblAt/hkbcgISTr/4ptc0V3zVDFyHFtzWaDf+6Tc=;
        b=jpLM/mfxiJ8Ud9oGhWB8tfAbkcLrbfnUCMdA4jWiLuqxoe6aB2Zzzi7xVpIG8YLsLy
         bK0qHhTYnHR2UTtlJjH3fgrSb94VijWjiUbm8C3Rszu1wO4yw2PsHFFk4z06n2vOmluX
         dHw+vP5/wpiJ26FSpM8S3nSi/dTxZ4Zo1Sq6qGEyZOGtzde2wdTCuXprbsiv/cgt3sDo
         xoOgpft8d/M+jq7ImhYGu9BZkE7vmHtk8mCSBK55cGxhyRCO77r/gKBeMQm0xqYkox8i
         /cJ6OtOwZAek13TMCF/iFdvnzVZKT/nTQ9Vr1i4DREg9vdQSucovAN5f/om4U7Eygq0E
         MU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=/eWVblAt/hkbcgISTr/4ptc0V3zVDFyHFtzWaDf+6Tc=;
        b=LaM7PwwLgWvP160ck+JmmPSujKEiJUKayRgwVjh4V/ktXTlnfxe8Eah9UI3RRkEsP3
         xTQ4StjwNKavfuBhF4WDpkP2xNPkr2A4hJCVTlG1fQm3Jm1It59kJq8EcOaXUmnvSktQ
         0WxOq1r1vkk3I4Lz+GYzL1U16otY7o0Qpe7la7GNCICOH35b3hQM1ldDY9dgczCu0MJ3
         8xs2P+v2goKVmwRmhTzz4De/NERSi6M7nV2mR5A24nkaV/aIzZKiIMOUIhXazqewtACA
         nhGIknUO2mKH7cg90U0Yd6sX2XRczth+CERyF5WHndoRBdrsm5+WS+NCG3sVQsdlohTB
         iyKA==
X-Gm-Message-State: AJIora+a6uue6RpIkGH5O+qBaTnxBytwGAP86MOmdSjvAEqInppWTLOY
	6lazpLk5DKJto1b2UT/hY1tfrRobUA97GAhAmpzxxwM2q//9y/QW
X-Google-Smtp-Source: AGRyM1uvgr7ohgQKXXPmwBC4KTI4n0zApIrTFxWhmJhuNYV66l/+coQp1nO3tnx7931EsNYJ2fWAx5RQkRYDjVUTPUU=
X-Received: by 2002:a0d:c004:0:b0:31e:3229:7f20 with SMTP id
 b4-20020a0dc004000000b0031e32297f20mr11811366ywd.507.1658793109091; Mon, 25
 Jul 2022 16:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220719001848.GA1516019@millbarge> <EEF3C292-40F0-4EF5-A4D8-3731FA2FE428@chromium.org>
 <20220725222731.GB2583985@millbarge>
In-Reply-To: <20220725222731.GB2583985@millbarge>
From: Christian Heinrich <christian.heinrich@cmlh.id.au>
Date: Tue, 26 Jul 2022 09:21:37 +0930
Message-ID: <CAGKxTUSFnV50gJvJsoWb2TJ6_44hXrt1F-iKGirS_SdBigGYFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] snowflakedb security contacts

Seth,

On Tue, 26 Jul 2022 at 08:00, Seth Arnold <seth.arnold@canonical.com> wrote:
> HackerOne feels a bit formal for me: not everyone reporting issues is out
> for bug bounties and so on -- but having seen more than my fair share of
> "all your source code is public" reports, I'm also sympathetic.

Direct contact is usually banned by
https://www.hackerone.com/policies/code-of-conduct

"Only contact security teams through approved channels

Only use approved communication channels. Unless the program has
intentionally provided a contact method to the Finder, contacting
security teams =E2=80=9Cout-of-band=E2=80=9D is a violation of this CoC. Ap=
proved
communication channels will be outlined within the program policy page
or otherwise notified by the customer, should nothing be specifically
mentioned, all Finders must assume that the HackerOne platform is the
only approved channel."


--=20
Regards,
Christian Heinrich

http://cmlh.id.au/contact
