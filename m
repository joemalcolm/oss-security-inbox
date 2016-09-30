X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6096" "Friday" "30" "September" "2016" "10:00:29" "-0400" "Mike Santillana" "michael.santillana@wework.com" "<CAARAU444QiAcq1eEXy3_QzyT_cPb4ysvN1HEP=ka8kO6+2ki9Q@mail.gmail.com>" "190" "Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016093014:00:29" "[oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       michael.sant Sep 30  190/6096  " thread-indent "\"Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" "<CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com>" "<CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17685 invoked by uid 550); 30 Sep 2016 14:00:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17664 invoked from network); 30 Sep 2016 14:00:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wework-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N7wzGuAQcRJSvkmUvdkSEhq/XcnMBrptMnbGRQj6JlI=;
        b=T5GZaNt9Sf/RotrW53QxgNmkIo6TUcE+gZc2GsBJCzN4CtRh7PGn8xtzTbPiB7Rkn3
         h03dMEZ2La/kbPgNltDMGFGG8r69NdGxP3GRmvJKJPAwWPZgNuFfCPZN/PwrcVFAAG6g
         91wM9laxkl4l+fcf6hR3Z0qJG96985B+HaCiFRA2UsBxoQZyEVfzYuWZbDiVRZlBcSVk
         jca99UnTl5zvLTfnzEotXjaRHPPLQWQmV42XCwLWgGmHwuTLtnB5Dtey+RKFcBvKY17H
         2RAMgLMJrPCvUHXTbnNp80bV1iRimRiY6isPJZRPIL9PBLFuxvUY3Sz/e/rn3maxga4y
         7MZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N7wzGuAQcRJSvkmUvdkSEhq/XcnMBrptMnbGRQj6JlI=;
        b=nDA83QrLo1l5eZ9qM0TmvmmPm2StF9IRdn6SQvc+vgGu2ykGBKY4hMHTE742iF9HpX
         WVFQ7XO4EadkNlIqyleMC1at2m/+u1OjQf/Rp4hCKmXMRmJqraAleGHGJoUyVaKiCeOT
         e4P9FEFZnmDEVOURACGyvPCrridKkAJaodl6q777t1UR/W3BxtMsP5b0nOxH4uY3teD9
         zwdPCDtVIlAQ3vR3PykGQlnmi2iJer61CGrtieNYW2IAXIGH50CQJ9I9YpIkl3uUYpj7
         Wp7GXoW3WiWtl6JoU5TznvSy1gnHjO7f2XGInfZn0VULm86FbYbr56AHZ34kKviX1ley
         0Meg==
X-Gm-Message-State: AA6/9RnN75fB70UdRtAx9g2+6ELUVq7Hcx7MwiCxxOuUQH2GH3kpUFucRBUKx7leCovNC19sM4/XcZS/ck6WPXZo
X-Received: by 10.194.95.36 with SMTP id dh4mr6342340wjb.156.1475244030611;
 Fri, 30 Sep 2016 07:00:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>
References: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
 <CALPTtNWcndGBwL-pf0BF_XuSA6UCQajhe6-mgj=G5xa3iK1EEA@mail.gmail.com> <CAARAU449Y-_3UVN4URvLmNAWuXmm43TeMo_UyTMpE862Zv_3ng@mail.gmail.com>
From: Mike Santillana <michael.santillana@wework.com>
Date: Fri, 30 Sep 2016 10:00:29 -0400
Message-ID: <CAARAU444QiAcq1eEXy3_QzyT_cPb4ysvN1HEP=ka8kO6+2ki9Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "'Apple' via" <infosec@wework.com>
Content-Type: multipart/alternative; boundary=047d7beb917666eaaa053dba04be
Subject: Re: [oss-security] CVE Request - Ruby OpenSSL Library - IV Reuse in
 GCM Mode

--047d7beb917666eaaa053dba04be
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Is there any update on the cve request? Additionally, the ruby team has
made a commit to fix this:
https://github.com/ruby/openssl/commit/8108e0a6db133f3375608303fdd2083eb511=
5062

Thanks,


*WeWork | Mike Santillana*
Security Engineer
www.wework.com
Create Your Life's Work

On Mon, Sep 19, 2016 at 6:02 PM, Mike Santillana <
michael.santillana@wework.com> wrote:

> Hi Reed,
>
> Yes this has been submitted via HackerOne as well.
>
> Thanks
>
>
> *WeWork | Mike Santillana*
> Security Engineer
> 845-709-5655
> www.wework.com
>
> Create Your Life's Work
>
> On Mon, Sep 19, 2016 at 4:55 PM, 'Reed Loden' via Information Security <
> infosec@wework.com> wrote:
>
>> Was Ruby actually notified of this outside of the GitHub issue? Not sure
>> they are monitoring that repository for security issues, so could have b=
een
>> missed.
>>
>> https://www.ruby-lang.org/en/security/ defines their security reporting
>> processes.
>>
>> ~reed
>>
>> On Mon, Sep 19, 2016 at 12:20 PM, Mike Santillana <
>> michael.santillana@wework.com> wrote:
>>
>>> Product: Ruby's OpenSSL Library
>>> Version: Tested on 2.3.1 (latest)
>>> Bug: IV Reuse
>>> Impact: Depends on the usage of the library
>>>
>>> Hello,
>>>
>>> An IV reuse bug was discovered in Ruby's OpenSSL library when using
>>> aes-gcm. When encrypting data with aes-*-gcm, if the IV is set before
>>> setting the key, the cipher will default to using a static IV. This
>>> creates
>>> a static nonce and since aes-gcm is a stream cipher, this can lead to
>>> known
>>> cryptographic issues.
>>>
>>> The documentation does not appear to specify the order of operations wh=
en
>>> setting the key and IV [1]. As an example, see the following insecure
>>> code
>>> snippet below:
>>>
>>> Vulnerable Code:
>>>
>>> def encrypt(plaintext)
>>>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>>>     iv =3D cipher.random_iv # Notice here the IV is set before the key
>>>     cipher.key =3D '11111111111111111111111111111111'
>>>     cipher.auth_data =3D ""
>>>     ciphertext =3D cipher.update(plaintext) + cipher.final
>>>     tag =3D cipher.auth_tag
>>>
>>>     puts "[+] Encrypting: #{plaintext}"
>>>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
>>> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
>>> end
>>>
>>> A developer that uses the code above may incorrectly assume that their
>>> code
>>> is secure from the pitfalls associated with IV reuse in aes-*-gcm, since
>>> the =E2=80=98cipher.random_iv=E2=80=99 method is used. According to the=
 documentation,
>>> this
>>> should generate a random IV each time the encryption method is called.
>>>
>>> When the code above is run with the same key and same plaintext message,
>>> the following results are obtained:
>>>
>>> Output:
>>> # Run 1
>>> ./gcm_encrypt.rb 'This is some secret message.'
>>> [+] Encrypting: This is some secret message.
>>> [+] CipherMessage (IV | Tag | Ciphertext): e32594080cca2b37f7d7e968 |
>>> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
>>> 800a5bb48fb1c4ad0b7bdf6054
>>>
>>> # Run 2
>>> ./gcm_encrypt.rb 'This is some secret message.'
>>> [+] Encrypting: This is some secret message.
>>> [+] CipherMessage (IV | Tag | Ciphertext): 431d70714f5e5f876d1c7830 |
>>> 8c676db7551cf046266252ee776ecaa9 | 81092d16b62902d9985656253891dc
>>> 800a5bb48fb1c4ad0b7bdf6054
>>>
>>> Notice that in the output above a unique IV is returned for both runs,
>>> but
>>> with the same ciphertext. This proves that even though the random_iv
>>> method
>>> is called, the code is defaulting to a static IV. If an attacker can
>>> retrieve multiple ciphertext messages, it is possible to decrypt the
>>> ciphertexts by applying the same attack one would use in a two-time pad
>>> (XOR ciphertexts and crib drag).
>>>
>>> Next review the following code snippet and output, which depicts a secu=
re
>>> implementation of the code:
>>>
>>> Valid Code:
>>>
>>> def encrypt(plaintext)
>>>     cipher =3D OpenSSL::Cipher.new('aes-256-gcm')
>>>     cipher.key =3D '11111111111111111111111111111111'
>>>     iv =3D cipher.random_iv # Notice here the IV is set after the key
>>>     cipher.auth_data =3D ""
>>>     ciphertext =3D cipher.update(plaintext) + cipher.final
>>>     tag =3D cipher.auth_tag
>>>
>>>     puts "[+] Encrypting: #{plaintext}"
>>>     puts "[+] CipherMessage (IV | Tag | Ciphertext): #{bin2hex(iv)} |
>>> #{bin2hex(tag)} | #{bin2hex(ciphertext)}"
>>> end
>>>
>>> Output:
>>> # Run 1
>>> ./gcm_encrypt.rb 'This is some secret message.'
>>> [+] Encrypting: This is some secret message.
>>> [+] CipherMessage (IV | Tag | Ciphertext): 8beb4aa05533e90f4f4eddd3 |
>>> ea1b015958a9b8bd2aafa61887309caf | 19574a9c9869b92140a57a5fd43a14
>>> 9a5eaa7e5beefdff5d56cc4136
>>>
>>> # Run 2
>>> ./gcm_encrypt.rb 'This is some secret message.'
>>> [+] Encrypting: This is some secret message.
>>> [+] CipherMessage (IV | Tag | Ciphertext): 87361b3f1e32291602ac7b40 |
>>> bce7093daa10cc9d2fad0f2b91e077f2 | 47f9a5ba55631204233ace70f169e6
>>> 65846e877dca11a6e13a659540
>>>
>>> Notice that this time both the IV and ciphertexts are both different for
>>> the same plaintext. This is the intended result a developer would expect
>>> to
>>> happen when using this library.
>>>
>>> It should be noted that when I went to Ruby's github page to report this
>>> bug, I noticed a developer also independently encountered this weird
>>> phenomenon [2]. Since it has already been brought up to the Ruby team, I
>>> have not created a new ticket.
>>>
>>> References:
>>>  [1]
>>> https://ruby-doc.org/stdlib-2.0.0/libdoc/openssl/rdoc/OpenSS
>>> L/Cipher.html#class-OpenSSL::Cipher-label-Authenticated+Encr
>>> yption+and+Associated+Data+-28AEAD-29
>>>  [2] https://github.com/ruby/openssl/issues/49
>>>
>>> I'd like to to request a CVE ID for this issue.
>>>
>>> Thanks
>>>
>>> *WeWork | Mike Santillana*
>>> Security Engineer
>>> 845-709-5655
>>> www.wework.com
>>>
>>> Create Your Life's Work
>>>
>>
>>
>

--047d7beb917666eaaa053dba04be--
