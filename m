X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["960" "Thursday" "8" "June" "2017" "15:54:27" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<f576c0cf-d5dc-7451-2e89-8c8d74f660a0@redhat.com>" "22" "Re: [oss-security] Is not memory allocation failure a bug?" nil nil nil "6" "2017060821:54:27" "[oss-security] Is not memory allocation failure a bug?" (number mark "U       kseifried@re Jun  8   22/960   " thread-indent "\"Re: [oss-security] Is not memory allocation failure a bug?\"\n") "<CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>" ("<Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>" "<alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>" "<CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13410 invoked by uid 550); 8 Jun 2017 21:54:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13381 invoked from network); 8 Jun 2017 21:54:40 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=/sbm6elROONkIl00E8MIu7gUVZLCKrUE7ZFJv/LJH9k=;
        b=HAF1vjUSb/xpIaB4C/8gVOjHj62ZZvKqNgWTfzNI2TruUgJ1gpmkxxqX6SifCLxfw5
         gRQ0yH2uqRxxD7toP+mElitLVWIVAzKL+n6N3AxcM0Q4PildM5CFMHnd9UAUmlqzE4px
         NG4ZuU99tHXoVqGGrVUyZ27zH9nMEqbCuaq/lOgP+d6P76HVRssJxI6L+UFWvpirvP9i
         WCN3xVBygY9quwQwX3CwNYpmombtHxdfSmCRMEuaLRaDAQgUHf5G9YY7ZBgwW8QCloKE
         o6V4GKQ4eyVJydw+5voBU/Pln4V/8x7U+kl6nqNuxikck9za3Bz7sz93AbMWabffjLUG
         VsAQ==
X-Gm-Message-State: AODbwcCy1jhWC/ZchH4+hpDF9S3tDbLIDDnlv8ESyglup+MqIPliL4Mx
	0n3almcep9+njgeI
X-Received: by 10.107.9.95 with SMTP id j92mr16260104ioi.194.1496958868642;
        Thu, 08 Jun 2017 14:54:28 -0700 (PDT)
To: oss-security@lists.openwall.com, Glenn Randers-Pehrson <glennrp@gmail.com>
References: <Pt-83jwf2wIZWtzGXuxFRphTN3WPGd-CEW7l7azzh3VRvvFOvQ36Hb3UOEfZZl5PO-EPBwFXleTVJC83LFxYJVvPWkXYDRmtM_aUzsp573c=@protonmail.com>
 <alpine.GSO.2.20.1706081553010.6802@scrappy.simplesystems.org>
 <CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Message-ID: <f576c0cf-d5dc-7451-2e89-8c8d74f660a0@redhat.com>
Date: Thu, 8 Jun 2017 15:54:27 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CA+PdXctD5w7vuWEnPaivtdccpBO-cm6bzNQLU_LatPq0eE_8yA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
Subject: Re: [oss-security] Is not memory allocation failure a bug?



On 2017-06-08 3:04 PM, Glenn Randers-Pehrson wrote:
> I just checked a fix for one of those into Firefox yesterday.  It wasn't
> considered a serious problem because the malloc would eventually
> fail safely, but it's better to predict the problem ahead of time and not
> even try to malloc all available memory.
>
> See https://bugzilla.mozilla.org/show_bug.cgi?id=3D1368407
> in which a tiny PNG file tries to claim Gigabytes of memory.
Ok so I tested it, no crash/huge memory thing, but the CPU got maxed and
even when I closed the tab for the image Firefox kept eating CPU, I
wasn't able to close Firefox, had to use the kill command (which worked
fine) so this clearly falls into the DoS camp and may need a CVE, has
Mozilla commented on why they have elected to NOT give it a CVE?

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


