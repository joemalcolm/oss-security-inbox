X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2387" "Friday" "30" "October" "2015" "09:38:47" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTCbEv-j9qdUJ1QS9ZgcbLfcYVygTkJg1Lo=LcvSz7nNw@mail.gmail.com>" "64" "[oss-security] Re: Pointer misuse unziping files with busybox" nil nil nil "10" "2015103012:38:47" "[oss-security] Re: Pointer misuse unziping files with busybox" (number mark "        gustavo.grie Oct 30   64/2387  " thread-indent "\"[oss-security] Re: Pointer misuse unziping files with busybox\"\n") "<20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>" ("<CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>" "<20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16265 invoked by uid 550); 30 Oct 2015 12:39:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15826 invoked from network); 30 Oct 2015 12:38:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=rOqG6rb2z0aSWZNO2Z5oAHrOjHE3DFeqYxxn8b7tZ5k=;
        b=EfWF1ivIgrV7oIrGixhWw2cyKO2c9Qv8EI6KIYpytjAgvUBtsfpLIRLqNYq+siNf5T
         uiDAo2H1AEq/z2GwcOb5JFbAFINvCy5U7tghk9nefuVNt/SUcjTq6S3uWrAbIV3a4cKO
         VCie3ZTzUg+rh9E8hxh64e8cRLpqFeKmTsHG5gvD0mE15QMS1GHxDSy1Bj+mtFSvfzpW
         gPZ0oIP88N6BfxMlq0y3UWHTieT2y2r3m6Rj/4oNsOpaAzXfA/xNHmLCXT4msFM2pyd+
         ipGM1PemhqO/jQaHP+MVTQD8h5p8kjRdWPJMieQ1ZHu5MTE6IbzTHeKYY66+Ur8q/w/X
         ekkw==
MIME-Version: 1.0
X-Received: by 10.25.149.210 with SMTP id x201mr2068761lfd.53.1446208727359;
 Fri, 30 Oct 2015 05:38:47 -0700 (PDT)
In-Reply-To: <20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>
References: <CACn5sdRFRE-eTpgGdJr8hok0phUFtXHGAF_k3OAe1R46a1Nv9g@mail.gmail.com>
	<20151029060451.38E3F6C00ED@smtpvmsrv1.mitre.org>
Message-ID: <CACn5sdTCbEv-j9qdUJ1QS9ZgcbLfcYVygTkJg1Lo=LcvSz7nNw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11401a26772991052351b5b5
Cc: oss-security@lists.openwall.com
Date: Fri, 30 Oct 2015 09:38:47 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Pointer misuse unziping files with busybox
To: cve-assign@mitre.org

--001a11401a26772991052351b5b5
Content-Type: text/plain; charset=UTF-8

2015-10-29 3:04 GMT-03:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> >
> http://git.busybox.net/busybox/commit/?id=1de25a6e87e0e627aa34298105a3d17c60a1f44e
>
> > Unziping a specially crafted zip file results in a computation of an
> invalid
> > pointer and a crash reading an invalid address.
>
> Could you please comment directly about the likelihood of
> exploitability for code execution?


To be honest, i don't know. The patched code looks quite complex and i
cannot discard any potential arbitrary write there.


> See the
> http://www.openwall.com/lists/oss-security/2015/10/11/5 post. We
> currently feel that a CVE assignment for a non-exploitable unzip crash
> on BusyBox may be unlikely, because BusyBox wouldn't realistically be
> used for deployment of a program that remains running to offer an
> unzipping service to multiple clients.
>

I felt this issue was interesting to post here give the large amount of
embedded devices using busybox so i decided to post it here looking for
some feedback. Maybe some of them are using it to unzip files provided from
users?
In any case, i can update later this thread if i got more precise
information about the exploitability of this issue.


> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJWMbYWAAoJEL54rhJi8gl5KOIP/0glPnY2FhWwCDTKcVfjzfGX
> C0qdsZ7U75V9+ECFvd3VvsogMs/WFt+UaP+wGCkB2VM9WHXlH5k0tMlqQZxIb/fY
> Nixc54gGFxz3DI6Gm22mQNS2nz1nnjLHvdAfPsKorzb30h/UEOT2msdsBpo/ya8W
> Z9ELQ8nPmxgjeXw2jQ1lzi8Ng36GhZMUShqKq6RIJRcFDTrtLyeIipux7pKXABEg
> GKezwuTlQq0ek/ausiaD2I97GsrjobWm590cdVhrUcuhcSajgCgtyYLWVfCqUAhM
> dvHORPcD0StGedSWqRqVQULMlDdEWyay+icTibAFnuxw/IJan1o3KRNXwG3dPIjW
> AZs5iJdRZpCq3zaEu6gFRjz1TthBkkFWlOmjxMInHJgqZKVLZ/gsE6S2/V/EqFpX
> gEpmm68yjGAYWzAUwArVM9am1sz1Pso8XOrLbExC9kkc2UxDNpK4ANMxcFehGeKc
> /mjodcq7lYoZdtKRasPCGhSJyg4Pd1+fJvSpvcJCQR+TZtucnUeF68VdN+Co8po6
> YM9bV9MtzORnAJF3vZWfkjvWanLhL3UdSuh7iY6sg6m+Ui0FscCFCcHccgwSM62k
> 59/04Qw1Z9xav6hq3Dd9KR6EoCpJwiZkfBqLG9+Qejcj8q+fp1Vgqea3iJJNpPqA
> Hwp1wqHbGbeg1vJhOBFk
> =VGYW
> -----END PGP SIGNATURE-----
>

--001a11401a26772991052351b5b5--
