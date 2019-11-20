X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4110" "Wednesday" "20" "November" "2019" "12:14:50" "-0500" "Aditya Sirish Arunkumar Yelgundhalli" "asy278@nyu.edu" "<CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>" "92" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112017:14:50" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "  z     asy278@nyu.e Nov 20   92/4110  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191120124425.GA25554@openwall.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 22091 invoked by uid 550); 20 Nov 2019 17:49:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6107 invoked from network); 20 Nov 2019 17:14:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nyu.edu; h=mime-version :
 references : in-reply-to : from : date : message-id : subject : to :
 content-type; s=20180315; bh=bNrgBSRolM0X+miCSlpH+Db6M9xr789hy+3cd7wq1jo=;
 b=KRvUoO9TxL/lzT2aMrZNznlhw+0cdl8KJZliVRWG6aopW3aZMWPvZUxi40jmHPqEbqwJ
 O/iw6PMFHAVZopG7FKuyzm7+ZA8oeBpMhHnP3Lqh5w4zx+mpS8ogWGwsifrHYPBABQEt
 +p0dj/4EzP0r7KTd/2xE2LxdL+WGf4sHKI2RL6Bsrm1GRRN4VLpJICH/RiwToNgc+Bv+
 UuGw+p+7fEtv9uiG/XOPFVpOvlUedM4tbAUnUlBG07Nuw3au19ixxkw/yRwdFTnrcBAz
 uigN5U9imb9Y3Oki4D7hSllIlUNzqwil+rPJD6HXhjJ5WsepWGavRSEUxZHB16rELJKt ww== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nyu-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bNrgBSRolM0X+miCSlpH+Db6M9xr789hy+3cd7wq1jo=;
        b=a08E6tIwPVwTvdsBGVYEiKmlGTzPN20+R4buQO1uQm17ALxpt4+ofx554JWUhAEbxb
         qEKdY7oAuu4Y2LGOP2PyKyG4e5N5kGdFrMe7byRxkk+1l93Ki9c1eylWbg8hm71nvv4W
         GjJaM/88yDtjUPQ5zFGnONslVRoQxjPfv2JSaS/vTmIxjmBzKgAQIxmg0gEeWqNpla6Z
         dpgT9F6iyIqERuEz/tW3xBA83uZhQMHTdUN/nu+0W/BF2jdPR7d9xXgUA/o/mFJKulM1
         ha+DZtZ/pm0SS8ZzcQ1sx6SCUusj60p+JyVuZBiGQMUhACa0zyfB+3u6harSnbhm4U3O
         1wtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bNrgBSRolM0X+miCSlpH+Db6M9xr789hy+3cd7wq1jo=;
        b=SIpRnOVDrWPxU7rXpqB600KSgP8JEuRFy9B81iW2zKWyW4/b7wQluOKEu9SQ9KbS1u
         EKmNsw89xhtFe2vgl4XX774peLbZmEBI2p+GpXjIx+JBddXtOzc+ZofrkL7Tody/Z6Y8
         2pLfV+Y5j58Vp44O408K06LQKe04KzXfm3pt2o80nsajMLoYpBTYAvryfX1GNX3ptNRu
         lcgPBzp7lS50cvNpAKc4jgr9XqiTQ9l535uhaYImcc36gDDenT3QfbqbMMc80uh2pWnz
         B96U2kODtaDBpy3U7MFkZHpRZPs3A9+vbRojIH1408mGVqnNBDwxFusTyH15Q5NPTmLk
         uhzA==
X-Gm-Message-State: APjAAAVBW/GabHam13XQ7YcUWvKnM2J2b1EuKkVBA1Q85HcPnIX+k3i/
	I593ODeT5r9hJF27SLfW7EmkMzVF08sKE4GNAWtm8x+a8F5y7OErabqaH5HWWFbC14DrF2XktyE
	feAc6IeRiO/S6xot2xulPgRBNgoDQQhGn9uaJNK9vaPg=
X-Received: by 2002:a9d:313:: with SMTP id 19mr2918176otv.197.1574270071913;
        Wed, 20 Nov 2019 09:14:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqwb4YfVv8s7ittABl/3lV+EqXmXaKvUHGSK6IR8vMyD3KIKlYaPPs3Zq0evKH8OQ3HXWekuvqXslApcwFIfh4g=
