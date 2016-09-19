X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5111" "Monday" "19" "September" "2016" "13:55:09" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>" "146" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016091920:55:09" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       reed@reedlod Sep 19  146/5111  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3097 invoked by uid 550); 19 Sep 2016 20:55:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2044 invoked from network); 19 Sep 2016 20:55:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KZ+Wcb/ooNqKzoPbxQmn1fbcnGLeZ2wlyx4lP3Hp3+g=;
        b=fAZvDKGIYeCZNzCoyXvwJUfipyToAZBnXFvzMw65e+0Si4pGasm2RnMfBlBQTCUNb0
         SoT0C2PTA7L4ObYwdPBa7EpgC74QCg9NwAW2mIIAQBNYop9CTK48hIWFdJPcQJpxa3eA
         /wAXUSCFYlZKGh/UMoi7peJPnx0T+McHMGniA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KZ+Wcb/ooNqKzoPbxQmn1fbcnGLeZ2wlyx4lP3Hp3+g=;
        b=f1PN6/cHHI6kW35tqs9Gdwl9RN/T64R+vkD/29pnqwP+JAslzzwjZiBgU9LU91rZGC
         HMXfyvKBzmwP7pCIj28N+Uvkl5BqCJDdyD6uDWjQlBr4iokcx22j3mV8OWByxfP7P5ZO
         tVPVlaH8jXYFV99PQcOLuzHIMNF9h2i4i1FyCqJxAGjRnrvIxUfz2iVO8wTudK0kjcmn
         3I4dQ4Yo4RJfYHp7zLfmRMIw/EyEZSLuJncx2OUxWpzX07mZFpTHtzO0mrYVqNCD8ozw
         CqQ6pi0bbaomU9ZrnNr1mmdaFupHyzjSNwzo+ewnq5UL66WIdnHePs6RD+D8yz17Xi6c
         0Ezg==
X-Gm-Message-State: AE9vXwOmwdKJO8l/AQ6rh46Lzxc5ydQ2q88O6dc7tIXzPQQNO2MpwjwrSEveu2IMMZjrY6jIM7UAMLZg11h3nImB
X-Received: by 10.107.4.146 with SMTP id 140mr36744648ioe.158.1474318529557;
 Mon, 19 Sep 2016 13:55:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
From: Reed Loden <reed@reedloden.com>
Date: Mon, 19 Sep 2016 13:55:09 -0700
Message-ID: <CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "'Apple' via" <infosec@wework.com>
Content-Type: multipart/alternative; boundary=001a113eeb303d9b5e053ce2880a
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in
 GCM Mode

--001a113eeb303d9b5e053ce2880a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Was Ruby actually notified of this outside of the GitHub issue? Not sure
they are monitoring that repository for security issues, so could have been
missed.

https://www.ruby-lang.org/en/security/ defines their security reporting
processes.

~reed

On Mon, Sep 19, 2016 at 12:20 PM, Mike Santillana <
michael.santillana@wework.com> wrote:

> Product: Ruby's OpenSSL Library
> Version: Tested on 2.3.1 (latest)
> Bug: IV Reuse
> Impact: Depends on the usage of the library
>
> Hello,
>
> An IV reuse bug was discovered in Ruby's OpenSSL library when using
> aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
> setting the key, the cipher will default to using a static IV. This creat=
es
> a static nonce and since aes-gcm is a stream cipher, this can lead to kno=
wn
> cryptographic issues.
>
> The documentation does not appear to specify the order of operations when
> setting the key and IV [1]. As an example, see the following insecure code
> snippet below:
>
> Vulnerable Code:
>
> def encrypt(plaintext)
>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>     iv =3D cipher.random_iv # Notice here the IV is set before the key
>     cipher.key =3D '11111111111111111111111111111111'
>     cipher.auth_data =3D ""
>     ciphertext =3D cipher.update(plaintext) + cipher.final
>     tag =3D cipher.auth_tag
>
>     puts "[+] Encrypting: #{plaintext}"
>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
> end
>
> A developer that uses the code above may incorrectly assume that their co=
de
> is secure from the pitfalls associated with IV reuse in aes-*-gcm, since
> the =E2=80=98cipher.random_iv=E2=80=99 method is used. According to the d=
ocumentation, this
> should generate a random IV each time the encryption method is called.
>
> When the code above is run with the same key and same plaintext message,
> the following results are obtained:
>
> Output:
> # Run 1
> ./gcm_encrypt.rb 'This is some secret message.'
> [+] Encrypting: This is some secret message.
> [+] CipherMessage (IV | Tag | Ciphertext): e32594080cca2b37f7d7e968 |
> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
> 800a5bb48fb1c4ad0b7bdf6054
>
> # Run 2
> ./gcm_encrypt.rb 'This is some secret message.'
> [+] Encrypting: This is some secret message.
> [+] CipherMessage (IV | Tag | Ciphertext): 431d70714f5e5f876d1c7830 |
> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
> 800a5bb48fb1c4ad0b7bdf6054
>
> Notice that in the output above a unique IV is returned for both runs, but
> with the same ciphertext. This proves that even though the random_iv meth=
od
> is called, the code is defaulting to a static IV. If an attacker can
> retrieve multiple ciphertext messages, it is possible to decrypt the
> ciphertexts by applying the same attack one would use in a two-time pad
> (XOR ciphertexts and crib drag).
>
> Next review the following code snippet and output, which depicts a secure
> implementation of the code:
>
> Valid Code:
>
> def encrypt(plaintext)
>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>     cipher.key =3D '11111111111111111111111111111111'
>     iv =3D cipher.random_iv # Notice here the IV is set after the key
>     cipher.auth_data =3D ""
>     ciphertext =3D cipher.update(plaintext) + cipher.final
>     tag =3D cipher.auth_tag
>
>     puts "[+] Encrypting: #{plaintext}"
>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
> end
>
> Output:
> # Run 1
> ./gcm_encrypt.rb 'This is some secret message.'
> [+] Encrypting: This is some secret message.
> [+] CipherMessage (IV | Tag | Ciphertext): 8beb4aa05533e90f4f4eddd3 |
> ea1b015958a9b8bd2aafa61887309caf | 19574a9c9869b92140a57a5fd43a14
> 9a5eaa7e5beefdff5d56cc4136
>
> # Run 2
> ./gcm_encrypt.rb 'This is some secret message.'
> [+] Encrypting: This is some secret message.
> [+] CipherMessage (IV | Tag | Ciphertext): 87361b3f1e32291602ac7b40 |
> bce7093daa10cc9d2fad0f2b91e077f2 | 47f9a5ba55631204233ace70f169e6
> 65846e877dca11a6e13a659540
>
> Notice that this time both the IV and ciphertexts are both different for
> the same plaintext. This is the intended result a developer would expect =
to
> happen when using this library.
>
> It should be noted that when I went to Ruby's github page to report this
> bug, I noticed a developer also independently encountered this weird
> phenomenon [2]. Since it has already been brought up to the Ruby team, I
> have not created a new ticket.
>
> References:
>  [1]
> https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/
> OpenSSL/Cipher.html#class-OpenSSL::Cipher-label-
> Authenticated+Encryption+and+Associated+Data+-28AEAD-29
>  [2] https://github.com/ruby/openssl/issues/49
>
> I'd like to to request a CVE ID for this issue.
>
> Thanks
>
> *WeWork | Mike Santillana*
> Security Engineer
> 845-709-5655
> www.wework.com
>
> Create Your Life's Work
>

--001a113eeb303d9b5e053ce2880a--
