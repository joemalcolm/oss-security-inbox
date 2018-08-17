X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3016" "Friday" "17" "August" "2018" "23:02:08" "+0200" "Dariusz Tytko" "dariusz.tytko@securitum.pl" "<17fa2b2d-93c6-4153-5d7d-835a65ecc047@securitum.pl>" "80" "Re: [oss-security] OpenSSH Username Enumeration" nil nil nil "8" "2018081721:02:08" "[oss-security] OpenSSH Username Enumeration" (number mark "U       dariusz.tytk Aug 17   80/3016  " thread-indent "\"Re: [oss-security] OpenSSH Username Enumeration\"\n") "<20180817183154.GA18661@eldamar.local>" ("<20180815160558.GA23020@localhost.localdomain>" "<20180817183154.GA18661@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20210 invoked by uid 550); 17 Aug 2018 21:04:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19508 invoked from network); 17 Aug 2018 21:02:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=securitum-pl.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=xP35Rh6gBBXZ7tyb+9nGzktU1uyI7Cr6rhVrPbRFx3U=;
        b=r5LS3AYj+fwjPsm6Dqt04HOyxqZ3Y5AiWIYqnJhvMlJ1BkCnKSgldqfryX5T3qjK/V
         5pY5jBDrLo4Axs1zhXZ4NTa9W/fqk/ECj33GCWXbtVR6IuONGyah+DDY5WIbuIXsAsl3
         K3M3EFSoRrU2893PUR1/0WdykWetl6/omvqyJZ5+0fjP+Ael+40pzLQHAwotthdaantr
         7dzr5orUv/mOlR7wuoLZ2Frq00JJiisdxZyCGRwn5RYs9c6qgYplLeZ3lOmf3xWRhKCG
         3BASnOSGHUz7c+DpjTKmHfxykd/4gnkLx1OkST/9fLg8BbyVubZYRYW3y7+ITx4OYTds
         M/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=xP35Rh6gBBXZ7tyb+9nGzktU1uyI7Cr6rhVrPbRFx3U=;
        b=WC3pleXylIgz4xfJ61CdqttTyHb0LdBnHKISlV2Aas2Z9JoCEMJlyhtJxEIlJg5fLb
         x+dR3GLmrMKatJDt/IdaIDGfVWW81yYld4PetvPmhEr6hkrl1nsMksNtxldKAZDDldrW
         4LSDWJclSO5wvNsFRMw+WSMkXytSpOS1zfj+hsMGqzCg+ttdUAvJDLgubOquBg4F1906
         25K+VgNpakz32PrYoU9G6p4xwDBPKgsZjB6GUrNzzaCdLf9ELmJi/IO0/+oVwzDuPHkX
         jAMdHvS0cyZOse7lL5tVKIu6V32cV1VSLLyAfBRRrk+GYBkmszTNmpeD4aLDD9FMII6Z
         ctkA==
X-Gm-Message-State: AOUpUlH39zdftmm+aL2KiC44DWleFQhD+xR4v6DflnDbRjDdORZhSb+h
	X+aBcuwDm7cDG3uh4k4U1e43DPpF5DQ=
X-Google-Smtp-Source: AA+uWPzv5q57JolfL8JDXfWGowlKOoYcQhhvGlpLiB/fe8EVO5Bv60EP5ol6t74BzXZALJxzUtz/Hw==
X-Received: by 2002:a2e:9d45:: with SMTP id y5-v6mr26513032ljj.136.1534539728593;
        Fri, 17 Aug 2018 14:02:08 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <20180815160558.GA23020@localhost.localdomain>
 <20180817183154.GA18661@eldamar.local>
From: Dariusz Tytko <dariusz.tytko@securitum.pl>
Openpgp: preference=signencrypt
Autocrypt: addr=dariusz.tytko@securitum.pl; keydata=
 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
 oyszzENXGpK3fRjs5dMrkQ==
Message-ID: <17fa2b2d-93c6-4153-5d7d-835a65ecc047@securitum.pl>
Date: Fri, 17 Aug 2018 23:02:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180817183154.GA18661@eldamar.local>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: pl
Subject: Re: [oss-security] OpenSSH Username Enumeration

Hi,

We have reported this bug on 16th July 2018. Publication of the write-up
is waiting for the official patch.

W dniu 17.08.2018 o=C2=A020:31, Salvatore Bonaccorso pisze:
> Hi,
>
> On Wed, Aug 15, 2018 at 09:05:58AM -0700, Qualys Security Advisory wrote:
>> Hi all,
>>
>> We sent the following email to openssh@openssh.com and
>> distros@vs.openwall.org about an hour ago, and it was decided that we
>> should send it to oss-security@lists.openwall.com right away (as far as
>> we know, no CVE has been assigned to this issue yet):
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> While reviewing the latest OpenSSH commits, we stumbled across:
>>
>> https://github.com/openbsd/src/commit/779974d35b4859c07bc3cb8a12c74b43b0=
a7d1e0
>>
>> Date:   Tue Jul 31 03:10:27 2018 +0000
>>     delay bailout for invalid authenticating user until after the packet
>>     containing the request has been fully parsed. Reported by Dariusz Ty=
tko
>>     and Michal Sajdak; ok deraadt
>>
>> We realized that without this patch, a remote attacker can easily test
>> whether a certain user exists or not (username enumeration) on a target
>> OpenSSH server:
>>
>>   87 static int
>>   88 userauth_pubkey(struct ssh *ssh)
>>   89 {
>>  ...
>>  101         if (!authctxt->valid) {
>>  102                 debug2("%s: disabled because of invalid user", __fu=
nc__);
>>  103                 return 0;
>>  104         }
>>  105         if ((r =3D sshpkt_get_u8(ssh, &have_sig)) !=3D 0 ||
>>  106             (r =3D sshpkt_get_cstring(ssh, &pkalg, NULL)) !=3D 0 ||
>>  107             (r =3D sshpkt_get_string(ssh, &pkblob, &blen)) !=3D 0)
>>  108                 fatal("%s: parse request failed: %s", __func__, ssh=
_err(r));
>>
>> The attacker can try to authenticate a user with a malformed packet (for
>> example, a truncated packet), and:
>>
>> - if the user is invalid (it does not exist), then userauth_pubkey()
>>   returns immediately, and the server sends an SSH2_MSG_USERAUTH_FAILURE
>>   to the attacker;
>>
>> - if the user is valid (it exists), then sshpkt_get_u8() fails, and the
>>   server calls fatal() and closes its connection to the attacker.
>>
>> We believe that this issue warrants a CVE; it affects all operating
>> systems, all OpenSSH versions (we went back as far as OpenSSH 2.3.0,
>> released in November 2000), and is easier to exploit than previous
>> OpenSSH username enumerations (which were all timing attacks):
>>
>> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2003-0190
>> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2006-5229
>> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-6210
> This new issue got assigned CVE-2018-15473 by MITRE.
>
> Regards,
> Salvatore

--=20
Dariusz Tytko

securitum.pl - bezpiecze=C5=84stwo system=C3=B3w IT.
sekurak.pl   - piszemy o bezpiecze=C5=84stwie.


