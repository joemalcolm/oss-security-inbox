X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1503" "Saturday" "23" "December" "2017" "09:09:16" "+0530" "Dhiru Kholia" "dhiru.kholia@gmail.com" "<20171223033916.GA10696@lonestar>" "35" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017122303:39:16" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        dhiru.kholia Dec 23   35/1503  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171222195252.GA6497@openwall.com>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" "<20171222195252.GA6497@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11405 invoked by uid 550); 23 Dec 2017 03:43:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7929 invoked from network); 23 Dec 2017 03:39:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0xkCq342u+XhgaxX8iErSamnH9Hl9jAAZtI4dL+LtHo=;
        b=aUCM/jLwjeCy9O5oA0UCFKATnNdOtQ+fveOra4axvRK2qPHmt5O6pzyiYdnrMb7oJ8
         BFpdE0V242XtkOhgj3dweuSA4OdcMU6jXQEd3BoQs91EEusK3t8+0/LWHuzmNQx5c0rR
         G4ltE3lYJJ3SSXK3z6OoLMM4SreS3YeXv6dp6FKNRktTMdS1Sv2yhE2nAxQGjy0OjSW6
         h2eK9jNkOkGXgOrPSMAaIkF+ZqRSHUt80BcMBve41zwrPPKnSTZSNf+rJpaH50OF2bRt
         0UDWhpDa75fnb4O+Ur/Y83IlKY4rLa6my4tAqIa10TsoSVD4nSHeFRqwhjhJoi8s/fAW
         VEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0xkCq342u+XhgaxX8iErSamnH9Hl9jAAZtI4dL+LtHo=;
        b=jGWuiqMoNXme56EWD8F8tXOEayweSGn/+UG6Bkns+UE/k6Q17ATPAToT3GtUJ2xYE0
         kYP6M8hbSYtrs/Z1SiwtXaUpVog7r3HYTeHviHo0CODoj+VIRg1bQnjCbVwkoNyUzbSy
         1OLspUgqkcg/AzCoLDmyhiJGRbqKfP4RQuaGLawMJIBjsREMCIWPtejT2NBYkR35zRw6
         pvGekQ5cu0lJGWZQdoGqmf0uRZcDSyC5+wGKjmRYY8pRBsa8C9dldoBUHL0GqFbd6m+Z
         OtoolCrvfLNmNZQvBOZe9wWoS8t7P3O915Zv7dGWvSzwKWv9JjQOJnYcPoeyJtMmqaXU
         +ycQ==
X-Gm-Message-State: AKGB3mIuE1BlevhhzzocJXF6CdYSbIjv0x7unw7QBbCIlamWgWKb+sv5
	1tjMMVTFALE/gS4ADGaJGgHzq/2x
X-Google-Smtp-Source: ACJfBotRf36qoGH20dFJ4yj/Ojt3lN834D7hrrjCbNp8U+CcCx1TsOla2FtTeE0vYFgJaAh6LwJc5w==
X-Received: by 10.84.133.131 with SMTP id f3mr16489392plf.204.1514000358856;
        Fri, 22 Dec 2017 19:39:18 -0800 (PST)
Message-ID: <20171223033916.GA10696@lonestar>
References: <20171207210134.GA7079@openwall.com>
 <2172-1513501568.968862@pLoG.Le7g.f3CQ>
 <20171222195252.GA6497@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171222195252.GA6497@openwall.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Sat, 23 Dec 2017 09:09:16 +0530
From: Dhiru Kholia <dhiru.kholia@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On Fri, Dec 22, 2017 at 08:52:52PM +0100, Solar Designer wrote:
> On Sun, Dec 17, 2017 at 09:06:08AM +0000, halfdog wrote:
>
> > > You may process the private key file with gpg2john, then try to crack it
> > > with john.  This will output the actual value, as well as show you the
> > > speed at which passphrases can be tested against that key on your system
> > > and with that version of JtR.  To use a GPU, add "--format=gpg-opencl".
> > > Please use latest bleeding-jumbo off GitHub for all of this.
> >
> > Done that, but still fighting how to use "gpg2john" with the new
> > gpgv2 "private-keys-v1.d" key format. Exporting the private keys
> > using gpgv2 does not help as that requires the passphrase already,
> > thus removing the gpgv2-encryption, we want to test.
>
> I tried asking a JtR jumbo contributor to look into this, but
> unfortunately I got no response yet, and I had no time to look into it
> myself.  This is something we ought to have an answer to, but I
> currently don't.

Please see https://github.com/magnumripper/JohnTheRipper/issues/847 (Add
support for the new GPG 2.1 "format") regarding this topic.

To summarize,

* Currently, gpg2john does not understand the "private-keys-v1.d" key
  format.

* We have a very rough cracking implementation for "private-keys-v1.d"
  key format at the moment. See "filter.c" on that GitHub issue.

I can start working on a proper native cracking implementation (with GPU
support likely), if there is interest in this stuff.

--
Dhiru
