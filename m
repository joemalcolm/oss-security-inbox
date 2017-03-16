X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1137" "Thursday" "16" "March" "2017" "22:15:11" "+0100" "Peter Korsgaard" "peter@korsgaard.com" "<87pohgords.fsf@dell.be.48ers.dk>" "31" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031621:15:11" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       peter@korsga Mar 16   31/1137  " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<20170316163421.GI759@scully.more-magic.net>" ("<20170315224749.GG759@scully.more-magic.net>" "<1489656677.3059.3.camel@redhat.com>" "<20170316100821.GH759@scully.more-magic.net>" "<877f3p8lh2.fsf@dell.be.48ers.dk>" "<20170316163421.GI759@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11730 invoked by uid 550); 16 Mar 2017 22:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25724 invoked from network); 16 Mar 2017 21:15:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=vllC2WbJNttlncpTEDtDuPse5QI6H33tfKg9ahELAPM=;
        b=D9epA78eZfiD3IEnUY4Z9xCpE1c9+hEfvJTLnBs41YO0Ax3go08pk+cUJX4dLSjCYS
         mJe85bNiM3ZVs13FnNd0/ReE44fXEBJ0chsjWxo78FL+q8DuSl9/blH6mD7ed92K3ol4
         VwJt1gyVHKDBuS7rla0JcdJJ9rihnDIkOBDB8N1jzTxjK6OXktWrmp4RzLhlIZfWxQor
         R+ogZExBstPWaZ75unhxjTD7OzelzOviURoJxI5t9aDBX8Iq9QnPdojg+WMEFVlKkW6X
         CRImaU4YzIc7BQLAZCERsEKBXzrvbuTrdEptZaxUi715rDTcvMqUscV3+o6iMV11eJQB
         deFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=vllC2WbJNttlncpTEDtDuPse5QI6H33tfKg9ahELAPM=;
        b=MpI3nf1g1MPHpowzJLVxpqPW6rqecoiRieE1DU0xEsrcQENPdCn0eQa/Mw6zmW5MUb
         TDBwnngnST6ZpemRH87CuMzN3Rxd+MPiU2ubPVWDlSvCAiiRbuy8Tv7t9rXBIotrVjEf
         8sLIq7GLj7ZG51o1mNw5Haep4oAWNA60IpDRIHC+JglpN0c5H8lLiYixVrPw4n71SASD
         naN9n07JKlJ1qnnMQQum0o4g7Gx5PvLSHtT0MilXI6wE56X3AAEZALfCWyFA9wWsZZx5
         rUILVQ6BitXaSOumVrv2Aok3KjPH/8DCd8HNunMkVFYQ5+0O4tG0DUOdMT8XmNrT1e4j
         K1VQ==
X-Gm-Message-State: AFeK/H08Qjf+BFqOFmfqiRaDc6XljCjp+c/Kb3mmNxc/vDbxzG3m3k/8hU3xbkyfhq17dw==
X-Received: by 10.223.139.152 with SMTP id o24mr9919412wra.61.1489698913070;
        Thu, 16 Mar 2017 14:15:13 -0700 (PDT)
Sender: Peter Korsgaard <jacmet@gmail.com>
From: Peter Korsgaard <peter@korsgaard.com>
To: oss-security@lists.openwall.com
Cc: Adam Maris <amaris@redhat.com>
References: <20170315224749.GG759@scully.more-magic.net>
	<1489656677.3059.3.camel@redhat.com>
	<20170316100821.GH759@scully.more-magic.net>
	<877f3p8lh2.fsf@dell.be.48ers.dk>
	<20170316163421.GI759@scully.more-magic.net>
Date: Thu, 16 Mar 2017 22:15:11 +0100
In-Reply-To: <20170316163421.GI759@scully.more-magic.net> (Peter Bex's message
	of "Thu, 16 Mar 2017 17:34:21 +0100")
Message-ID: <87pohgords.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme

>>>>> "Peter" =3D=3D Peter Bex <peter@more-magic.net> writes:

 > On Thu, Mar 16, 2017 at 01:17:13PM +0100, Peter Korsgaard wrote:
 >> >>>>> "Peter" =3D=3D Peter Bex <peter@more-magic.net> writes:
 >>=20
 >> > On Thu, Mar 16, 2017 at 10:31:17AM +0100, Adam Maris wrote:
 >> >> Hi Peter,
 >> >>=20
 >> >> oss-security mailing is no longer a place for requesting CVEs. Pleas=
e,
 >> >> request CVE from MITRE via=C2=A0https://cveform.mitre.org/=C2=A0or a=
lso possibly
 >> >> from DWF project via=C2=A0http://iwantacve.org/
 >>=20
 >> > Oh yeah, I forgot about that.  I've filled out the form, and I hope I=
've
 >> > done this correctly.
 >>=20
 >> Please don't forget to forward the form details to this list once a CVE
 >> has been assigned. Thanks.

 > This was assigned CVE-2017-6949.  The form details were in my original
 > mail, but I'll include them here again, though I must say fiddling around
 > with e-mail to forward it is much much more inconvenient than how it used
 > to work:

Thanks, and yes - I agree. The longer term plan is afaik that this
should happen automatically by the MITRE system.

--=20
Bye, Peter Korsgaard
