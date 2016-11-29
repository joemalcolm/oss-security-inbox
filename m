X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Tuesday" "29" "November" "2016" "17:22:22" "+0100" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgEX6mxX-4L7i5Qjq=u+b8iPrbSqZmtjXo0X6pG-+TY3hQ@mail.gmail.com>" "19" "Re: [oss-security] Re: CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)" nil nil nil "11" "2016112916:22:22" "[oss-security] Re: CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)" (number mark "U       geissert@deb Nov 29   19/550   " thread-indent "\"Re: [oss-security] Re: CVE request: openjpeg: incorrect fix for CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)\"\n") "<20161006011626.GC5763@sin.redhat.com>" ("<20160927012359.GA30247@sin.redhat.com>" "<CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>" "<20161006011255.GB5763@sin.redhat.com>" "<20161006011626.GC5763@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28370 invoked by uid 550); 29 Nov 2016 16:22:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28349 invoked from network); 29 Nov 2016 16:22:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=wS4hbYy9WuE3qkS+jfVsXRClfGboMwmdWjHQp4Ak3Zs=;
        b=N0CRhG5IirzGJp9VHmBHpAEYqARsvmvpoV/g89G26QJWgnMsZ+1i9hkF6fEjOyAHB6
         ZtF0t2NnU97bQvNwsDfQDE52h+zCZob+sDpmgnMGDp2E4XWMJyu8T2fyCMjPeHaki9t3
         IsILyGApdy40fA1M15sZ6W3dL3rWMd8eKO+fhnIoYZw0/3xp9WH6d1cEnEQ+txWOsl+4
         qjfvkA264qfrd1QM/oSTEl7ZIFIK6zyz2p4W1lY5jp6HHZbf05Rf9WHj5hVzBJGUKHhl
         7gxZQnJTN/x1bZE5rxY/DmimvOvI1utceY2oY5ls1co4wx+F99H8rlwIf2WEXXM20It0
         zVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=wS4hbYy9WuE3qkS+jfVsXRClfGboMwmdWjHQp4Ak3Zs=;
        b=U4TR6kgBxuf9c83AJcT6FuWtschUsBsyVseTqOWdC6XRnUaTLUpd1b49GmvlJ6Vysn
         lBAvSEYlB5t4NkxNhd2e8Y9ocefJDLhFHt2q2hMdKtquPrJR0o8u732xLKwVsUpMJarK
         ETYVRMbyqrBTVr03mq4MdjPIvr1QFrALk6+pdvFod2ebpmXbLYdbcH8lMbmw8NXKsaik
         6XGRWoTKRn8S25vrIXfpyv4lvCBL5fQTnzmshP21QniaC73aqEaCU9DXfrqoWEQkhaZ2
         TBcJzr3KkbotesqGmk8UmGZFDE7CVCjJcdqFpt45tPGzZn7opMWV02t1722AHPrgCy7/
         dewQ==
X-Gm-Message-State: AKaTC02kcmo20Rvst9rH4ecTbJIEUNx9lL2h+V/JsZF/Urqg3zwssuedEnYNRhnFBvcA939OzjmNyLmosi1bFA==
X-Received: by 10.28.140.136 with SMTP id o130mr25925999wmd.76.1480436563481;
 Tue, 29 Nov 2016 08:22:43 -0800 (PST)
MIME-Version: 1.0
Sender: atomo64@gmail.com
In-Reply-To: <20161006011626.GC5763@sin.redhat.com>
References: <20160927012359.GA30247@sin.redhat.com> <CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>
 <20161006011255.GB5763@sin.redhat.com> <20161006011626.GC5763@sin.redhat.com>
From: Raphael Geissert <geissert@debian.org>
Date: Tue, 29 Nov 2016 17:22:22 +0100
X-Google-Sender-Auth: NzK_6COlpDscNHVs-KuBzDqfGpo
Message-ID: <CAA7hUgEX6mxX-4L7i5Qjq=u+b8iPrbSqZmtjXo0X6pG-+TY3hQ@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: CVE request: openjpeg: incorrect fix for
 CVE-2013-6045 (was Re: openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045)

Mitre,

On 6 October 2016 at 03:16, Doran Moppert <dmoppert@redhat.com> wrote:
>> > Do you specifically know of a distribution that still has that patch?
>>
>> Red Hat Enterprise Linux and Ubuntu LTS seem to be still carrying the
>> original patch.  Possibly others, but these are the only ones I've
>> identified.
>
> I should have included this reference:
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1382202

It appears that this request fell through the cracks?

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
