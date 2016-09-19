X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2027" "Monday" "19" "September" "2016" "15:59:31" "-0400" "Mike Santillana" "michael.santillana@wework.com" "<CAARAU46U0p2cvjaqa_MQX_kULk5cDMTufV52zYu-Ad_=8Ps9tg@mail.gmail.com>" "67" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016091919:59:31" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       michael.sant Sep 19   67/2027  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<20160919195351.GB29516@hunt>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" "<20160919195351.GB29516@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6050 invoked by uid 550); 19 Sep 2016 20:03:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5258 invoked from network); 19 Sep 2016 19:59:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wework-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xkR1v6r7Al976LwbTGpEAf4KzwDIzca5Kd8uNdAAj9A=;
        b=he/wUFhK1GyRYX0TLtuiJW3T+69SCodOaC6a3LA3/PE5eBSDt3rdjnMpy3QJ5BgwTS
         R1g7L9o0Gqeegs3/eqMhilxx8rZVVr+t73XjbUMFewBUeEvLldmDJcshE/tICMi0ALUc
         PPQ899nZ/WnJZOTSLerP89ydT//uYXBzNMu2zHYDVjfZC+wEcv0Ck30vZgDyzI0fBCvJ
         zuoHuIaUk7jpsNnivku92SOAra1FOJk79x4kflcrfGkCWPd41QHauuzpLJlC13oeW0Nl
         iNUqokdYHkwp+9xBjvAubaCDXEsybfPsPOkQygRiY2IKRl8TP2ITk2Phz+pZWO8e6g3A
         cF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xkR1v6r7Al976LwbTGpEAf4KzwDIzca5Kd8uNdAAj9A=;
        b=b4C/ElUkKhi13xKK0Q/9zRNuEp08tJAvqoH2ERlnms6jV9fjId/ix7OA5EfJPEnthL
         gLN5/f8UlimU18r7yqzfjSblK9JKYldkRH+5NgnywVr9QixNV7As0dWFjJPCoS3RLgl1
         nXzLMCWzq8q/ryqe67wfs0aUEdUmtIGCc2fgG4sJkYZMSKrnZosi7sVvI712bQXgFh13
         HeO/542pe++5B9jbhfL5JTYFKqkLqAoNCCgWaBPoP20141NTytzwfzgKyldRi+60lx+K
         Nvt2oam+utzI2crcW2x/kDfV5ZOn6A4Tq/EO9MjsgAFtXrkGLBGR5xIWnjugJanX/raz
         SfLA==
X-Gm-Message-State: AE9vXwNUN2WCH77YFlZvsVaAIQdiq/KS0LUQGD1fdfr716I7m1y2s42c+IqKuyBjstCsEWruEdSW+e6S5UkxuweN
X-Received: by 10.28.216.202 with SMTP id p193mr9798718wmg.82.1474315171565;
 Mon, 19 Sep 2016 12:59:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160919195351.GB29516@hunt>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
 <20160919195351.GB29516@hunt>
From: Mike Santillana <michael.santillana@wework.com>
Date: Mon, 19 Sep 2016 15:59:31 -0400
Message-ID: <CAARAU46U0p2cvjaqa_MQX_kULk5cDMTufV52zYu-Ad_=8Ps9tg@mail.gmail.com>
To: oss-security@lists.openwall.com, seth.arnold@canonical.com
Cc: "'Apple' via" <infosec@wework.com>
Content-Type: multipart/alternative; boundary=001a11468f0c16a705053ce1c068
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in
 GCM Mode

--001a11468f0c16a705053ce1c068
Content-Type: text/plain; charset=UTF-8

Hi Seth,

The random_iv method automatically sets the IV to be used by the cipher:
http://ruby-doc.org/stdlib-1.9.3/libdoc/openssl/rdoc/OpenSSL/Cipher.html#method-i-random_iv.
The reason I do "iv = cipher.random_iv" is to get the IV value so I can
print the value (or traditionally, pass it along so it can be used in the
decryption phase).

I hope this clears the example up a bit.

Thanks


*WeWork | Mike Santillana*
Security Engineer
845-709-5655
www.wework.com

Create Your Life's Work

On Mon, Sep 19, 2016 at 3:53 PM, Seth Arnold <seth.arnold@canonical.com>
wrote:

> On Mon, Sep 19, 2016 at 03:20:02PM -0400, Mike Santillana wrote:
> > An IV reuse bug was discovered in Ruby's OpenSSL library when using
> > aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
> > setting the key, the cipher will default to using a static IV. This
> creates
> > a static nonce and since aes-gcm is a stream cipher, this can lead to
> known
> > cryptographic issues.
> >
> > The documentation does not appear to specify the order of operations when
> > setting the key and IV [1]. As an example, see the following insecure
> code
> > snippet below:
> >
> > Vulnerable Code:
> >
> > def encrypt(plaintext)
> >     cipher = OpenSSL::Cipher.new('aes-256-gcm')
> >     iv = cipher.random_iv # Notice here the IV is set before the key
> >     cipher.key = '11111111111111111111111111111111'
> >     cipher.auth_data = ""
> >     ciphertext = cipher.update(plaintext) + cipher.final
> >     tag = cipher.auth_tag
> >
> >     puts "[+] Encrypting: #{plaintext}"
> >     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
> > #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
> > end
>
> Hello,
>
> I think you have a mistake in this sample code, 'iv' is assigned but never
> used (aside from being printed).
>
> Your github code is far more complicated but looks like it is doing the
> right thing.
>
> Thanks
>

--001a11468f0c16a705053ce1c068--
