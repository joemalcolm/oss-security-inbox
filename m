X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2833" "Tuesday" "1" "August" "2017" "12:14:33" "-0600" "Kurt Seifried" "kseifrie@redhat.com" "<210A80CE-06EC-41A2-8C8A-3ABDE2BBDD9B@redhat.com>" "79" "Re: [oss-security] Syslog forwarding with IP spoofing" nil nil nil "8" "2017080118:14:33" "[oss-security] Syslog forwarding with IP spoofing" (number mark "U       kseifrie@red Aug  1   79/2833  " thread-indent "\"Re: [oss-security] Syslog forwarding with IP spoofing\"\n") "<DM5PR11MB1643FD13FC37124F61525567AAB30@DM5PR11MB1643.namprd11.prod.outlook.com>" ("<1501597640.407871.9894.30815@mail.rambler.ru>" "<1501597646.744346.23695.25373@mail.rambler.ru>" "<20170801170637.GA15254@openwall.com>" "<DM5PR11MB1643FD13FC37124F61525567AAB30@DM5PR11MB1643.namprd11.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15481 invoked by uid 550); 1 Aug 2017 18:14:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15451 invoked from network); 1 Aug 2017 18:14:47 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=c05advMr4hKjQ435GSn8QMKPqD+7b/U4C6ObViU7DGQ=;
        b=nkCzx+iAUeNI2ZFKCBCf5M9MqicB8fQix8fptRquWrGx59xX4ags3n+AHt287qyY/z
         xC9worVqsg4dj+WU/rX1hnxsYrhfXq/ANYxIX0JY8SKoKdDkMPRsuTq4tJ2BQIi98zJ1
         o5vU1VrptNhTVvPV95umjEKDnHjx/R1AB0dfOv7ePgP3EhIttUBhhkjBSsCfTj16peUC
         qINplTFQtC42ntg1Mr1iY9WHfLSc+GIt7ct+MCEK5yM/uXRSfmZmLCkRUuEr+PYyH5Dj
         tgmVLyICIjGm/QVxIY1hew4bZdY/YjcNxPeJw5HmRflncvTvGjmK5xSQ0RGvIatNv9lo
         yTYg==
X-Gm-Message-State: AIVw110DsHkmgOzXtEri6lLKp+mNggqkjc8UTwg1+DZ/iGZV89C2TTJF
	LdyyUmQ5N4UnGAlfUH1y1A==
X-Received: by 10.84.141.1 with SMTP id 1mr22747327plu.141.1501611275428;
        Tue, 01 Aug 2017 11:14:35 -0700 (PDT)
From: Kurt Seifried <kseifrie@redhat.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Aug 2017 12:14:33 -0600
Message-Id: <210A80CE-06EC-41A2-8C8A-3ABDE2BBDD9B@redhat.com>
References: <1501597640.407871.9894.30815@mail.rambler.ru> <1501597646.744346.23695.25373@mail.rambler.ru> <20170801170637.GA15254@openwall.com> <DM5PR11MB1643FD13FC37124F61525567AAB30@DM5PR11MB1643.namprd11.prod.outlook.com>
In-Reply-To: <DM5PR11MB1643FD13FC37124F61525567AAB30@DM5PR11MB1643.namprd11.prod.outlook.com>
To: oss-security@lists.openwall.com
X-Mailer: iPhone Mail (14G60)
Subject: Re: [oss-security] Syslog forwarding with IP spoofing

I think messages like this may lead to a lot of "buy product X" (which we j=
ust had now....). I'd rather the list not become a commercial free for all.


-Kurt





> On Aug 1, 2017, at 11:33, Mikhail Utin <mikhailutin@hotmail.com> wrote:
>=20
> Hello,
>=20
> Indeed, it is our of this list topic.
>=20
> Options for The Alexander:
>=20
>  1.  Normal SIEM will work with syslog as it is widely supported format a=
nd will know where the log comes from by data source configuration.
>  2.  The "open source tool" is Perl, you can create any log format from a=
ny data sources and then send to SIEM.
>  3.  Talk to SIEM tech support. Good vendor will advise. If you do not ha=
ve SIEM, buy LogRhythm. That should work. Freeware OSSIM I would bet will w=
ork with syslog as well.
>  4.  Alexander can email me mikhailutin@hotmail.com for details.
>=20
>=20
> Mikhail Utin, CISSP
>=20
>=20
> ________________________________
> From: Solar Designer <solar@openwall.com>
> Sent: Tuesday, August 1, 2017 13:06
> To: =D0=90=D0=BB=D0=B5=D0=BA=D1=81=D0=B0=D0=BD=D0=B4=D1=80 =D0=9D=D0=BE=
=D1=81=D0=B0=D1=80=D0=B5=D0=B2
> Cc: oss-security@lists.openwall.com
> Subject: Re: [oss-security] Syslog forwarding with IP spoofing
>=20
> Hi all,
>=20
>> On Tue, Aug 01, 2017 at 05:27:26PM +0300, =D0=90=D0=BB=D0=B5=D0=BA=D1=81=
=D0=B0=D0=BD=D0=B4=D1=80 =D0=9D=D0=BE=D1=81=D0=B0=D1=80=D0=B5=D0=B2 wrote:
>> I need to recive syslog messages, filter them and send them forward to t=
he
>> SIEM.
>>=20
>> Also HOST field is not represented in syslog, so i need to spoof IP of
>> forwarding
>> packets to bind messages recived by SIEM to it's original source IP.
>>=20
>> If i will try to add some marks to syslog message, I will need to overri=
de
>> parsers for each syslog source type, so it seems like abad idea.
>>=20
>> Is there any open source tool for that task?
>=20
> Somehow we almost didn't have this sort of messages - someone seeking an
> open source security tool - sent in here so far.  Do we want them in
> here going forward?  The current list content guidelines do not address
> this possibility, as it certainly wasn't the purpose of the oss-security
> list so far.  Is there another mailing list where the above message
> would have been more appropriate?
>=20
> http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-con=
tent-guidelines
> mailing-lists:oss-security [OSS-Security]<http://oss-security.openwall.or=
g/wiki/mailing-lists/oss-security#list-content-guidelines>
> oss-security.openwall.org
> The purpose of the Open Source Security (oss-security) group is to encour=
age public discussion of security flaws, concepts, and practices in the Ope=
n Source community.
>=20
>=20
>=20
> Meanwhile, please feel free to address the actual question about the
> tool.  (I don't know of such a tool.)
>=20
> Alexander
