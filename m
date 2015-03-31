X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1193" "Tuesday" "31" "March" "2015" "09:32:25" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC75pwsZfO4WpFiDCjqNXAA-y2C_S4yrrKci=7Rw6S8OSA@mail.gmail.com>" "40" "Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "3" "2015033106:32:25" "[oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        kaplanlior@g Mar 31   40/1193  " thread-indent "\"Re: [oss-security] CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<20150330224953.GC6329@boyd>" ("<550C769F.5010801@truel.it>" "<20150330234201.410bcbb8@redhat.com>" "<20150330224953.GC6329@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20372 invoked by uid 550); 31 Mar 2015 06:42:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15552 invoked from network); 31 Mar 2015 06:32:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ttGtRpZCS+9TbV6SfgD09i/+YIhGdajR6cxa3N655cg=;
        b=tMfmsD6LeapeO9PZbjuQC5LBUPIj00xg4RdK9X1L1HHQIaxUAF5VycRqqQCz4M4Qp2
         aMK1eOkGf0LCjMW9+wQrzTOMQ/MDrt5j3+ssO7PZXx3RKvNKbCWl3e2Z+p+DEXnoLvoe
         HE4DIg66MFCa5Zt3qiRq6hZ4zcsIBNqIYWcDf+UVFXrOVkLuatX7llhTb6xPy2L283nk
         /OZXTIEg7f9dos2T/QQOXKNh78YqT0bp/30XhK5TXz2Wst8GMViLhvwIP1e66qanF1YX
         sANDt+I8xJgZI0oYj9+GXyyKUyq3y+URPH6Iy6V0MACMApgrz0uPKM/d/abwYEbYKyyO
         asTg==
MIME-Version: 1.0
X-Received: by 10.60.123.83 with SMTP id ly19mr30895733oeb.8.1427783545097;
 Mon, 30 Mar 2015 23:32:25 -0700 (PDT)
In-Reply-To: <20150330224953.GC6329@boyd>
References: <550C769F.5010801@truel.it>
	<20150330234201.410bcbb8@redhat.com>
	<20150330224953.GC6329@boyd>
Message-ID: <CAEsznC75pwsZfO4WpFiDCjqNXAA-y2C_S4yrrKci=7Rw6S8OSA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b5d549805920f05128fc317
Cc: oss-security@lists.openwall.com, "security@php.net" <security@php.net>
Date: Tue, 31 Mar 2015 09:32:25 +0300
From: Lior Kaplan <kaplanlior@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: PHP SoapClient's __call() type
 confusion through unserialize()
To: Tyler Hicks <tyhicks@canonical.com>

--047d7b5d549805920f05128fc317
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 31, 2015 at 1:49 AM, Tyler Hicks <tyhicks@canonical.com> wrote:

> On 2015-03-30 23:42:01, Tomas Hoger wrote:
> > On Fri, 20 Mar 2015 20:35:59 +0100 Andrea Palazzo wrote:
> >
> > > I'd like to request a CVE for the PHP Sec Bug #69085.
> > >
> > > Description:
> > > SoapClient's __call() method is prone to a type confusion
> > > vulnerability which can be used to gain remote code execution through
> > > unsafe unserialize() calls.
> > >
> > > Info:
> > > https://bugs.php.net/bug.php?id=69085
> >
> > There is another unserialize issue fixed in 5.6.7, 5.5.23 and 5.4.39
> > and currently listed on PHP 5 Changelog page:
> >
> > http://php.net/ChangeLog-5.php
> >
> > Fixed bug #68976 (Use After Free Vulnerability in unserialize()).
> (CVE-2015-0231)
> > https://bugs.php.net/68976
>
> I believe that the ChangeLog-5.php page contains a typo since NVD claims
> that CVE-2015-2787 corresponds to PHP bug #68976:
>
>  https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-2787
>
>
We weren't aware of this CVE assignment... Thanks.

The bug & changelog updated.

Kaplan

--047d7b5d549805920f05128fc317--
