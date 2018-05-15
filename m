X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4595" "Monday" "14" "May" "2018" "21:04:58" "-0700" "Bryan Pendleton" "bpendleton.derby@gmail.com" "<CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>" "108" "Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" nil nil nil "5" "2018051504:04:58" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" (number mark "U       bpendleton.d May 14  108/4595  " thread-indent "\"Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability\"\n") "<20180514145244.64c73b08@redhat.com>" ("<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>" "<20180514145244.64c73b08@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5337 invoked by uid 550); 15 May 2018 11:59:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22446 invoked from network); 15 May 2018 04:05:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=faIorWfQVUoOiRQRGSIcRO7iB0DnJSHd5kVDUBfTnN4=;
        b=JjfrkdwuNaDb6Iob7dK5Qco4QjAd2jBfOfVeZz/sbe0LxIJ6SxeLF0s7k5sM40d1Un
         WUxxf2bOnYOzA9HBTcAhe2PI9Dl3nxQYg3KBDqt6WYmtRWogITfaSjuN3wRc/b8wFZ5T
         5dQr5gUy/KphQJNB0JB9jYqdoRwcOqaCLmP+G5b78mrqD7qrrkLnV0D9tC0/ljUu6kPr
         coDfmAUs+VhSvgzMtNNTkfwIFxna/gjF8mCGTCidrSaYGWiYctAcC8sm1L6xZ6ML0BCU
         67/PJkgSmMFKDTRJncMn7wzo/vQSOtbvdNGFiOhzXhGH3+gDbuYdiOLzplCCUcPsdBT8
         j5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=faIorWfQVUoOiRQRGSIcRO7iB0DnJSHd5kVDUBfTnN4=;
        b=bBYy7DAnxdBfZ5ZxT7KRVwbW7qbPLNYr+WmYrojdMyeKZaFBWYQWrg3IM87HH+AYuj
         i3WoHFtciLekSAmAdsU0wJ4buGCtFuy44L8er/JVkpp1hOZOz1WdFxMsXg8kL9ju5RjK
         qMIGH3jpZYgX2C1DSQ+PSkT0OrUfjZG7faRqykb0nvYqGTDbzMK12HueF3OK9XxxKmmg
         VmV+9bdOjHRm1oiCTOsF2lix+ZyIlNeHJd93sihG5qVrGHfGvcWduInRoeBnIOFVZjYY
         rWrVm8x7iTYLzTqB9mee2eWDdqtsqlW/+WkUcAnIsMW3hGAMdlDNMnefM6aSMcaqpZvj
         0HFQ==
X-Gm-Message-State: ALKqPwc6P13xFwhyeQbJf31v49y8VauWJNvUjirrZEMxC+D9DTrSqQwb
	xBHSsR8PpAwDCxE2xIhvYn69Xv2JpbYODJuIYok=
X-Google-Smtp-Source: AB8JxZp9UrF4p+Jv/LihrV6XKHzJTqRTupPO7VweiTtdbmN+qkMHtLWgeVlynGg7RkQZf73794xFyKyRGuX/1jk5Ejs=
X-Received: by 2002:a9f:3c51:: with SMTP id w17-v6mr14453911uah.103.1526357098671;
 Mon, 14 May 2018 21:04:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180514145244.64c73b08@redhat.com>
References: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
 <20180514145244.64c73b08@redhat.com>
From: Bryan Pendleton <bpendleton.derby@gmail.com>
Date: Mon, 14 May 2018 21:04:58 -0700
Message-ID: <CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>
To: Tomas Hoger <thoger@redhat.com>
Cc: oss-security@lists.openwall.com, security <security@apache.org>, 
	gregory draperi <gregory.draperi@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby
 externally-controlled input vulnerability

Hi Tomas, thank you for getting in touch, and for the excellent questions.

I think the problem here is primarily my lack of skill in clearly writing
disclosure information about vulnerabilities, so let me try to do my best
to clarify.

Indeed, allowing the Derby server to open an untrusted database is
of serious concern, and, due to Derby's rich extensibility features, can
allow the execution of arbitrary *Java* code directly in Derby. So this
is an important concern.

And yes, you are correct that the selection of 10.3.1.4 as the first
affected release is because the default security policy dates from
that release, and you are also correct that the "ping with arguments"
pre-dates that. We certainly hope that nobody is running such 11-year-old
software any more; if possible, we would really like them to upgrade.

Regarding the question of which fix is the "actual security fix," I find
this a challenging question. In order to exploit the vulnerability, the
ping command must allow the specially crafted request packet, *and*
the security policy must allow the access to the untrusted database.
Closing *either* of those holes is enough to prevent that exploit; we chose
to close *both* of them with the 10.14.2.0 release.

The Derby development team's primary recommendation is that
any Derby Network Server deployed in a production environment
should use an explicitly-developed custom security policy, and not
depend on the default policy; still, the new security policy that is
installed by default by 10.14.2.0 is considerably more secure than
the policy that was previously in place.

I hope this helps. If I have misunderstood the intent of any of your
questions, please let me know.

thanks,

bryan



On Mon, May 14, 2018 at 5:52 AM, Tomas Hoger <thoger@redhat.com> wrote:
> Hi Bryan!
>
> On Sat, 5 May 2018 07:52:08 -0700 Bryan Pendleton wrote:
>
>> CVE-2018-1313: Apache Derby externally-controlled input vulnerability
>>
>> Severity: Important
>>
>> Vendor:
>> The Apache Software Foundation
>>
>> Versions Affected:
>> Derby 10.3.1.4 to 10.14.1.0
>>
>> Description:
>> A specially-crafted network packet can be used to request the Derby
>> Network Server to boot a database whose location and contents are under
>> the user's control. If the Derby Network Server is not running with a
>> Java Security Manager policy file, the attack is successful. If the
>> server is using a policy file, the policy file must permit the
>> database location to be read for the attack to work. The default
>> Derby Network Server policy file distributed with the affected releases
>> includes a permissive policy as the default Network Server policy, which
>> allows the attack to work.
>>
>> Mitigation:
>> Users should specify an explicit security policy file, as described here:
>> http://db.apache.org/derby/docs/10.14/security/csecjavasecurity.html
>>
>> Derby release 10.14.2.0 disallows the specially-crafted network packet,
>> and also modifies the default Derby Network Server policy file to be
>> significantly less permissive (the default file access policy is now
>> limited to the derby.system.home directory and the directory from
>> which the Derby jar files were loaded). It is still recommended that
>> production installations of the Derby Network Server should specify
>> an explicit security policy file.
>>
>> Credit:
>> This issue was discovered by Gr=C3=A9gory Draperi
>
> Can you clarify what upstream considers to be the fix for this issue?
> Some sources such as:
>
> http://www.systemtek.co.uk/2018/05/apache-derby-externally-controlled-inp=
ut-vulnerability-cve-2018-1313/
>
> indicate that the fix is the change to the default security policy,
> i.e. DERBY-6987.  However, the wording above seems to consider that as
> more of an additional hardening fix, and the actual security fix is
> change to handling of the ping command to disallow additional
> arguments, i.e. DERBY-6986.
>
> Related to the above is the question regarding the list of affected
> versions.  Version 10.3.1.4 is listed as the first affected, however
> the "ping with arguments" should pre-date that version, and even
> DERBY-6986 indicates it's old code.  However, 10.3.1.4 seems to be the
> first version to include the default security policy, which may be the
> reason why it's listed as the first affected.
>
> And one more clarification for those of us not familiar with Derby:
> What is the known impact of opening some untrusted database?  Is it
> known to e.g. allow arbitrary code execution directly in Derby?
>
> Thank you!
>
> --
> Tomas Hoger / Red Hat Product Security
