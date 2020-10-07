X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1015" "Thursday" "8" "October" "2020" "08:07:10" "+1100" "Brian May" "brian@linuxpenguins.xyz" "<87v9flhhj5.fsf@canidae.wired.pri>" "23" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020100721:07:10" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        brian@linuxp Oct  8   23/1015  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9892 invoked by uid 550); 7 Oct 2020 21:07:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9874 invoked from network); 7 Oct 2020 21:07:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-type:content-type:mime-version:message-id:date:date
	:references:in-reply-to:subject:subject:from:from:received
	:received:received:received; s=dkim20160331; t=1602104836; x=
	1603919237; bh=EdTOi6XHJ6NGfFNhTMr1RNExMeaahPWOHXEo85VnsYQ=; b=z
	zdlNkvoGLhLiKBCQZviiLgg5CUSAbc83ki8Bre58yPJPPY2hIRW0NH4eu2etQEcv
	afPcwoxNlzl7kjnCewYCwH89f+b2mxCwvCCpN66LGnyrIxcRo1lcPo8IQy+O6ChF
	K8pPEOtWKHOFOLUGAFrtVGf6MrGocko1ol7CHLv9M9kydeuXjMw3yql9hNyoSlI0
	RBzuRtZaE6fd+nsySrg8e9GMI39oTSIeB86ZATIVHjP5qvSqrOJ1tl4MikV0idUg
	rlvqaBbuXUVpohJYklxVLI5oNwkOe18oZEaxwtVokUeXYWQbb2MgWKJR9snlBWX8
	7XUGvkpFExTFBb1Ee5I7zlJwqVoN1RV3csuV8Ixrfw99cQ605Cs9a4b17Nemn3UI
	udDM4r6r7KiR9dAV/3P6/Tdi580Qql7ur2aYd+huukyU0WQBbssMcWn5kRsafR7G
	A6moObxsBkiX8zn8e9JPtumN+XLCaNZbT/yo9L6ukuOufdj+spSgAwaKrQMem0EW
	4+5KOtq8ebkf3XYRVXY3JWmi/Fb3eRFB4xwYKVlwJChP39e1mLQ44dM7v24xK0vO
	c6AUXp/5QUEKo24bhiMdyoB1Yjb2T2xKS6GPqDXW6asnOZioKdG95zXR8ZeaGLD5
	FU1kTm4amVFmXU00b0DnKMDpqDwDy/ooqhlOGRqXjc=
X-Virus-Scanned: amavisd-new at mykolab.com
In-Reply-To: <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com> <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>
Message-ID: <87v9flhhj5.fsf@canidae.wired.pri>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 08 Oct 2020 08:07:10 +1100
From: Brian May <brian@linuxpenguins.xyz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: oss-security@lists.openwall.com

Jeremy Stanley <fungi@yuggoth.org> writes:

> As a long-time Debian user myself, I agree that this default is
> showing its age, and can represent a risk for operators who overlook
> it.

Yes, I agree the default should be changed.

Just note that there is a reasonable amount of software install
instructions that assume umask is 022 and will install software with
unusable permissions if it is not.

Perhaps the worst example I can think of is Docker image builds.
COPY/ADD will install the files in the Docker image with their current
permissions with no way to override. So all the files inside the image
unreadable for everyone except by root. If you want to run stuff inside
the Docker image as non-root (which is recommended) you either have to
fix the permissions first or add a RUN command to fix the permissions -
which can be slow and the layer generated can be large (due to the
inefficient way layers are represented in Docker).
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
