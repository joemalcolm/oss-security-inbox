X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1775" "Friday" "3" "April" "2015" "11:54:01" "+0200" "D.S. Ljungmark" "ljungmark@modio.se" "<CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>" "61" "Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" nil nil nil "4" "2015040309:54:01" "[oss-security] CVE Request : IPv6 Hop limit lowering via RA messages" (number mark "        ljungmark@mo Apr  3   61/1775  " thread-indent "\"Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages\"\n") "<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>" ("<CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>" "<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>" "<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17938 invoked by uid 550); 3 Apr 2015 09:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17918 invoked from network); 3 Apr 2015 09:54:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=KTF0xwZrEgIVvNeHlB9fXgiEmVevYWiW//A3lq9kU2U=;
        b=gZMsneNb0Kgdgg9ttZHyITnjiubrt+h92r01Zk5xyCZMg+qKdTrjPxqE9q9aMxVrlh
         Lr8drI/Aq0UGcfd0fBGwmA0uvpBT3uiACtbJFlraa9u9FKoBdX0SSFROJeXD3Xt9vWYJ
         xMT8yonRDpCbu7ZFBnaYC4aTHpxowmEBdVIkNmyI9WqbIPX0AqG/RMn3oQEHEiO9g6uR
         63u6BJj8ijr1e74FrWzSEMClpGCBUNOC6vJGQ/y/NQp+C3ksToU2WK+xNsI/8/470C1Y
         5DPrNXznS0OfNMpkbLtI15XhWt0TrbwlENlwVfJ+hJieW8sMZGwzBOYEINr7gX9xF6ud
         6r/g==
X-Gm-Message-State: ALoCoQmrUY8aXarN+Jy578OY4WUsubj5LGp7Ndenr0uvnsC7sH+DVTyqrxhDmFdOwblf05iAHLGW
MIME-Version: 1.0
X-Received: by 10.182.125.130 with SMTP id mq2mr2036134obb.52.1428054841071;
 Fri, 03 Apr 2015 02:54:01 -0700 (PDT)
In-Reply-To: <942E0C08-E883-429E-9F27-22715C00B684@netgate.com>
References: <CAO0vwOXOPSGb8xWiutn+r+rXhSQc3SwC8-S2bkpRZuRAvDOyHw@mail.gmail.com>
	<CAF6rxgk6e1rT3prS3SS4FthshnVQdSrrE+bB65ps6Tx30UznAA@mail.gmail.com>
	<942E0C08-E883-429E-9F27-22715C00B684@netgate.com>
Message-ID: <CAO0vwOV33zHW=z4FDHq91yX5UHxnDKtXnzqzkYCrR+koxh1d9g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Eitan Adler <lists@eitanadler.com>, FreeBSD Security Team <secteam@freebsd.org>, 
	"freebsd-net@freebsd.org" <net@freebsd.org>, oss-security@lists.openwall.com
Date: Fri, 3 Apr 2015 11:54:01 +0200
From: "D.S. Ljungmark" <ljungmark@modio.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request : IPv6 Hop limit lowering via RA messages
To: Jim Thompson <jim@netgate.com>

On Fri, Apr 3, 2015 at 6:06 AM, Jim Thompson <jim@netgate.com> wrote:
> have you considered that there might not be a relevant patch because Free=
BSD=E2=80=99s implementation isn=E2=80=99t affected?

sys/netinet6/nd6_rtr.c

    300         if (nd_ra->nd_ra_curhoplimit)
    301                 ndi->chlim =3D nd_ra->nd_ra_curhoplimit;

The only "OUT" in that function I see are tests for:
  Not accepting RA
  hoplimit on current packet !=3D 255
  not link-local
  No extended ipv6 header


Based on previous testing ( early March 2015), and reading of the
source, I say that FreeBSD is vulnerable.


Regards,
  D.S. Ljungmark


>
> Jim
>
>> On Apr 2, 2015, at 9:15 PM, Eitan Adler <lists@eitanadler.com> wrote:
>>
>> + FreeBSD lists since I haven't seen any relevant patches (although I
>> might have missed them).
>>
>> ---------- Forwarded message ----------
>> From: D.S. Ljungmark <ljungmark@modio.se>
>> Date: 2 April 2015 at 10:19
>> Subject: [oss-security] CVE Request : IPv6 Hop limit lowering via RA mes=
sages
>> To: oss-security@lists.openwall.com
>>
>>
>> An unprivileged user on a local network can use IPv6 Neighbour
>> Discovery ICMP to broadcast a non-route with a low hop limit, this
>> causing machines to lower the hop limit on existing IPv6 routes.
>>
>> Linux Patch: http://www.spinics.net/lists/netdev/msg322361.html
>> Redhat bugzilla: https://bugzilla.redhat.com/show_bug.cgi?id=3D1203712
>>
>> Projects impacted:  Linux kernel,  NetworkManager, FreeBSD Kernel
>>
>>
>> Regards,
>>  D.S. Ljungmark
>>
>>
>> --
>> Eitan Adler
>> _______________________________________________
>> freebsd-net@freebsd.org mailing list
>> http://lists.freebsd.org/mailman/listinfo/freebsd-net
>> To unsubscribe, send any mail to "freebsd-net-unsubscribe@freebsd.org"
>
