X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1069" "Monday" "26" "February" "2018" "12:13:48" "+0700" "Maxim Solodovnik" "solomax666@gmail.com" "<CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>" "48" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" nil nil nil "2" "2018022605:13:48" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" (number mark "U       solomax666@g Feb 26   48/1069  " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls\"\n") "<CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>" ("<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>" "<CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22187 invoked by uid 550); 26 Feb 2018 12:41:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25891 invoked from network); 26 Feb 2018 05:14:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fgic0kC2FRElN1GXapWJVgys/oV6Kowppl4b6FHzUcw=;
        b=Le8Zlu8JlL/GyxOj5WgKxoQHKcOrJT1KuK1jBbB1EuwRPyRodKGBKrcIVOaWad8UT3
         xcLujLpTUG2RI/7Dm9T1Z5uaaR5FgznR14cjOtH9HA9/q8r8/ILq6WWKd+49Q3p55GQw
         D9CxfFX3mf9RingyEQr7L/kxlowTE5g6o63tieGt54wyXF85y8ySsXTVA3T4v6D/Dyv9
         1up3AebqVpqQBBDCMS086PqCAtSjXIKmlPBdhBeAiLS8HkMV7ipOT9pIx8VT1ppjEZMR
         OTMXgnI+zS+BzIzG14cyJxwPm5HXJ5c++x5+RTzjQLUjMbw49mO9Krzss1+F0X+htMpe
         b5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fgic0kC2FRElN1GXapWJVgys/oV6Kowppl4b6FHzUcw=;
        b=Vd4i15zcrHa4NV/aGcunlqMkkcZIszFodQDQp5LZ7CLOIRd0TTOPhgx5q52d6ywGVf
         fHo9o/2y7qJJ/Vbo3v9F64J5qj/WzYxVOXCGzQb/Qf1FUWpFm2reLGJcCzU9GD20P1es
         nIpvcWaQtNtoPRRyucicXHiwA8r+5SK9tL7cfnKrMkOYpNnMKTXGzISO2beloqHKlE69
         H7ZiOBt8xpEsW6p0iqjQCWUHY4TB5T2Tx5hUqNySJK1FHmt6zq8Zb8VoDVxRa1VbTjL8
         VJDn+gohLmoo3aU4flVBVl5hCCQr77qRrw/McI/Vdu4u0UQOmNxzgtkFmkZWkRezGKoD
         2TZg==
X-Gm-Message-State: APf1xPCtWmObrNxlYYcM466PJu6d+TsV7kuwpOQzUr2LiuNrZNyyq9/Q
	d+Vs2jSZjplDR0RhbsSr+trehdfOD7l9PtZA4z0=
X-Google-Smtp-Source: AG47ELvyeO7qahJaYW9idBrhjQNsYvpq2diUmRDx53livx8Jm1SppSO+jkDH7NNTdNcXjD5dEonI11T9ABqmD9YZgvI=
X-Received: by 10.36.76.69 with SMTP id a66mr11169529itb.148.1519622028501;
 Sun, 25 Feb 2018 21:13:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>
References: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
 <CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>
From: Maxim Solodovnik <solomax666@gmail.com>
Date: Mon, 26 Feb 2018 12:13:48 +0700
Message-ID: <CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>
To: security@openmeetings.apache.org
Cc: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	user-russian@openmeetings.apache.org, Sahil <sdhar@securityinnovation.com>, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient
 Access Controls

I have analyzed the code
Wysiwyg editor was introduced in 3.0.0
and it was vulnerable from the very beginning
So all versions are affected :(

On Mon, Feb 26, 2018 at 12:10 PM, Sahil Dhar
<sdhar@securityinnovation.com> wrote:
> Hi Maxim,
>
>
> I just noticed that there is a typo in the CVE-2018-1286 description, as it
> states that the affected version is 3.0.0. However, the vulnerability was
> reported for 4.0.1 release. Can you please update it?
>
> Thanks,
> ~ Sahil
>
>
>
>
>
>
> On Sun, Feb 25, 2018 at 5:20 PM, Maxim Solodovnik <solomax@apache.org>
> wrote:
>>
>> Severity: Medium
>>
>> Vendor: The Apache Software Foundation
>>
>> Versions Affected: Apache OpenMeetings 3.0.0
>>
>> Description: CRUD operations on privileged users are not password
>> protected allowing an authenticated attacker to deny service for
>> privileged users.
>>
>>
>> The issue was fixed in 4.0.2
>> All users are recommended to upgrade to Apache OpenMeetings 4.0.2
>>
>> Credit: This issue was identified by Sahil Dhar of Security Innovation Inc
>
>



-- 
WBR
Maxim aka solomax
