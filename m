X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Thursday" "16" "March" "2017" "13:17:13" "+0100" "Peter Korsgaard" "peter@korsgaard.com" "<877f3p8lh2.fsf@dell.be.48ers.dk>" "18" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031612:17:13" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       peter@korsga Mar 16   18/590   " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<20170316100821.GH759@scully.more-magic.net>" ("<20170315224749.GG759@scully.more-magic.net>" "<1489656677.3059.3.camel@redhat.com>" "<20170316100821.GH759@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9628 invoked by uid 550); 16 Mar 2017 12:42:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21506 invoked from network); 16 Mar 2017 12:17:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=hua3luea5aqcEjlFJ0th50IIQHCXeF0tAwzLj5kscVk=;
        b=RLraZjPbPCgDaiFx1+rb2fjdPN/aCre3g2+BuE1lR1VpKr0ubgc4S7WjEYiWdqI0K4
         SkG27zK83jaoM1KbVrEV/mX1IxmcaJr1Sd0WkqSPYOYd0AOA1UN1MWrLcmMuHC19FiRu
         lPS4k0PhzGYY0wJpDzWuQ/O0A3FQCHfbfuWtA35qOsVcoYTsw6zQfGZ93KMhHmsztopV
         AsylEuPhBf7GT/LLSitYuSeRubMmGz1VjvmVyIP8d/UhHKxxxLIo1JpnLJmbR16//fMu
         xa1PLaTeVcjn9aniUfD+8G/zfC9j66/Vpi7FJWA4WJFagmrtuewk2tjJYrTlKDucM+nu
         +7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=hua3luea5aqcEjlFJ0th50IIQHCXeF0tAwzLj5kscVk=;
        b=bQXNc1AwlSIqMPlnotblhocOGXOooqQHV4ne8zQJlzkSh2+EI6D/9nDfbYkFEzrbSG
         Ty+nixPlvsZ1x/ez/THzeGWHZDE5KSTGwhDg0NfTpFc13uKK47fvmF5lqklQ4Nf0B5UL
         RZ9oqFi0+GKxSQBBav4PpjnOWnNGdq+6UoqVluSwNoKQFXzt5OD/6xA2Y+/pyKY76fhp
         GMqJEUUpzv5WsPzWESuDRSMZRtsfVF12IkYYRlmmgINrbn7J9iYGo3usy4QUudiwI87o
         Cta0DhpjEH+kK/PAt2+UzfDRcQH5UtlEgyAktoN1ILSw8wsBYTvJzxthOB8wVlrBH2II
         1flw==
X-Gm-Message-State: AFeK/H0/W8ieznI/HpSb/etjm4ZD2PBzR1SI7/3vEvyfQs9Se3zIs+bMRyrl8rvfQ2Xonw==
X-Received: by 10.28.24.6 with SMTP id 6mr7948794wmy.142.1489666635919;
        Thu, 16 Mar 2017 05:17:15 -0700 (PDT)
Sender: Peter Korsgaard <jacmet@gmail.com>
From: Peter Korsgaard <peter@korsgaard.com>
To: Adam Maris <amaris@redhat.com>
Cc: oss-security@lists.openwall.com
References: <20170315224749.GG759@scully.more-magic.net>
	<1489656677.3059.3.camel@redhat.com>
	<20170316100821.GH759@scully.more-magic.net>
Date: Thu, 16 Mar 2017 13:17:13 +0100
In-Reply-To: <20170316100821.GH759@scully.more-magic.net> (Peter Bex's message
	of "Thu, 16 Mar 2017 11:08:21 +0100")
Message-ID: <877f3p8lh2.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme

>>>>> "Peter" =3D=3D Peter Bex <peter@more-magic.net> writes:

 > On Thu, Mar 16, 2017 at 10:31:17AM +0100, Adam Maris wrote:
 >> Hi Peter,
 >>=20
 >> oss-security mailing is no longer a place for requesting CVEs. Please,
 >> request CVE from MITRE via=C2=A0https://cveform.mitre.org/=C2=A0or also=
 possibly
 >> from DWF project via=C2=A0http://iwantacve.org/

 > Oh yeah, I forgot about that.  I've filled out the form, and I hope I've
 > done this correctly.

Please don't forget to forward the form details to this list once a CVE
has been assigned. Thanks.

--=20
Bye, Peter Korsgaard
