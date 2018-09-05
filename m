X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1574" "Wednesday" "5" "September" "2018" "15:13:53" "-0400" "Stuart Gathman" "stuart@gathman.org" "<74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>" "29" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "9" "2018090519:13:53" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        stuart@gathm Sep  5   29/1574  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<20180905150128.5f9430f4@jabberwock.cb.piermont.com>" ("<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "<alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>" "<CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>" "<20180828092517.eteuy4vzcpdpr62p@suse.de>" "<CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>" "<CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>" "<20180903105747.dihmczuqhl4kcnx5@suse.de>" "<CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>" "<CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>" "<F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>" "<CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>" "<CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>" "<20180905150128.5f9430f4@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7254 invoked by uid 550); 5 Sep 2018 21:52:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32340 invoked from network); 5 Sep 2018 19:14:08 -0000
Authentication-Results: mail.gathman.org; auth=pass (CRAM-MD5 sslbits=None) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1536166671; 
 h=subject : to : references : from : message-id : date : 
 mime-version : in-reply-to : content-type : 
 content-transfer-encoding : subject : from : date; 
 bh=t+vg9TxBEr0/WlREsJItex4LGcVqRPxlVUsaHSDt4uI=; 
 b=L202axdd5S0AJCizn7GG3qU4CRO2bGZa/iu0vrN6rigzpFXkDzT+ZVTp
 QokP7DI+bYIszV089OXdwBR0Jz6dTBtRjIQJIb8huAcUv9vTWveXtvzAlH
 PGKONl0nQaX1EpAaYSnrti/FCr0B1sDZDTCv44FY4hSSULAVOVnCZN4+g=
References: <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
 <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
 <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
 <alpine.GSO.2.20.1808230958120.3639@scrappy.simplesystems.org>
 <CAJ_zFk+yb9zEXSqs2fdANvKkipg2yQAU89xKr1HMv-EJG2-vxg@mail.gmail.com>
 <20180828092517.eteuy4vzcpdpr62p@suse.de>
 <CAJ_zFk+dpXH453R0Hy5iHzYO2DkZjrBK3Sqh00Aie1z4=VDQOQ@mail.gmail.com>
 <CAJ_zFkLXTpjCijqNsHs0ZR4NdVwM+16ojUmxjYu0aZAgW=QhKQ@mail.gmail.com>
 <20180903105747.dihmczuqhl4kcnx5@suse.de>
 <CAJ_zFkLOkSWe8x5N9Mf9bx1J9+oLnzNtHzTfEDXg0JGPj7N7DA@mail.gmail.com>
 <CAJ_zFk++=BcFw0mU1NefSCkGqo3RzRjePQwPo0mCUzL=QeGBiA@mail.gmail.com>
 <F21BEEA3-4932-472D-9FEA-A318F543861D@gmail.com>
 <CAJ_zFkLmua6XK9iRV-TRQsXKXo=s9Y32FQjOM5UB_UPrrNsAxw@mail.gmail.com>
 <CAJ_zFkLvLBnn8OO6Q3JuqyvpRKoo=63wE1meqsT_jR4USir4DQ@mail.gmail.com>
 <20180905150128.5f9430f4@jabberwock.cb.piermont.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stuart@gathman.org; prefer-encrypt=mutual; keydata=
 xsBNBFHqvKsBCACsS1M+Loi12JcY+iZ1WdEvo7G9QSWEUEj0+ToXS6y3lajATgggwr/C9NhX
 vxIq8Wm6tkv5qoe1ZVFAjdNbAQcFd3zE35IhwBSOxpDHnpqArGQWPCg81NbovIULbGWEk8Kc
 mUl43BHQiRGx7LKf6SVxBP+mMNcAX79PtLiqUtDTvDPA7LAuhkDo/grAqQnZ9UP5NXOExqrx
 gv+QhHiXcELYkFXRBoLt/gwJRK8tX9Wg8QIU1I5juzjL0dOjKqJ01aPboqUfxUEvVvZO7G10
 C3Qfi2R2D6bOwa5OzNUSuC+vyF/LVCWj4p8r3QyHS4+iZuTSLVU/cvg1/ui/WajCDwfRABEB
 AAHNOFN0dWFydCBELiBHYXRobWFuIChSUE0gc2lnbmluZyBrZXkpIDxzdHVhcnRAZ2F0aG1h
 bi5vcmc+wsB+BBMBAgAoBQJR6ryrAhsDBQkNKGiABgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIX
 gAAKCRBLChp18sp6FwhSB/9fZu27ht/+Db942+pCz2WRPU9HQyQz9hJ3DI4r4UgpWrUl50BH
 vgn4B3QkZDTm5FcoT+EwBa9QKSsQvJ7l5MAwOdUemlDdO3QTM9V00t1lv7YRP/mv8YzhOq1d
 4sucmM79D5wOT1+nMUE3KJ4u8DEM/TaA1rbMiFD49GGg2fO3/kKaibmBmulTAGA170BBvSDZ
 MR8ZPA5F75YCsml6UXenAO+cv2sYeUrBMx1rsGB3BueQK5mHH2w2F18PIqgH9aUh78FQ8iZ1
 5oKKuQQQBUPwah7JG3RRltDg8pfNoc6CZraW10fVGujECeyzNSxownwt6dsOLTrEdcgSmjL3
 gH6qzsBNBFHqvKsBCACzKEtssm9BHSpojEGhLOUwIywLrFrBsoiWZiSiw1ri1aENDugcIXnk
 Mtiz2PIqR38TFxoqpACIvqj3ybsxZ7jadisDFH/0+VUkFfbT3KhoIrizA960XoKp/yCZYoSV
 OoMC7ONIkXBSzp7UPokx9k5XrXSkdTgNCNXmyeDLvlHxPGC9TGf6J6d8sxLcy0owarzV88lB
 Ve6QqdmfUqQBWdHWqT8wx+Xj6Z4Ags0p2F9Sll5+6deJc/Xe1k1wCaLQWPAnrE7z20uua0nO
 wLds33WXa4FG8oxUdM/1KVEO1PLLLk2hPAN9lWLDeXezm1xa4y5YaBO/L7wkkiZAtYEZE70h
 ABEBAAHCwGUEGAECAA8FAlHqvKsCGwwFCQ0oaIAACgkQSwoadfLKehddAwgAiB6DQgkrrcl+
 gvNDc0ASVB/A1DkHB0yBYuHXn3GkodMXdiy6MkHYBDaFnkRwt48v7eHxevEwSFzZUJ6wzhza
 mKCNGK/a81qLlUwTMXDWlZbaN/YDMaFj15UUOdjQw0yiDGU0mlb2TjrzuMoldJXbQAI27JiE
 at0UGy9q+mqAc3G4WOF5UUyjhKgZo84jswq1ySKQyyrww39uWCpugiOAcuToZ8D1/Rb720S3
 FJJMeqbQfiiEp2dTANPH0slxnzZilDzRmAhaYswQ50VkB+p/Z2lf9yDBYrOhsUhXpOS4x94H
 SScSm8GysCg//k0+PuLOwmON4zMfc24+ICr7EKgJpQ==
