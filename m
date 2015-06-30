X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1786" "Tuesday" "30" "June" "2015" "18:29:07" "+0200" "0pc0deFR" "0pc0defr@gmail.com" "<CAN6thH5sEEkEL4Y7npWs1z+K1wOHRTW7YuuHwr1VCm0rh5BUkw@mail.gmail.com>" "51" "Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063016:29:07" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        0pc0defr@gma Jun 30   51/1786  " thread-indent "\"Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") "<5592A1DB.1000409@gmail.com>" ("<55923253.8020902@deusen.co.uk>" "<55929D7F.3050805@gmail.com>" "<55929F2D.3020802@redhat.com>" "<5592A1DB.1000409@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32682 invoked by uid 550); 1 Jul 2015 07:51:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22044 invoked from network); 30 Jun 2015 16:29:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=WJMQ5Jy9pcfw6IejlvXfgcXtsyygk6dFHzs1Jzg2WrI=;
        b=qCoOVNVvm+LmPgpEahmWyorVnS3oy7WZ+ny8zUMEBwkf1X364T5Cn1w6wG7hYeXLli
         P+/Bl33Swl5jASXb6bapysU68YQSKtrYeCuf8Soj8Qumin9OuMtESEX+piJ9DkVt9Bvp
         FlD3gLyj+EWokUbJRlmMijOUqU1/Md1EH20as26npqt9Lb8bO1qcNeifcg0vxYca7hkF
         n1aowfs1aH/TxE8rchOLUh3UL16QIBaGLEBhdv/FMuUPClJVKFvBTYrZ4668tTSWJHHL
         q73pwt1PwUPS4SRNPRz2gtWrv2JtzyudL7UbEZ5F8xU0YyS0uYXNzmMjTEXeUo7MWYCx
         7RZA==
MIME-Version: 1.0
X-Received: by 10.152.8.102 with SMTP id q6mr20343843laa.27.1435681747608;
 Tue, 30 Jun 2015 09:29:07 -0700 (PDT)
In-Reply-To: <5592A1DB.1000409@gmail.com>
References: <55923253.8020902@deusen.co.uk>
	<55929D7F.3050805@gmail.com>
	<55929F2D.3020802@redhat.com>
	<5592A1DB.1000409@gmail.com>
Message-ID: <CAN6thH5sEEkEL4Y7npWs1z+K1wOHRTW7YuuHwr1VCm0rh5BUkw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3658293aaf10519beb422
Date: Tue, 30 Jun 2015 18:29:07 +0200
From: 0pc0deFR <0pc0defr@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Google Chrome Address Spoofing (Request For Comment)
To: OSS Securty <oss-security@lists.openwall.com>

--001a11c3658293aaf10519beb422
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Work on Google Chrome Ubuntu.

--
Cordialement,

K=C3=A9vin FALCOZ alias 0pc0deFR - Consultant Expert WordPress -
http://wordpress-expertise.fr

--
Regards,

K=C3=A9vin FALCOZ aka 0pc0deFR - WordPress Expert Consultant -
http://wordpress-expertise.fr

2015-06-30 16:04 GMT+02:00 Daniel Micay <danielmicay@gmail.com>:

> On 30/06/15 09:52 AM, Florian Weimer wrote:
> > On 06/30/2015 03:45 PM, Daniel Micay wrote:
> >> It does display a window with the oracle.com address, but I don't
> >> understand why you've got an ever increasing number of setTimeout even=
ts
> >> built in here. It's also unclear what you mean about click-to-verify. =
Is
> >> this bypassing a warning prompt by breaking it with a flood of request=
s?
> >
> > I have not tried this, but here's some context:
> >
> > Most browsers have issues where they do not update the URL bar when
> > content from a different is shown (i.e., the update happens to late), or
> > they show the new URL while still displaying old content (update too
> > late).  I've seen such discrepancies with Firefox, but I don't know if
> > it's still present in current versions.
> >
> > If such bugs are present, freezing browsers while they are showing
> > inconsistent content (hence the DoS attempt) could lead the user to
> > attribute content to the incorrect site.
>
> Ah, that makes sense. It seems to depend on a race condition so it makes
> sense that it can't always be replicated. I've tried it a few times and
> it fails about as often as it works. I have a feeling that the proof of
> concept was the whole issue report and it just happened to fail for
> whoever tested it.
>
>

--001a11c3658293aaf10519beb422--
