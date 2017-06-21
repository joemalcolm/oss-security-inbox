X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1780" "Wednesday" "21" "June" "2017" "13:19:30" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-ELxoCUOr-7afEc6fsNLF5KAzLMtavws48RhKCGoE4vSsw@mail.gmail.com>" "36" "Re: [oss-security] 4 remote vulnerabilities in OpenVPN" "^Cc:" nil nil "6" "2017062111:19:30" "[oss-security] 4 remote vulnerabilities in OpenVPN" (number mark "        guidovranken Jun 21   36/1780  " thread-indent "\"Re: [oss-security] 4 remote vulnerabilities in OpenVPN\"\n") "<20170621111755.GA12401@openwall.com>" ("<CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>" "<20170621111755.GA12401@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13960 invoked by uid 550); 21 Jun 2017 11:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3210 invoked from network); 21 Jun 2017 11:19:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wH550vrBOh+6UzHRwIhos15i/L8ZAeqFVomt5b2vn0g=;
        b=IYMOEJk+rz+v4mPtvEnzMWBhR0uWo20v4WrZOThVzm+e8tbJv/NT0VKS2lPbaUTM5A
         XZWMXjK04K+o/ADOE+MvhRUfLuP5EVxDrJ0DRQB3M1LRiw7TQo8wKuUitIqYdLfaDVch
         1tKpbpupxdXF6GHRp2PvG/xFStO/AibePBgjFK13A/ylQGW1d1xaFkopSTJ8zWtzVFGc
         DXDJCH3mez+4xOVG9a/PPo6stL+VfT5jmf2pW9u3eTMfHpiwBGx46LJew23c11Cr8Toc
         MbMXAiItMc/JmIJ99joCIPkLSd1sUYd1ZBuaHAQFjwbxSLp3te3+mFdmzxL8bFXYh0jp
         nY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wH550vrBOh+6UzHRwIhos15i/L8ZAeqFVomt5b2vn0g=;
        b=s/5XZPkByU9maFEZh8PSR6uSAzN1RYYegh/FWDke0wTsbMlcefroyXJMJrWclj3/lw
         0IJ57Wgstga+DlOl34SN/32/SVMmzNaud/3Hk6g1YR1eUJU61KpJfP/JLrlMz9Jc9IkK
         rNw1BJ95bhlToJPIeFWrWAMpob95NjrNZavtjarqduXTANKQWE+4sl5+SQz3CRTiPipK
         sqHIeSI5ZjbzVXNnTRlIld51JVnlsPpt68wrSrxfafuJHhg5E3TgbOuRFIt5hiSs7du1
         ReTYsDmQPRUyno/g0gyp33PY86Wm/sQ/rlZdM3o4KQ/zzHZE4MhaDuSB1vFVe07NUJO4
         j1ng==
X-Gm-Message-State: AKS2vOyVkOPE7A81AQIElSeb4jfNlwK7VPdj8SKxtkNSbXYKfIreN+yb
	eem7uF3aqS3UPBvxAeEO1drMEMSRCvtzWMo=
X-Received: by 10.176.16.201 with SMTP id x9mr21019343uab.45.1498043970922;
 Wed, 21 Jun 2017 04:19:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170621111755.GA12401@openwall.com>
References: <CAO5O-EJqSUT8PcMzEjDF8k8CwxsyHqVSEYbku3HaAhvvKjgCbQ@mail.gmail.com>
 <20170621111755.GA12401@openwall.com>
Message-ID: <CAO5O-ELxoCUOr-7afEc6fsNLF5KAzLMtavws48RhKCGoE4vSsw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com
Date: Wed, 21 Jun 2017 13:19:30 +0200
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 4 remote vulnerabilities in OpenVPN
To: Solar Designer <solar@openwall.com>

Thank you! I will take this into account next time.

Guido

On Wed, Jun 21, 2017 at 1:17 PM, Solar Designer <solar@openwall.com> wrote:
> On Wed, Jun 21, 2017 at 12:40:57PM +0200, Guido Vranken wrote:
>> An extensive effort to find security vulnerabilities in OpenVPN has
>> resulted in 4 vulnerabilities of such severity that they have been
>> kept under embargo until today.
>> Interestingly, this comes shortly after the results of two source code
>> audits were released, which both failed to detect these problems.
>> The worst vulnerability of the 4 allows a client the drain the
>> server's memory, which, due to a particular technical circumstance,
>> may be exploited to achieve remote code execution.
>>
>> An extensive write-up can be found here:
>> https://guidovranken.wordpress.com/2017/06/21/the-openvpn-post-audit-bug-bonanza/
>> . A technical explanation for every vulnerability is provided, and I
>> ponder the efficacy of source code audits.
>
> That's very cool, but we have a policy here to include actual
> vulnerability detail in the list postings.  Your blog might be gone in
> some years, but hopefully some oss-security archives will stay around.
>
> http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines
>
> "At least the most essential part of your message (e.g., vulnerability
> detail and/or exploit) should be directly included in the message itself
> (and in plain text), rather than only included by reference to an
> external resource.  Posting links to relevant external resources as well
> is acceptable, but posting only links is not.  Your message should remain
> valuable even with all of the external resources gone."
>
> I've attached a text/plain export of your blog post to this message.
>
> Alexander
