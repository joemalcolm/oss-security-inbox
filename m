X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1540" "Tuesday" "22" "December" "2015" "21:24:18" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>" "44" "[oss-security] Re: CVE request for math/big.Exp" "^Cc:" nil nil "12" "2015122221:24:18" "[oss-security] Re: CVE request for math/big.Exp" (number mark "        jbuberel@goo Dec 22   44/1540  " thread-indent "\"[oss-security] Re: CVE request for math/big.Exp\"\n") "<20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>" ("<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>" "<20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32354 invoked by uid 550); 22 Dec 2015 21:24:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32336 invoked from network); 22 Dec 2015 21:24:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=Y9zXUofwoYRq6LBIUdpOohWX/d9ds09vDcUqQOzPwp4=;
        b=PoiPt63zCJOEChEwDxOQ5U/wU/lSZvbT64qafKvKYP9ict4qC6m+Dqi06lxIA4JWgE
         NJxVeJ9pFEuV3Bfgp3BJPpp371YwAOo+VBinJOMAddCxoD274YVj/KkQ7aFSrQENgGEI
         u5IJ1WIWbYlRjFq0BVBDFSK3kmgtfBBXHzBpyAVcCd+SUJE+qJfcqVxRqxWSJxXpgnhv
         y5H5HxYSSgkxgzDqWO+MMKLTmPY6MQiQO4PulsJlw/uD0ZuRcuTDDJUbpw5Cspsz6k+e
         nZZrZOvIomPYdZe7Ywx5vg7B0XKOY7NpPbohQb1Ns7uqO5xAoDTCkBE2ZPcrV2GWoW9e
         dkkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-type;
        bh=Y9zXUofwoYRq6LBIUdpOohWX/d9ds09vDcUqQOzPwp4=;
        b=lWVyEFTEd1UUQEVdacgDLFUNXgxPhkdDk9yviIczqmJWcploue7S6VWckoN9RRBQzA
         J+imfIkG4Rr3sOQfUHI7vZlBbS5taUw9VWiP2ZcJ+KQJ5RobRv7nD/W5YTYI/nOimZ9b
         yTRcoJ8lQBHeXQsVVnhCuvZtelfPQQzkzAiBjnadjSfnxt/9DkuzgI05UkFdnVypyaNB
         znYGLntWEm9UJLLRrebXLGmt6EPerQhPOkwypH6oX1VNpvqw322UjgAPDT+XLjCrhd/1
         b/xNnvXVSmD+TilVV1qyO1NRIXhMiOJWJtMoVAAJMpEjrYzIup/rpfp7OQkbd3jjP856
         twUQ==
X-Gm-Message-State: ALoCoQn+mkHQPX/Wo5BRDpGu+1g2XNl1lnuyHPtmH0OVAi3J0e4RwF3vvTO7gZ2o4Pip+NT4fndvi4zP/bAgKNI5B+wA2CzydiuGvh+KQ5lR/lVDnDwXnwE=
X-Received: by 10.13.227.193 with SMTP id m184mr23474039ywe.16.1450819467833;
 Tue, 22 Dec 2015 13:24:27 -0800 (PST)
MIME-Version: 1.0
References: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
 <20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>
In-Reply-To: <20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>
Message-ID: <CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0773ba03d8bc0527833bea
Cc: oss-security@lists.openwall.com
Date: Tue, 22 Dec 2015 21:24:18 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for math/big.Exp
To: cve-assign@mitre.org

--94eb2c0773ba03d8bc0527833bea
Content-Type: text/plain; charset=UTF-8

The Go team plans to release Go 1.5.3 on Wednesday, January 13th to address
this issue.

On Tue, Dec 22, 2015 at 12:36 PM <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > The problem that was
> > identified is similar to CVE-2015-3193
>
> >> math/big: fix carry propagation in Int.Exp Montgomery code
> >> src/math/big/nat.go
>
> Use CVE-2015-8618.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJWebPbAAoJEL54rhJi8gl5LMsP/20/WzubhID16KKW84qnlMAo
> F6w3/kPkfTTBr+42W3bNZYSCY0ieVwQsvTN6uz8GrMxJ6H/Vko3H17ltXZAx0nxP
> Vc53H2QbAiyCaaUA6+vqAeosjBbBhvXNkw7Dj9utDu1hJ2rbBtf5ujddF48CxjoJ
> +Fsrr7TYHX3Su/4r7MNtBtcMjOeWfD3xB+h++Lp5CL/z4tRKXBS02OM+tlVvdGvq
> llQQ8dwGIYaJv8v3ZIIdXk1dzurws2B6gvF6uDeaseXtbFpMbRpXxgeFddLowjtZ
> th9I7oxQUvFASrraIQrobaKPpEOfDJrMjhVzFHPtEFtTvrR71qYqq58NXaoflGV1
> gEtSptbjm5sAwsjxOWhOVO+wA9JHA8upV2ZVxczdeFGlvyko2KBWdMorjEIWLQGI
> x2DbkL2+hXlCJfZZUfNy0BjyGpZPGlmT7ZAYguxz6VTT/EC67gJ6pkiv5mZKOeBY
> PHtH7UaYVBYwh6h5opdmvhkhTJ/a9lXhIez5s5HhX01P31DHmx6RLUMeTBikjwmz
> IFOEulqQhAH0Qtp2XvPAMKeICXpEv7iWmoP8yNAYQ0SzS4awc7ZjK1mcRka1hcY5
> Bc5nbQvbZGPag0QeyYPdKyYuNqugj6d3J81kIlcpNfjCT1lSVhxxwjQQzlpi0FCR
> YJqwm2p3NhpjW57fGRux
> =HP2t
> -----END PGP SIGNATURE-----
>

--94eb2c0773ba03d8bc0527833bea--
