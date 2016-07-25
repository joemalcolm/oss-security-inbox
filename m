X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2052" "Monday" "25" "July" "2016" "11:49:28" "+0200" "=?UTF-8?B?QsOhbGludCBSw6ljemV5?=" "balint@balintreczey.hu" "<CAK0Odpw=eJnFMWzwyoeit1PTGMkVW0NNf0GFc+p0MXLiMXryow@mail.gmail.com>" "62" "Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" nil nil nil "7" "2016072509:49:28" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" (number mark "U       balint@balin Jul 25   62/2052  " thread-indent "\"Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29874 invoked by uid 550); 25 Jul 2016 09:50:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29853 invoked from network); 25 Jul 2016 09:49:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=KeLHC0AbIscMmznO/ZuHv6SG34MLQMd+ThErgFql4pc=;
        b=v19mLgYkGlcRiK+Zoi7fPkmWq3sKOtX8LQAUc9IoZDrKbC7H2tEu8e0QTSeIYnmOl+
         Bu/8iPQlT4eTznzkOhiCvXmwRi5Qq7cLsJ+SHVcGXcY8JUxoZ6Zp81DjwO2Ft0MYEwN7
         TFwb+7PthBTNaZM9eC5AvVMZBcwUo4BxTYl9fcmxMvYeZ5V+kxm9pubDt18FSYvAuxE9
         8FmBeZS5Vs5O5EPI9GGEjwZL4CiY3mN3owr808qDVKI/7Zcpw89AHo/jTFjoTrhTf2qu
         yjCS1b1/YEJElj/2PCit6/xUPylerLWx4M6a/sP2pNaes8ajE7N4/sPw3tkrhKkb419R
         4hCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KeLHC0AbIscMmznO/ZuHv6SG34MLQMd+ThErgFql4pc=;
        b=Ssmw1EQckDpn5QjddHtfoq/JHFGQu1QT6GCsYMyIIx9lLzQt4zH+Ed5aQPqKKnd2sN
         UKCyJ3iVonjie2IirCQc0v4f+7mS8A0Ec7Otb2CwiNUpMERBgr3NFchkM0MdOY/eTpa/
         OliD3XJG1bFENUTXe8lmBaV1rjsbLmTNxJ5xqkAa7TFeuNgM5EUNslSYvAETZfMQxZ9z
         3PZd3q3e7nPgHVwolCKfg9q/ejsYl98exBZurgbkQMFzgHoyUbx++YMCRbiGg2DSHXQ3
         z2+1zS99uI03tGHyjP/jt2GXfh2b6rEto1DaprEFrQWMDdlW2jvR7mS/VkIKUDFDep3K
         D7WQ==
X-Gm-Message-State: AEkoousmp3cMuk0zlLAcz6LQaV7bROe597cn74W4daLHnQOMcrZ8v91wFqVJrSFtx/cC3Bhf/Khf4SwuQgSqFg==
X-Received: by 10.159.40.67 with SMTP id c61mr7928027uac.82.1469440187467;
 Mon, 25 Jul 2016 02:49:47 -0700 (PDT)
MIME-Version: 1.0
Sender: rbalint@gmail.com
From: =?UTF-8?B?QsOhbGludCBSw6ljemV5?= <balint@balintreczey.hu>
Date: Mon, 25 Jul 2016 11:49:28 +0200
X-Google-Sender-Auth: ZavP2BOWfPZjIrg0MFx06HOMemg
Message-ID: <CAK0Odpw=eJnFMWzwyoeit1PTGMkVW0NNf0GFc+p0MXLiMXryow@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "Eric W. Biederman" <ebiederm@xmission.com>, 
	Shadow package maintainers <pkg-shadow-devel@lists.alioth.debian.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for
 shadow package

Hi,

While this is not immediately clear from the Shadow homepage the
development continued on GitHub where I have opened two issues
for the two potential security problems:

Incorrect integer handling CVE-2016-6252:
https://github.com/shadow-maint/shadow/issues/27

Potentially unsafe use of getlogin CVE-2016-6251:
https://github.com/shadow-maint/shadow/issues/28

Probably upstream's issue tracker would be the best place
to discuss the fixes in detail. With upstream development
happening on GitHub the pkg-shadow-devel list could host
mostly Debian-packaging releated discussions and probably
not all oss-security subscribers would like to get all the
messages.

Cheers,
Balint

2016-07-25 10:39 GMT+02:00 Sebastian Krahmer <krahmer@suse.com>:
> On Mon, Jul 25, 2016 at 10:03:31AM +0200, Sebastian Krahmer wrote:
>> On Wed, Jul 20, 2016 at 11:48:52PM +0200, Nicolas Fran=C3=A7ois wrote:
>> > Hi,
>> >
>> > The first point looks like a non issue to me.
>> >
>> > getlogin() is used to differentiate users with the same UID.
>> > The result of getlogin() is checked: if it returns a username that do =
not
>> > have the UID returned by getuid(), it will be ignored.
>> >
>> >
>> > Best Regards,
>> > --
>> > Nekral
>>
>> I agree that its not a severe issue. But its dubious code at best.
>> I couldnt even imagine someone would have usernames with different UID's?
>> Maybe such configs should not be encouraged and potential issues with
>> that discussed.
>>
>> My understanding of secure coding is that getlogin() should not
>> be trusted. Having same username with multiple UIDs is also to be avoided
>> IMHO, since its asking for trouble (I dont know if thats some requirement
>> of LSB or POSIX or so?)
>
> Err, sorry. Shared UID, different name (the other way around, thanks Alex=
).
> But then you are open to GID hopping attacks (as also previously
> pointed out) since you actually _do_ rely on getlogin() trust.
>
> Sebastian
>
> --
>
> ~ perl self.pl
> ~ $_=3D'print"\$_=3D\47$_\47;eval"';eval
> ~ krahmer@suse.com - SuSE Security Team
>
