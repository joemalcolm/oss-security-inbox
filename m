X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["393" "Tuesday" "7" "July" "2015" "14:47:59" "+0200" "Yann Ylavic" "ylavic.dev@gmail.com" "<CAKQ1sVO9axLdmFyiyMK1d9UJsqh3itB65O03NZmqDCmSxg6T_Q@mail.gmail.com>" "12" "Re: [oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released" nil nil nil "7" "2015070712:47:59" "[oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released" (number mark "U       ylavic.dev@g Jul  7   12/393   " thread-indent "\"Re: [oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released\"\n") "<20150707115217.GA30660@pisco.westfalen.local>" ("<CAG8=FRj5sL+J6YUJqY95uBJN=vxtS=rWfngAfHk4k2vyShadHw@mail.gmail.com>" "<20150707115217.GA30660@pisco.westfalen.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4043 invoked by uid 550); 7 Jul 2015 12:53:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1351 invoked from network); 7 Jul 2015 12:48:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KuZ6O1Gx4jLORzhsGU7EJ3BggxPVuemPpVw36Ja5/vU=;
        b=rET0XQQGyKENKkrBV/UvDCYqeSuus7d/TKQZYCa+sf+JHn0qt5HWdaVbqUGeQqEf98
         a5Hd90cV+0wOTt4yY8P3FIKoNlnytZKDHRBKIykS0mPtFi8e8AktEviRZ9AlSShFd69E
         h3MaQ8bveRPiMibkkVFWpfsVxngc5mSNWao8xKOS5FjYEgJ96T/yDJsDoRmUNdKUVuvV
         EV3w2VzLl3EyEmM5BcMNptNmK3V2kcOP4y9tFR7xpW+3HyeN32nr0OgjQEMbuiC/hVc+
         CImZ/NChZvz9addYjWWAE9FGAA6KuRyJ6jXAtQh/rSOq7ROP6jVbLTPzlQh5T4Q4CKI3
         IN5Q==
MIME-Version: 1.0
X-Received: by 10.42.203.4 with SMTP id fg4mr39586069icb.52.1436273279492;
 Tue, 07 Jul 2015 05:47:59 -0700 (PDT)
In-Reply-To: <20150707115217.GA30660@pisco.westfalen.local>
References: <CAG8=FRj5sL+J6YUJqY95uBJN=vxtS=rWfngAfHk4k2vyShadHw@mail.gmail.com>
	<20150707115217.GA30660@pisco.westfalen.local>
Date: Tue, 7 Jul 2015 14:47:59 +0200
Message-ID: <CAKQ1sVO9axLdmFyiyMK1d9UJsqh3itB65O03NZmqDCmSxg6T_Q@mail.gmail.com>
From: Yann Ylavic <ylavic.dev@gmail.com>
To: Moritz Muehlenhoff <jmm@debian.org>
Cc: oss-security@lists.openwall.com, security@apache.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] [ANNOUNCE] Apache Directory LDAP API 1.0.0-M31 released

On Tue, Jul 7, 2015 at 1:52 PM, Moritz Muehlenhoff <jmm@debian.org> wrote:
> On Tue, Jul 07, 2015 at 11:07:37AM +0200, Emmanuel Lecharny wrote:
>>
>> This release is fixing a security vulnerability : CVE-2015-3050, a
>> Timing Attack vulnerability.
>
> This ID is already used for a vulnerability in Adobe Reader?

That's probably a typo, CVE-2015-3250 being the assigned one.

Regards,
Yann.
