X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1009" "Friday" "31" "July" "2015" "09:38:52" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z2A08ws63uJfh6Z7z+p8WpNuEiQCRMdsMxXKeCT3e1-ow@mail.gmail.com>" "30" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "7" "2015073113:38:52" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        scott@parago Jul 31   30/1009  " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<55BB6E77.1070007@redhat.com>" ("<55BB6E77.1070007@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5894 invoked by uid 550); 31 Jul 2015 13:39:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5873 invoked from network); 31 Jul 2015 13:39:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=oaymaX+Dw1vMKycsQXH55qZ/unft6Uh1F3LMCsJNd6M=;
        b=G/nrXBL7dq8TYloe6Kqha1mYEIMj+WV3u7yE3l4SGs3C8VG0/mtAOQeCxZ0WRer2qE
         09Ks2J+ODYT+aKjtIvJmcC7qtXBxi2lBujoMIySJCErh3Fn9QK0bnBQzOuHC7Rxg8mbU
         ATS2xy/hN0iurjVHE6h5WjkoMPy9uGEK2450fPX9kurJzQtTsPVid73zIomOMqT0CQj/
         VgiNeCCvfOIIMv3dx5JjCqflx0Y+ic5ctp8DPlM3A8SQKJd4y1fs524Jg/bJ+cNkvIbH
         soRW9Qo5tdztEFe7EJx5C8WdsBMknkomkdHeKh0MWeY44H9uM0jSjscucvk5UpyiWSKn
         5JDg==
X-Gm-Message-State: ALoCoQk68Dk8LEAjUF/C5YywdvE3CB8JrkVAXMWAjEuuRaPRmgd8SfU2GjbBW4c0dMpxXBh2uJ6N
MIME-Version: 1.0
X-Received: by 10.140.201.194 with SMTP id w185mr4551537qha.36.1438349932275;
 Fri, 31 Jul 2015 06:38:52 -0700 (PDT)
In-Reply-To: <55BB6E77.1070007@redhat.com>
References: <55BB6E77.1070007@redhat.com>
Message-ID: <CAKws9z2A08ws63uJfh6Z7z+p8WpNuEiQCRMdsMxXKeCT3e1-ow@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 31 Jul 2015 09:38:52 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

On Fri, Jul 31, 2015 at 8:47 AM, Adam Maris <amaris@redhat.com> wrote:
> Hello,
>
> I've got question whether this bug
> (https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=793971) is CVE-worthy?
> Could it be classified as CWE-330: Use of Insufficiently Random Values?
>
> According to the SRTP documentation
> (http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g1d4c228c6a58096dfab3cefbabd66f17.html),
> it provides 80 bits of random data, which is quite a borderline.
>
> Thanks.
>
> --
> Adam Maris / Red Hat Product Security
>

I would consider 80 bits insufficient for cryptography, but it's not
really exploitably weak (like, say, rand() would be). Whether or not
it warrants a CVE is obviously MITRE's discretion.

2^80 is out of reach for most people to brute force in 2015 (maybe
even for intelligence agencies), but 2^100 is generally the lower
bound of acceptable.

Just my $0.02.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>