X-Received: by 2002:a9d:313:: with SMTP id 19mr2918076otv.197.1574270070184;
 Wed, 20 Nov 2019 09:14:30 -0800 (PST)
MIME-Version: 1.0
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
 <20191120124425.GA25554@openwall.com>
In-Reply-To: <20191120124425.GA25554@openwall.com>
Message-ID: <CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005076970597ca50a5"
X-Orig-IP: 209.85.210.69
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=999 clxscore=1034 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911200145
Date: Wed, 20 Nov 2019 12:14:50 -0500
From: Aditya Sirish Arunkumar Yelgundhalli <asy278@nyu.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

--0000000000005076970597ca50a5
Content-Type: text/plain; charset="UTF-8"

Hi,

My name is Aditya, and I represent the NYU Secure Systems Lab, where we
actively research and develop solutions for the kind of problems discussed
in this thread.

In particular, we believe that a combination of The Update Framework (TUF)
and in-toto will help to address the problem of malicious packages. TUF is
the technology that ensures that packages have not been tampered between
the repository and end-users, whereas in-toto is the technology that
ensures that packages have been built correctly by the CI/CD using source
code signed by developers, securing the software supply chain end to end. A
critical property of both technologies is that they are fundamentally
designed to be resilient against a compromise of some signing keys in the
system. By combining both TUF and in-toto [X], it is possible for a Linux
distribution to guarantee that packages have not been tampered with
anywhere between developers and end-users, despite being built and
distributed by machines.

TUF is the de-facto standard for signing container images, used by Docker,
IBM, and Microsoft. It is also being used by Google to update everything on
their next-gen Fuchsia OS. A version of TUF called Uptane has been
standardized for use by North American ground vehicles [Y]. in-toto is
being used to verify reproducible builds for Debian packages.

We would be happy to help your community integrate both technologies, if so
desired. Let us know if you have questions!

Thanks,

Aditya

[X]
https://www.datadoghq.com/blog/engineering/secure-publication-of-datadog-agent-integrations-with-tuf-and-in-toto/
[Y]
https://uptane.github.io/papers/ieee-isto-6100.1.0.0.uptane-standard.html

On Wed, Nov 20, 2019 at 7:45 AM Solar Designer <solar@openwall.com> wrote:

> On Tue, Nov 19, 2019 at 01:33:48PM +0200, Georgi Guninski wrote:
> > As end user and contributor of gnu/linux, I am concerned about malicious
> > packages (either hostile developers or hacked developers or another
> reason)
> > and have two questions:
> >
> > * What do linux vendors to avoid malicious packages?
>
> Back when Openwall GNU/*/Linux was being actively developed, I used to
> review each contributor's changes before making them public.  I also
> (re-)verified authenticity of third-party source tarballs instead of
> blindly trusting whatever the contributor could have uploaded to us.
> (I'd do the same now, but without active development there's simply
> nothing to review lately.)
>
> Of course, this approach doesn't scale as-is (with just one person to
> review and publish everything) to larger distros, but some kind of peer
> review can and should be present.
>
> > * As end user what can I do to mitigate malicious packages?
>
> Try to install only what's needed, or not a lot more than what's needed.
> (Can't be done perfectly with larger distros and their dependency hell.)
>
> Contrary to traditional best practices, update only what and when needs
> to be updated.  (Of course, you take responsibility to watch for any
> relevant security updates, or accept the risk if you neglect to do that.
> You also miss silent security fixes, but on the other hand you similarly
> miss newly introduced vulnerabilities.)
>
> Use a long-term support distro, preferably starting half-way into its
> lifetime when updates are already infrequent.  (Similar risk of missing
> silent security fixes in new upstream versions, but also avoiding new
> vulnerabilities.)
>
> Setup packet filters with blocking and logging of unexpected outbound
> packets, including to console so that you'd notice.
>
> Setup custom anomaly detection and actually watch it - e.g., for new
> programs running that haven't ever run before, etc.
>
> Use multiple pseudo-user accounts (doesn't protect against issues in
> packages' pre/post-install scripts, etc.), containers, VMs - but even
> then you have the risk of getting the same malicious package in multiple
> VMs, which e.g. on Qubes OS could happen through updating a template VM.
>
> Alexander
>

--0000000000005076970597ca50a5--
