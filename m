X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4986" "Tuesday" "19" "July" "2016" "01:03:26" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z1pthfTVXjyyuXpbGK1Ya7bPk91QzY_4Mc61MxAJJ4rQA@mail.gmail.com>" "141" "[oss-security] Re: Ruining the Magic of Magento's Encryption Library" "^Date:" nil nil "7" "2016071905:03:26" "[oss-security] Re: Ruining the Magic of Magento's Encryption Library" (number mark "U       scott@parago Jul 19  141/4986  " thread-indent "\"[oss-security] Re: Ruining the Magic of Magento's Encryption Library\"\n") "<CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>" ("<CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30264 invoked by uid 550); 19 Jul 2016 05:03:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30221 invoked from network); 19 Jul 2016 05:03:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=T0JAvUOah56eB88wYQm/5JtCnjdhu7+6AoCqsPWcjqM=;
        b=KGfx+2oHkFlcPMC4fPEMlx3K7Cz6ZM6+xJbb82lCPbmk5dTRZGr+YFX3bLAzWMlb2+
         G7PHqkyERMVxs/XBCD7OKt/6Dxu4cV+2XLPPFFYGsm4k5iITA2cFQqtBlPHCuhMYLMw5
         rO6KXMDAtGpnGMvHXph7LN2vQy8RF9tTZVusXKs1hKeK4lLpiiLsrQy2RksbaAcNEfX7
         fIfSDkcVHMxY8MXljTYsWoV0uPZZNkKwOufjZHlITl1RQliqQQwdqAgWSLtMfKwjx9D3
         gxCH44YJq9+i6XwuqZg9e6WlZcAq41z4HKQHTzS/8hvyUedIqVPty504EpF2Tu93/Cxv
         vOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=T0JAvUOah56eB88wYQm/5JtCnjdhu7+6AoCqsPWcjqM=;
        b=lI1z7TZEa1SBx08a1SyjBg80VJoM+KBC/mm6vi1eyHADbckGVqr1nR36v12wjAp+it
         Kuls1hmFW2FKeGBTduAZOjmR3ckfI1nAHFaJwHNFf4i75hl+sSH6+ja/VYOlkxrgJLDe
         UAXPQrAGOQhADPeGrpnvU2TUDbzt8BkVzXVDMhYS+TJ2roENBIAibBt+P3EMsFFglxH8
         /W6mVaymiwBf83Rl82m8ZhKIl/7+Q8ao0/P1nCI20QaM94dVloC1LuQzpV+daqRDAbq7
         a3KvfNgQMT8XsemRJXyXOnsR9POd8HohTK7SxNIoZNht0dkDhx8tgcfUkGz76takORPr
         TWdg==
X-Gm-Message-State: ALyK8tIJXbFPOxsjwWb8UvDyqIj6Lz2aOZirBwrD9GbKIM1CSY7qo/QZcuNtJLnY335ZVRz+M3sFp+u7zb7cgw==
X-Received: by 10.202.102.100 with SMTP id a97mr16958967oic.77.1468904606491;
 Mon, 18 Jul 2016 22:03:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>
References: <CAKws9z0pq63ZK2q_zVgoYF+U+evLNvqD5v=7HKnOy5H263Z8rA@mail.gmail.com>
Message-ID: <CAKws9z1pthfTVXjyyuXpbGK1Ya7bPk91QzY_4Mc61MxAJJ4rQA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140f5a24771b70537f6011d
Date: Tue, 19 Jul 2016 01:03:26 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Ruining the Magic of Magento's Encryption Library
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com

--001a1140f5a24771b70537f6011d
Content-Type: text/plain; charset=UTF-8

EXHIBIT D
=========

Yes, that is how Magento hashes passwords. Which is weird: They go out of
their way to compare strings in constant-time, but they don't use a proper
password hashing method (e.g. bcrypt).

(Part of the sentence was lobbed off, due to stupidity and/or insanity
caused by exposure to Magento's source code.)


Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

On Tue, Jul 19, 2016 at 12:56 AM, Scott Arciszewski <scott@paragonie.com>
wrote:

> Hello mcrypt, my old friend
> I've come to exploit you again
> Because a version slowly rotting
> Is well-deserved for a boycotting
> And the S-box that was planted in its GOST
> Still remains
> Within the sound of silence
>
> ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8< ~ 8<
> ~
>
> Let's talk about Magento.
>
> The Wikipedia page for Magento begins, "Magento is an open-source
> e-commerce platform written in PHP." This bears emphasis: e-commerce
> platform.
>
> When I hear e-commerce, I think "financial information". I think "credit
> card numbers" and "probably PCI-DSS violations should anything be obviously
> stupid".
>
> Let's look at how Magento implements cryptography, with a series of
> exhibits followed by an explanation of what's happening and why it's
> dangerous:
>
>   A.
> https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L268-L320
>   B.
> https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L390-L399
>   C.
> https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Crypt.php#L63-L77
>
> D.
> https://github.com/magento/magento2/blob/6ea7d2d85cded3fa0fbcf4e7aa0dcd4edbf568a6/lib/internal/Magento/Framework/Encryption/Encryptor.php#L170
>
> If you looked at the code, I promise this is every bit as bad as it looks
> at a glance.
>
> EXHIBIT A
> =========
>
> Magento's decryption expects up to 4 strings concatenated by a :
> character. Depending on the number of pieces, it assumes a totally
> different setup:
>
> 1 piece: Blowfish, in ECB mode!
> 2 or 3 pieces: Probably blowfish, but maybe AES or Rijndael-256, depending
> on the integer supplied by the attacker.
> 4 pieces: We finally get an initialization vector, which means CBC mode
> can be used.
>
> At no point do they authenticate _anything_, so no matter what:
>
> - You get to control which branch is selected by breaking pieces off the
> attacker-chosen message.
> - You get to choose the ciphertext that the attempted decryption is
> performed upon.
>
> EXHIBIT B
> =========
>
> If you thought the ability to be encrypted with AES was a saving grace,
> too bad. They hard-code your choice to ECB mode.
>
> The only way you can get CBC mode (which, again, is unauthenticated) is to
> use the non-standard Rijndael256 cipher.
>
> EXHIBIT C
> =========
>
> If you thought it couldn't possibly get any worse, Magento's encryption
> library will either:
>
> - Give you an IV consisting entirely of NULL bytes.
> - Generate it, using rand(), on a 62-character keyspace.
>
> (Y'know, because it's not XORed with the plaintext in CBC mode and biases
> aren't a concern or anything.)
>
> EXHIBIT D
> =========
>
> Yes, that is how Magento hashes passwords. Which is weird: They go out of
> their way to compare strings in constant-time, but
>
> PUTTING IT ALL TOGETHER
> =======================
>
> An attacker has a great deal of control over the ciphertext, and
> incidentally which cipher mode is used by the decryption routine.
> Nothing is authenticated. At all.
> ECB mode everywhere.
> When CBC mode is actually used, it's used with a laughably weak IV and a
> non-standard cipher. Also, unauthenticated.
>
> Magento, one of the largest open source e-commerce platforms, ships a
> broken cryptography library that clueless developers are probably using to
> encrypt your credit card information for their client's customers.
>
> Given the prevalence of ECB mode, and the weak IV used in CBC mode, you
> should assume anything you encrypted with Magento's encryption library is
> both:
>
> - Decryptable, if an attacker can alter plaintexts or ciphertexts and
> study the output of either operation, without the key
> - Forgeable
>
> This cryptography implementation is very irresponsible and, because
> cryptography is involved, warrants immediate full disclosure so everyone
> can cease to use their broken crypto as soon as possible.
>
> If you need a remediation strategy, I've got you covered:
> https://paragonie.com/blog/2015/11/choosing-right-cryptography-library-for-your-php-project-guide
>
> Scott Arciszewski
> Chief Development Officer
> Paragon Initiative Enterprises <https://paragonie.com>
>

--001a1140f5a24771b70537f6011d--