Organization: Gathman Systems
Jabber-Id:  stuart@gathman.org
Message-ID: <74d8474f-f18b-7543-a8a8-6072a416aca6@gathman.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180905150128.5f9430f4@jabberwock.cb.piermont.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
Date: Wed, 5 Sep 2018 15:13:53 -0400
From: Stuart Gathman <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

On 09/05/2018 03:01 PM, Perry E. Metzger wrote:
> On Wed, 5 Sep 2018 11:02:48 -0700 Tavis Ormandy <taviso@google.com>
> wrote:
>> I would like to re-emphasize that while Ghostscript is very capable
>> and mature software, I consider the -dSAFER sandbox to be a fragile
>> security boundary and that we should consider deprecating (or
>> minimizing the use of) untrusted postscript.
> I haven't been following the bugs in depth (just noticing the
> continuous stream of them arriving), but is the issue security flaws
> in just -dSAFER or is it overall security bugs? If it's the former,
> given how few things actually need any of the features past what
> -dSAFER offers, perhaps compiling the code by default without any such
> capabilities would work well? You can't run what isn't there.
Postscript is a general purpose programming language.=C2=A0 It can do
anything to your system that a C or Python program could.=C2=A0 The SAFER
sandbox was supposed to be able to prevent untrusted postscript code
from doing serious damage.=C2=A0 But this series of bugs shows that the
sandbox is very flawed, and running untrusted postscript relying only on
the SAFER sandbox is a very bad idea.

What I need to study, is whether random PDF files from the internet (as
opposed to general postscript) are therefore malware vectors.=C2=A0 I thoug=
ht
that PDF used a restricted subset of operations that "rendered" it not a
general purpose language and therefore "safe".=C2=A0=C2=A0 But if SAFER was=
 the
implementation of that restricted subset, then all internet PDFs are
suspect.

