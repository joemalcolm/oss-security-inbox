X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1532" "Thursday" "3" "December" "2015" "22:24:47" "-0500" "Reinhard Tartler" "siretart@gmail.com" "<CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>" "38" "Re: [oss-security] Re: CVE request for keepassx password database export" nil nil nil "12" "2015120403:24:47" "[oss-security] Re: CVE request for keepassx password database export" (number mark "U       siretart@gma Dec  3   38/1532  " thread-indent "\"Re: [oss-security] Re: CVE request for keepassx password database export\"\n") "<20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>" ("<1448877939.5015.30.camel@debian.org>" "<20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13468 invoked by uid 550); 4 Dec 2015 05:41:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32134 invoked from network); 4 Dec 2015 03:24:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ei3zG0iX5honeU6/4ScMharKy2qx3jid/4MTgErccmE=;
        b=vnzAB7JnscHz2dJmDLX1bFcCUsbnhR0v4XPKFc03yvE3KtivCr4+6+Wv/NU6WwqzLC
         UHi/x9Nqz1Zo7BoRDPJo36nPkfKJBmhAgwju1GSTJstKYytYKpn7O3TeZbq0ljAd80lT
         Q+epHwjLweShzVYCfSIaGbXoeE9HkHzRUpaV3ciwdOCEv2AE9eq1auoip0IzUJPDZi90
         A2YdmWfOD9gliqBJ8V+rbxc1qiu8hXfqAa4Tg6oUDf5uxsZbszIOC7ccWhcowqPa4QsH
         eY+6lGThdWgHusGI+q2Zu6PrJYVfsb7tNkTh7OpQoKPe1lTxFscyh4FaXYJhFwJGmJ2j
         ANPA==
MIME-Version: 1.0
X-Received: by 10.31.179.80 with SMTP id c77mr7595737vkf.50.1449199487911;
 Thu, 03 Dec 2015 19:24:47 -0800 (PST)
In-Reply-To: <20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>
References: <1448877939.5015.30.camel@debian.org>
	<20151130220422.09CD46C0211@smtpvmsrv1.mitre.org>
Date: Thu, 3 Dec 2015 22:24:47 -0500
Message-ID: <CAJ0cceZmWz=hN6je8tu+tFRj=zFtcwG0B8Vyq_iELDJQh+q_ug@mail.gmail.com>
From: Reinhard Tartler <siretart@gmail.com>
To: oss-security@lists.openwall.com
Cc: Yves-Alexis Perez <corsac@debian.org>, cve-assign@mitre.org, dev@keepassx.org, 
	Reinhard Tartler <siretart@tauware.de>, debfx-pkg@fobos.de
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: CVE request for keepassx password database export

On Mon, Nov 30, 2015 at 5:04 PM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> it seems that keepassx 0.4.3 export function are a bit buggy. Starting an
>> export (using File / Export to / KeepassX XML file) and cancelling it leads to
>> KeepassX saving a cleartext XML file in ~/.xml without any warning.
>>
>> This was reported privately to the Debian security team today, but it was
>> actually reported publicly earlier in the Debian BTS. Unfortunately the
>> maintainer didn't acknowledge the bug or forwarded it upstream, apparently.
>>
>> It's not a terrible bug per se because leaking a user password file on purpose
>> would still require a lot of social engineering skills, but it still look like
>> it should get a CVE (an user explicitly cancelling the export surely doesn't
>> expect its passwords to be there in a hidden file.
>
>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=791858
>
>>> canceling export operation creates cleartext copy of all of the user's
>>> KeePassX password database entries
>
>>> with Debian's default umask, the file is even world-readable in
>>> multiuser machines
>
> Use CVE-2015-8378.


http://anonscm.debian.org/cgit/collab-maint/keepassx.git/commit/?id=b3c9028db8ec3b8752ff47717ffc792d755c1294
should fix the issue.

Felix, I've imported the package from bzr to git and put it to
collab-maint. I have not checked whether this issue also affects the
2.0 branch. Maybe this issue would make a good case for a 0.4.4
release?

Best,
Reinhard
